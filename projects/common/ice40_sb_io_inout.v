`ifndef ICE40_SB_IO_INOUT
`define ICE40_SB_IO_INOUT

module sb_io_inout #(parameter TYPE=6'b1101_00) (
  input        clock,
	input        oe,
  input        out,
	output       in,
  inout        pin
  );

  SB_IO #(
    .PIN_TYPE(TYPE)
  ) sbio (
      .PACKAGE_PIN(pin),
			.OUTPUT_ENABLE(oe),
      .D_OUT_0(out),
      .D_OUT_1(out),
			.D_IN_1(in),
      .OUTPUT_CLK(clock),
      .INPUT_CLK(clock)
  );

endmodule

`endif

// http://www.latticesemi.com/~/media/LatticeSemi/Documents/TechnicalBriefs/SBTICETechnologyLibrary201504.pdf
