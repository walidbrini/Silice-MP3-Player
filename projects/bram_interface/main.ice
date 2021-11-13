// @sylefeb 2020
// https://github.com/sylefeb/Silice
// MIT license, see LICENSE_MIT in Silice repo root

algorithm sequence(
  bram_port ext_mem, // this is how to receive an external bram, the interface
                     // is defined in frameworks/libraries/memory_ports.ice
  output uint8 leds)
{
  uint6 cnt = 0;
  while (1) {
    leds         = ext_mem.rdata;
    cnt          = cnt + 1;
    ext_mem.addr = cnt;
  }
}

algorithm main(output uint$NUM_LEDS$ leds)
{
  bram uint8 mem[64] = { // will drive the LEDs to change their brightness
     1,1,1,1, 0,0,3,3, 1,1,0,0, 0,0,0,0,
     1,1,1,1, 0,0,3,3, 1,1,0,0, 0,0,0,0,
     1,1,1,1, 0,0,3,3, 1,1,0,0, 0,0,0,0,
     1,1,1,1, 0,0,3,3, 1,1,0,0, 0,0,0,7
  };

  sequence seq(
    ext_mem <:> mem,   // interfaces have to be bound
    leds     :> leds);

  // run (will never return)
  () <- seq <- ();

}
