// Copyright lowRISC contributors.
// Licensed under the Apache License, Version 2.0, see LICENSE for details.
// SPDX-License-Identifier: Apache-2.0
//
// tl_main package generated by `tlgen.py` tool

package tl_main_pkg;

  localparam logic [31:0] ADDR_SPACE_ROM           = 32'h 00008000;
  localparam logic [31:0] ADDR_SPACE_DEBUG_MEM     = 32'h 1a110000;
  localparam logic [31:0] ADDR_SPACE_RAM_MAIN      = 32'h 10000000;
  localparam logic [31:0] ADDR_SPACE_EFLASH        = 32'h 20000000;
  localparam logic [1:0][31:0] ADDR_SPACE_PERI          = {
    32'h 40000000,
    32'h 40080000
  };
  localparam logic [31:0] ADDR_SPACE_FLASH_CTRL    = 32'h 40030000;
  localparam logic [31:0] ADDR_SPACE_HMAC          = 32'h 40120000;
  localparam logic [31:0] ADDR_SPACE_AES           = 32'h 40110000;
  localparam logic [31:0] ADDR_SPACE_RV_PLIC       = 32'h 40090000;
  localparam logic [31:0] ADDR_SPACE_PINMUX        = 32'h 40070000;
  localparam logic [31:0] ADDR_SPACE_ALERT_HANDLER = 32'h 40130000;
  localparam logic [31:0] ADDR_SPACE_NMI_GEN       = 32'h 40140000;

  localparam logic [31:0] ADDR_MASK_ROM           = 32'h 00001fff;
  localparam logic [31:0] ADDR_MASK_DEBUG_MEM     = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_RAM_MAIN      = 32'h 0000ffff;
  localparam logic [31:0] ADDR_MASK_EFLASH        = 32'h 0007ffff;
  localparam logic [1:0][31:0] ADDR_MASK_PERI          = {
    32'h 00020fff,
    32'h 00000fff
  };
  localparam logic [31:0] ADDR_MASK_FLASH_CTRL    = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_HMAC          = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_AES           = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_RV_PLIC       = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_PINMUX        = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_ALERT_HANDLER = 32'h 00000fff;
  localparam logic [31:0] ADDR_MASK_NMI_GEN       = 32'h 00000fff;

  localparam int N_HOST   = 3;
  localparam int N_DEVICE = 12;

  typedef enum int {
    TlRom = 0,
    TlDebugMem = 1,
    TlRamMain = 2,
    TlEflash = 3,
    TlPeri = 4,
    TlFlashCtrl = 5,
    TlHmac = 6,
    TlAes = 7,
    TlRvPlic = 8,
    TlPinmux = 9,
    TlAlertHandler = 10,
    TlNmiGen = 11
  } tl_device_e;

  typedef enum int {
    TlCorei = 0,
    TlCored = 1,
    TlDmSba = 2
  } tl_host_e;

endpackage
