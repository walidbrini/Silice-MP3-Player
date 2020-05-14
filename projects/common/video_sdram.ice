// SL 2019-10

// ------------------------- 

// 320x200
// VGA  actual resolution is      640x480
//   we divide by 2   down to 320x240
// HDMI actual resolution is     1280x720
//   we divide by 4,3 down to 320x240
// and the use rows 1 to 200 (as opposed to 0 to 199)
// the first row (0) is used to pre-load row 1
algorithm frame_display(
  input   uint11 video_x,
  input   uint10 video_y,
  input   uint1  video_active,
  output! uint$color_depth$ video_r,
  output! uint$color_depth$ video_g,
  output! uint$color_depth$ video_b,
  output! uint10 pixaddr0,
  input   uint32 pixdata0_r,
  output! uint1  pixrenable0,
  output! uint10 pixaddr1,
  input   uint32 pixdata1_r,
  output! uint1  pixrenable1,
  output! uint1  row_busy
) <autorun> {

  uint$3*color_depth$ palette[] = {
  // palette from table
$$if texfile_palette then
$$  for i=1,256 do
    $texfile_palette[i]$,
$$  end
$$else
  // palette from file
$$  if texfile then 
$$    write_palette_in_table(texfile,color_depth)
$$  else
  // default
$$    for i=0,256/4-1 do
        $math.floor(i*color_max/(256/4-1))$,
$$    end
$$    for i=0,256/4-1 do
        $math.floor(lshift(i*color_max/(256/4-1),color_depth))$,
$$    end  
$$    for i=0,256/4-1 do
        $math.floor(lshift(i*color_max/(256/4-1),2*color_depth))$,
$$    end
$$    for i=0,256/4-1 do v = i*color_max/(256/4-1)
        $math.floor(v + lshift(v,color_depth) + lshift(v,2*color_depth))$,
$$    end
$$  end
$$end
  };  
  uint8  palidx = 0;
  uint8  pix_j  = 0;
  uint2  sub_j  = 0;
  uint9  pix_a  = 0;
  uint24 color  = 0;
  
  video_r := 0;
  video_g := 0;
  video_b := 0;

  always {
    // writing/reading on buffers
    if (row_busy) {
      pixrenable0 = 0; // write 0
      pixrenable1 = 1; // read  1
    } else {
      pixrenable0 = 1; // read  0
      pixrenable1 = 0; // write 1
    }  
  }
  
  // ---------- show time!

  row_busy = 1; // initally reading from row 1

  while (1) {
    
    pixaddr0 = 0;
    pixaddr1 = 0;
  
    if (video_active) {

      // display
	    // -> screen row 0 is skipped as we preload row 0, we draw rows 1-200
	    //    the row loader loads row   0 for display in screen row   1
	    //    ...            loads row 199 for display in screen row 200
      if (pix_j > 0 && pix_j <= 200) {
$$if VGA == 1 then
        if (row_busy) {
          palidx = pixdata1_r[(((video_x >> 1)&3)<<3),8];
        } else {
          palidx = pixdata0_r[(((video_x >> 1)&3)<<3),8];
        }
$$end
$$if HDMI == 1 then
        if (row_busy) {
          palidx = pixdata1_r[(((video_x >> 2)&3)<<3),8];
        } else {
          palidx = pixdata0_r[(((video_x >> 2)&3)<<3),8];
        }
$$end
        color    = palette[palidx];
        video_r  = color[0,$color_depth$];
        video_g  = color[$color_depth$,$color_depth$];
        video_b  = color[$2*color_depth$,$color_depth$];
      }
$$if VGA == 1 then      
      if (video_x == 639) { // end of row
$$end
$$if HDMI == 1 then      
      if (video_x == 1279) { // end of row
$$end
        // increment pix_j
        sub_j = sub_j + 1;
$$if VGA == 1 then      
        if (sub_j == 2) {
$$end
$$if HDMI == 1 then      
        if (sub_j == 3) {
$$end
          sub_j = 0;
          if (pix_j <= 200) {
            // increment row
            pix_j = pix_j + 1;
          } else {
			      pix_j = 201;
		      }
        }
		
$$if VGA == 1 then      
        if (video_y == 479) {
$$end
$$if HDMI == 1 then      
        if (video_y == 719) {
$$end
          // end of frame
          sub_j = 0;
          pix_j = 0;          
        }
      }
      
    } 

    // busy row
    if (pix_j < 200) {		
      row_busy = ~(pix_j[0,1]);
    }

    // prepare next read
    // note the use of video_x + 1 to trigger 
	  // read one clock step ahead so that result 
    // is avail right on time
$$if VGA == 1 then
    if (video_x < 639) {
		  pix_a = ((video_x+1) >> 1);
$$end
$$if HDMI == 1 then
    if (video_x < 1279) {
		  pix_a = ((video_x+1) >> 2);
$$end    
	  } else {
	    pix_a = 0;
	  }
    
    pixaddr0 = (pix_a) >> 2;  
    pixaddr1 = (pix_a) >> 2;

  }
}

// ------------------------- 

algorithm sdram_switcher(
  
  input uint1    select,

  sdio sd0 {
    input   addr,
    input   wbyte_addr,
    input   rw,
    input   data_in,
    output! data_out,
    output! busy,
    input   in_valid,
    output! out_valid  
  },

  sdio sd1 {
    input   addr,
    input   wbyte_addr,
    input   rw,
    input   data_in,
    output! data_out,
    output! busy,
    input   in_valid,
    output! out_valid   
  },

  sdio sd {
    output! addr,
    output! wbyte_addr,
    output! rw,
    output! data_in,
    input   data_out,
    input   busy,
    output! in_valid,
    input   out_valid
  }
  
) {
	
  uint1 active = 0;
  
  while (1) {
  
    // switch only when there is no activity
    if (  sd.busy      == 0 
       && select     != active
       && sd0.in_valid == 0
       && sd1.in_valid == 0) {
      active = select;
    }  

    if (active) {
	    sd.addr       = sd0.addr;
      sd.wbyte_addr = sd0.wbyte_addr;
	    sd.rw         = sd0.rw;
	    sd.data_in    = sd0.data_in;
	    sd0.data_out  = sd.data_out;
	    sd0.busy      = sd.busy;
	    sd.in_valid   = sd0.in_valid;
	    sd0.out_valid = sd.out_valid;
	    sd1.busy      = 1;
    } else {
	    sd.addr       = sd1.addr;
      sd.wbyte_addr = sd1.wbyte_addr;
	    sd.rw         = sd1.rw;
	    sd.data_in    = sd1.data_in;
	    sd1.data_out  = sd.data_out;
	    sd1.busy      = sd.busy;
	    sd.in_valid   = sd1.in_valid;
	    sd1.out_valid = sd.out_valid;
	    sd0.busy      = 1;
    }
  }  
}

// ------------------------- 

algorithm frame_buffer_row_updater(
  sdio sd {
    output  addr,
    output  wbyte_addr,
    output  rw,
    output  data_in,
    input   data_out,
    input   busy,
    output  in_valid,
    input   out_valid,
  },
  output! uint10 pixaddr0,
  output! uint32 pixdata0_w,
  output! uint1  pixwenable0,
  output! uint10 pixaddr1,
  output! uint32 pixdata1_w,
  output! uint1  pixwenable1,
  input   uint1  row_busy,
  input   uint1  vsync,
  output  uint1  working,
  input   uint1  fbuffer
)
{
  // frame update counters
  uint8  count             = 0;
  uint8  row               = 0; // 0 .. 200 (0 loads 1, but 0 is not displayed, we display 1 - 200)
  uint1  working_row       = 0; // parity of row in which we write
  uint1  row_busy_filtered = 0;
  uint1  vsync_filtered    = 0;

  sd.in_valid       := 0; // maintain low (pulses high when needed)
  
  //row_busy_filtered ::= row_busy;
  //vsync_filtered    ::= vsync;
  row_busy_filtered := row_busy;
  vsync_filtered    := vsync;
  
  always {
    // writing/reading on buffers
    if (row_busy_filtered) {
      pixwenable0 = 1; // write 0
      pixwenable1 = 0; // read  1
    } else {
      pixwenable0 = 0; // read  0
      pixwenable1 = 1; // write 1
    }  
  }
  
  working = 0;  // not working  
  sd.rw   = 0;  // read

  while(1) {

    // not working for now
    working = 0;

    // wait during vsync or while the busy row is the working row
    while (vsync_filtered || (working_row == row_busy_filtered)) { 
		  if (vsync_filtered) { // vsync implies restarting the row counter
			  row         = 0;
			  working_row = 0;
		  }
	  }
    
    // working again!
	  working = 1;
    // working_row (in which we write) is now != busy_row (which is read for display)

    // read row from SDRAM into frame row buffer
    //    
    // NOTE: here we assume this can be done fast enough such that row_busy
    //       will not change mid-course ... will this be true? 
    //       in any case the display cannot wait, so apart from error
    //       detection there is no need for a sync mechanism    
    count = 0;
    while (count < ($320 >> 2$)) {
	
      if (sd.busy == 0) {        // not busy?
        // address to read from (count + row * 320 / 4)
        // sd.addr       = {1b0,fbuffer,21b0} | (count + (((row << 8) + (row << 6)) >> 2)); 
        sd.addr       = {1b0,fbuffer,21b0} | (count) | (row << 8); 
        sd.in_valid   = 1;         // go ahead!      
        while (sd.out_valid == 0) {  } // wait for value
        pixdata0_w   = sd.data_out; // data to write
        pixaddr0     = count;    // address to write
        pixdata1_w   = sd.data_out; // data to write
        pixaddr1     = count;    // address to write
        // next
        count        = count + 1;
      }

    }
    
    // change working row
    working_row = ~working_row;
	  if (row < 199) {
      row = row + 1;
	  } else {    
      row = 0;
    }
  }

}

// ------------------------- 
