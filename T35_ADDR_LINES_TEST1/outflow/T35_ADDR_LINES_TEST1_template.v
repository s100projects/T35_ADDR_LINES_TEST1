
// Efinity Top-level template
// Version: 2022.1.226
// Date: 2022-12-12 22:54

// Copyright (C) 2017 - 2022 Efinix Inc. All rights reserved.

// This file may be used as a starting point for Efinity synthesis top-level target.
// The port list here matches what is expected by Efinity constraint files generated
// by the Efinity Interface Designer.

// To use this:
//     #1)  Save this file with a different name to a different directory, where source files are kept.
//              Example: you may wish to save as C:\s100projects\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1\T35_ADDR_LINES_TEST1.v
//     #2)  Add the newly saved file into Efinity project as design file
//     #3)  Edit the top level entity in Efinity project to:  T35_ADDR_LINES_TEST1
//     #4)  Insert design content.


module T35_ADDR_LINES_TEST1
(
  input clockIn,
  input n_reset,
  input pll0_LOCKED,
  input n_boardReset,
  input pll0_2MHz,
  output F_bus_ctl_oe,
  output [15:0] S100adr0_15,
  output [7:0] SBCLEDS,
  output sMWRT,
  output [6:0] seg7,
  output seg7_dp,
  output boardActive,
  output n_pWR,
  output pDBIN,
  output pSTVAL,
  output pSYNC,
  output F_add_oe,
  output F_bus_stat_oe,
  output [3:0] S100adr16_19
);


endmodule

