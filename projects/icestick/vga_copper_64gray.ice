// -------------------------

// VGA driver
$include('../../common/vga.ice')

// Clock
import('../../common/icestick_clk_vga.v')

// Reset
import('../../common/reset_conditioner.v')

$$max_color   = 63
$$color_depth = 6

// -------------------------

algorithm frame_display(
  input   uint10 pix_x,
  input   uint10 pix_y,
  input   uint1  pix_active,
  input   uint1  pix_vblank,
  output! uint6  pix_value
) <autorun> {

  uint7 wave[64] = {
$$for i=0,63 do
    $math.floor(127.0 * (0.5+0.5*math.cos(math.pi + 2*math.pi*i/63)))$,
$$end
  };

  uint6 frame  = 0;  
  int9  pos[4] = {0,0,0,0};
  
  pix_value := 0;
  // ---------- show time!
  while (1) {

	  // display frame
	  while (pix_vblank == 0) {
      if (pix_active) {
        4x {
          if (pix_y + 20 > pos[__id] && pix_y < pos[__id] + 20) {
            pix_value = ((wave[pix_y-pos[__id] + 32]>>1) * (__id+5)) >> 3;
          }
        }
      }
    }    
    // prepare next
    frame = frame + 1;    
    4x {
      pos[__id] = $240 - 127$ + (wave[(frame + (__id << 3)) & 63] << 1);
    }
    // wait for sync
    while (pix_vblank == 1) {} 
  }
}

// -------------------------

algorithm main(
  output! uint1 led0,
  output! uint1 led1,
  output! uint1 led2,
  output! uint1 led3,
  output! uint1 led4,
  output! uint1 video_v0,
  output! uint1 video_v1,
  output! uint1 video_v2,
  output! uint1 video_v3,
  output! uint1 video_v4,
  output! uint1 video_v5,
  output! uint1 video_hs,
  output! uint1 video_vs
) 
<@video_clock,!video_reset> 
{

  uint1 video_reset = 0;
  uint1 video_clock = 0;
  // --- clock
  icestick_clk_vga clk_gen (
    clock_in  <: clock,
    clock_out :> video_clock,
    lock      :> led4
  );
  // --- video reset
  reset_conditioner vga_rstcond (
    rcclk <: video_clock,
    in  <: reset,
    out :> video_reset
  );

  uint1  active = 0;
  uint1  vblank = 0;
  uint10 pix_x  = 0;
  uint10 pix_y  = 0;
  uint6  pix_value = 0;
  
  vga vga_driver 
  <@video_clock,!video_reset>
  (
    vga_hs :> video_hs,
	  vga_vs :> video_vs,
	  active :> active,
	  vblank :> vblank,
	  vga_x  :> pix_x,
	  vga_y  :> pix_y
  );

  frame_display display
  <@video_clock,!video_reset>
  (
	  pix_x      <: pix_x,
	  pix_y      <: pix_y,
	  pix_active <: active,
	  pix_vblank <: vblank,
	  pix_value  :> pix_value
  );

  video_v0 := pix_value[5,1];
  video_v1 := pix_value[4,1];
  video_v2 := pix_value[3,1];
  video_v3 := pix_value[2,1];
  video_v4 := pix_value[1,1];
  video_v5 := pix_value[0,1];
  
  // forever
  while (1) { }
  
}
