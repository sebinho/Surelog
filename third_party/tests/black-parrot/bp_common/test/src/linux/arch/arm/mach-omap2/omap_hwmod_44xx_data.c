// SPDX-License-Identifier: GPL-2.0-only
/*
 * Hardware modules present on the OMAP44xx chips
 *
 * Copyright (C) 2009-2012 Texas Instruments, Inc.
 * Copyright (C) 2009-2010 Nokia Corporation
 *
 * Paul Walmsley
 * Benoit Cousson
 *
 * This file is automatically generated from the OMAP hardware databases.
 * We respectfully ask that any modifications to this file be coordinated
 * with the public linux-omap@vger.kernel.org mailing list and the
 * authors above to ensure that the autogeneration scripts are kept
 * up-to-date with the file contents.
 * Note that this file is currently not in sync with autogeneration scripts.
 * The above note to be removed, once it is synced up.
 */

#include <linux/io.h>

#include "omap_hwmod.h"
#include "omap_hwmod_common_data.h"
#include "cm1_44xx.h"
#include "cm2_44xx.h"
#include "prm44xx.h"
#include "prm-regbits-44xx.h"

/* Base offset for all OMAP4 interrupts external to MPUSS */
#define OMAP44XX_IRQ_GIC_START	32

/*
 * IP blocks
 */

/*
 * 'dmm' class
 * instance(s): dmm
 */
static struct omap_hwmod_class omap44xx_dmm_hwmod_class = {
	.name	= "dmm",
};

/* dmm */
static struct omap_hwmod omap44xx_dmm_hwmod = {
	.name		= "dmm",
	.class		= &omap44xx_dmm_hwmod_class,
	.clkdm_name	= "l3_emif_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_MEMIF_DMM_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_MEMIF_DMM_CONTEXT_OFFSET,
		},
	},
};

/*
 * 'l3' class
 * instance(s): l3_instr, l3_main_1, l3_main_2, l3_main_3
 */
static struct omap_hwmod_class omap44xx_l3_hwmod_class = {
	.name	= "l3",
};

/* l3_instr */
static struct omap_hwmod omap44xx_l3_instr_hwmod = {
	.name		= "l3_instr",
	.class		= &omap44xx_l3_hwmod_class,
	.clkdm_name	= "l3_instr_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3INSTR_L3_INSTR_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3INSTR_L3_INSTR_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/* l3_main_1 */
static struct omap_hwmod omap44xx_l3_main_1_hwmod = {
	.name		= "l3_main_1",
	.class		= &omap44xx_l3_hwmod_class,
	.clkdm_name	= "l3_1_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3_1_L3_1_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3_1_L3_1_CONTEXT_OFFSET,
		},
	},
};

/* l3_main_2 */
static struct omap_hwmod omap44xx_l3_main_2_hwmod = {
	.name		= "l3_main_2",
	.class		= &omap44xx_l3_hwmod_class,
	.clkdm_name	= "l3_2_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3_2_L3_2_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3_2_L3_2_CONTEXT_OFFSET,
		},
	},
};

/* l3_main_3 */
static struct omap_hwmod omap44xx_l3_main_3_hwmod = {
	.name		= "l3_main_3",
	.class		= &omap44xx_l3_hwmod_class,
	.clkdm_name	= "l3_instr_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3INSTR_L3_3_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3INSTR_L3_3_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * 'l4' class
 * instance(s): l4_abe, l4_cfg, l4_per, l4_wkup
 */
static struct omap_hwmod_class omap44xx_l4_hwmod_class = {
	.name	= "l4",
};

/* l4_abe */
static struct omap_hwmod omap44xx_l4_abe_hwmod = {
	.name		= "l4_abe",
	.class		= &omap44xx_l4_hwmod_class,
	.clkdm_name	= "abe_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM1_ABE_L4ABE_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_ABE_AESS_CONTEXT_OFFSET,
			.lostcontext_mask = OMAP4430_LOSTMEM_AESSMEM_MASK,
			.flags	      = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* l4_cfg */
static struct omap_hwmod omap44xx_l4_cfg_hwmod = {
	.name		= "l4_cfg",
	.class		= &omap44xx_l4_hwmod_class,
	.clkdm_name	= "l4_cfg_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L4CFG_L4_CFG_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L4CFG_L4_CFG_CONTEXT_OFFSET,
		},
	},
};

/* l4_per */
static struct omap_hwmod omap44xx_l4_per_hwmod = {
	.name		= "l4_per",
	.class		= &omap44xx_l4_hwmod_class,
	.clkdm_name	= "l4_per_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L4PER_L4PER_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L4PER_L4_PER_CONTEXT_OFFSET,
		},
	},
};

/* l4_wkup */
static struct omap_hwmod omap44xx_l4_wkup_hwmod = {
	.name		= "l4_wkup",
	.class		= &omap44xx_l4_hwmod_class,
	.clkdm_name	= "l4_wkup_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_WKUP_L4WKUP_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_WKUP_L4WKUP_CONTEXT_OFFSET,
		},
	},
};

/*
 * 'mpu_bus' class
 * instance(s): mpu_private
 */
static struct omap_hwmod_class omap44xx_mpu_bus_hwmod_class = {
	.name	= "mpu_bus",
};

/* mpu_private */
static struct omap_hwmod omap44xx_mpu_private_hwmod = {
	.name		= "mpu_private",
	.class		= &omap44xx_mpu_bus_hwmod_class,
	.clkdm_name	= "mpuss_clkdm",
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/*
 * 'ocp_wp_noc' class
 * instance(s): ocp_wp_noc
 */
static struct omap_hwmod_class omap44xx_ocp_wp_noc_hwmod_class = {
	.name	= "ocp_wp_noc",
};

/* ocp_wp_noc */
static struct omap_hwmod omap44xx_ocp_wp_noc_hwmod = {
	.name		= "ocp_wp_noc",
	.class		= &omap44xx_ocp_wp_noc_hwmod_class,
	.clkdm_name	= "l3_instr_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3INSTR_OCP_WP1_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3INSTR_OCP_WP1_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * Modules omap_hwmod structures
 *
 * The following IPs are excluded for the moment because:
 * - They do not need an explicit SW control using omap_hwmod API.
 * - They still need to be validated with the driver
 *   properly adapted to omap_hwmod / omap_device
 *
 * usim
 */

/*
 * 'ctrl_module' class
 * attila core control module + core pad control module + wkup pad control
 * module + attila wkup control module
 */

static struct omap_hwmod_class_sysconfig omap44xx_ctrl_module_sysc = {
	.rev_offs	= 0x0000,
	.sysc_offs	= 0x0010,
	.sysc_flags	= SYSC_HAS_SIDLEMODE,
	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
			   SIDLE_SMART_WKUP),
	.sysc_fields	= &omap_hwmod_sysc_type2,
};

static struct omap_hwmod_class omap44xx_ctrl_module_hwmod_class = {
	.name	= "ctrl_module",
	.sysc	= &omap44xx_ctrl_module_sysc,
};

/* ctrl_module_core */
static struct omap_hwmod omap44xx_ctrl_module_core_hwmod = {
	.name		= "ctrl_module_core",
	.class		= &omap44xx_ctrl_module_hwmod_class,
	.clkdm_name	= "l4_cfg_clkdm",
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* ctrl_module_pad_core */
static struct omap_hwmod omap44xx_ctrl_module_pad_core_hwmod = {
	.name		= "ctrl_module_pad_core",
	.class		= &omap44xx_ctrl_module_hwmod_class,
	.clkdm_name	= "l4_cfg_clkdm",
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* ctrl_module_wkup */
static struct omap_hwmod omap44xx_ctrl_module_wkup_hwmod = {
	.name		= "ctrl_module_wkup",
	.class		= &omap44xx_ctrl_module_hwmod_class,
	.clkdm_name	= "l4_wkup_clkdm",
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* ctrl_module_pad_wkup */
static struct omap_hwmod omap44xx_ctrl_module_pad_wkup_hwmod = {
	.name		= "ctrl_module_pad_wkup",
	.class		= &omap44xx_ctrl_module_hwmod_class,
	.clkdm_name	= "l4_wkup_clkdm",
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/*
 * 'debugss' class
 * debug and emulation sub system
 */

static struct omap_hwmod_class omap44xx_debugss_hwmod_class = {
	.name	= "debugss",
};

/* debugss */
static struct omap_hwmod omap44xx_debugss_hwmod = {
	.name		= "debugss",
	.class		= &omap44xx_debugss_hwmod_class,
	.clkdm_name	= "emu_sys_clkdm",
	.main_clk	= "trace_clk_div_ck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_EMU_DEBUGSS_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_EMU_DEBUGSS_CONTEXT_OFFSET,
		},
	},
};

/*
 * 'emif' class
 * external memory interface no1
 */

static struct omap_hwmod_class_sysconfig omap44xx_emif_sysc = {
	.rev_offs	= 0x0000,
};

static struct omap_hwmod_class omap44xx_emif_hwmod_class = {
	.name	= "emif",
	.sysc	= &omap44xx_emif_sysc,
};

/* emif1 */
static struct omap_hwmod omap44xx_emif1_hwmod = {
	.name		= "emif1",
	.class		= &omap44xx_emif_hwmod_class,
	.clkdm_name	= "l3_emif_clkdm",
	.flags		= HWMOD_INIT_NO_IDLE,
	.main_clk	= "ddrphy_ck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_MEMIF_EMIF_1_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_MEMIF_EMIF_1_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/* emif2 */
static struct omap_hwmod omap44xx_emif2_hwmod = {
	.name		= "emif2",
	.class		= &omap44xx_emif_hwmod_class,
	.clkdm_name	= "l3_emif_clkdm",
	.flags		= HWMOD_INIT_NO_IDLE,
	.main_clk	= "ddrphy_ck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_MEMIF_EMIF_2_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_MEMIF_EMIF_2_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * 'gpmc' class
 * general purpose memory controller
 */

static struct omap_hwmod_class_sysconfig omap44xx_gpmc_sysc = {
	.rev_offs	= 0x0000,
	.sysc_offs	= 0x0010,
	.syss_offs	= 0x0014,
	.sysc_flags	= (SYSC_HAS_AUTOIDLE | SYSC_HAS_SIDLEMODE |
			   SYSC_HAS_SOFTRESET | SYSS_HAS_RESET_STATUS),
	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
	.sysc_fields	= &omap_hwmod_sysc_type1,
};

static struct omap_hwmod_class omap44xx_gpmc_hwmod_class = {
	.name	= "gpmc",
	.sysc	= &omap44xx_gpmc_sysc,
};

/* gpmc */
static struct omap_hwmod omap44xx_gpmc_hwmod = {
	.name		= "gpmc",
	.class		= &omap44xx_gpmc_hwmod_class,
	.clkdm_name	= "l3_2_clkdm",
	/* Skip reset for CONFIG_OMAP_GPMC_DEBUG for bootloader timings */
	.flags		= DEBUG_OMAP_GPMC_HWMOD_FLAGS,
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3_2_GPMC_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3_2_GPMC_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * 'iss' class
 * external images sensor pixel data processor
 */

static struct omap_hwmod_class_sysconfig omap44xx_iss_sysc = {
	.rev_offs	= 0x0000,
	.sysc_offs	= 0x0010,
	/*
	 * ISS needs 100 OCP clk cycles delay after a softreset before
	 * accessing sysconfig again.
	 * The lowest frequency at the moment for L3 bus is 100 MHz, so
	 * 1usec delay is needed. Add an x2 margin to be safe (2 usecs).
	 *
	 * TODO: Indicate errata when available.
	 */
	.srst_udelay	= 2,
	.sysc_flags	= (SYSC_HAS_MIDLEMODE | SYSC_HAS_RESET_STATUS |
			   SYSC_HAS_SIDLEMODE | SYSC_HAS_SOFTRESET),
	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
			   SIDLE_SMART_WKUP | MSTANDBY_FORCE | MSTANDBY_NO |
			   MSTANDBY_SMART | MSTANDBY_SMART_WKUP),
	.sysc_fields	= &omap_hwmod_sysc_type2,
};

static struct omap_hwmod_class omap44xx_iss_hwmod_class = {
	.name	= "iss",
	.sysc	= &omap44xx_iss_sysc,
};

/* iss */
static struct omap_hwmod_opt_clk iss_opt_clks[] = {
	{ .role = "ctrlclk", .clk = "iss_ctrlclk" },
};

static struct omap_hwmod omap44xx_iss_hwmod = {
	.name		= "iss",
	.class		= &omap44xx_iss_hwmod_class,
	.clkdm_name	= "iss_clkdm",
	.main_clk	= "ducati_clk_mux_ck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_CAM_ISS_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_CAM_ISS_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_SWCTRL,
		},
	},
	.opt_clks	= iss_opt_clks,
	.opt_clks_cnt	= ARRAY_SIZE(iss_opt_clks),
};

/*
 * 'iva' class
 * multi-standard video encoder/decoder hardware accelerator
 */

static struct omap_hwmod_class omap44xx_iva_hwmod_class = {
	.name	= "iva",
};

/* iva */
static struct omap_hwmod_rst_info omap44xx_iva_resets[] = {
	{ .name = "seq0", .rst_shift = 0 },
	{ .name = "seq1", .rst_shift = 1 },
	{ .name = "logic", .rst_shift = 2 },
};

static struct omap_hwmod omap44xx_iva_hwmod = {
	.name		= "iva",
	.class		= &omap44xx_iva_hwmod_class,
	.clkdm_name	= "ivahd_clkdm",
	.rst_lines	= omap44xx_iva_resets,
	.rst_lines_cnt	= ARRAY_SIZE(omap44xx_iva_resets),
	.main_clk	= "dpll_iva_m5x2_ck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_IVAHD_IVAHD_CLKCTRL_OFFSET,
			.rstctrl_offs = OMAP4_RM_IVAHD_RSTCTRL_OFFSET,
			.context_offs = OMAP4_RM_IVAHD_IVAHD_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * 'mpu' class
 * mpu sub-system
 */

static struct omap_hwmod_class omap44xx_mpu_hwmod_class = {
	.name	= "mpu",
};

/* mpu */
static struct omap_hwmod omap44xx_mpu_hwmod = {
	.name		= "mpu",
	.class		= &omap44xx_mpu_hwmod_class,
	.clkdm_name	= "mpuss_clkdm",
	.flags		= HWMOD_INIT_NO_IDLE,
	.main_clk	= "dpll_mpu_m2_ck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_MPU_MPU_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_MPU_MPU_CONTEXT_OFFSET,
		},
	},
};

/*
 * 'ocmc_ram' class
 * top-level core on-chip ram
 */

static struct omap_hwmod_class omap44xx_ocmc_ram_hwmod_class = {
	.name	= "ocmc_ram",
};

/* ocmc_ram */
static struct omap_hwmod omap44xx_ocmc_ram_hwmod = {
	.name		= "ocmc_ram",
	.class		= &omap44xx_ocmc_ram_hwmod_class,
	.clkdm_name	= "l3_2_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3_2_OCMC_RAM_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3_2_OCMC_RAM_CONTEXT_OFFSET,
		},
	},
};


/*
 * 'prcm' class
 * power and reset manager (part of the prcm infrastructure) + clock manager 2
 * + clock manager 1 (in always on power domain) + local prm in mpu
 */

static struct omap_hwmod_class omap44xx_prcm_hwmod_class = {
	.name	= "prcm",
};

/* prcm_mpu */
static struct omap_hwmod omap44xx_prcm_mpu_hwmod = {
	.name		= "prcm_mpu",
	.class		= &omap44xx_prcm_hwmod_class,
	.clkdm_name	= "l4_wkup_clkdm",
	.flags		= HWMOD_NO_IDLEST,
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* cm_core_aon */
static struct omap_hwmod omap44xx_cm_core_aon_hwmod = {
	.name		= "cm_core_aon",
	.class		= &omap44xx_prcm_hwmod_class,
	.flags		= HWMOD_NO_IDLEST,
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* cm_core */
static struct omap_hwmod omap44xx_cm_core_hwmod = {
	.name		= "cm_core",
	.class		= &omap44xx_prcm_hwmod_class,
	.flags		= HWMOD_NO_IDLEST,
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/* prm */
static struct omap_hwmod_rst_info omap44xx_prm_resets[] = {
	{ .name = "rst_global_warm_sw", .rst_shift = 0 },
	{ .name = "rst_global_cold_sw", .rst_shift = 1 },
};

static struct omap_hwmod omap44xx_prm_hwmod = {
	.name		= "prm",
	.class		= &omap44xx_prcm_hwmod_class,
	.rst_lines	= omap44xx_prm_resets,
	.rst_lines_cnt	= ARRAY_SIZE(omap44xx_prm_resets),
};

/*
 * 'scrm' class
 * system clock and reset manager
 */

static struct omap_hwmod_class omap44xx_scrm_hwmod_class = {
	.name	= "scrm",
};

/* scrm */
static struct omap_hwmod omap44xx_scrm_hwmod = {
	.name		= "scrm",
	.class		= &omap44xx_scrm_hwmod_class,
	.clkdm_name	= "l4_wkup_clkdm",
	.prcm = {
		.omap4 = {
			.flags = HWMOD_OMAP4_NO_CONTEXT_LOSS_BIT,
		},
	},
};

/*
 * 'sl2if' class
 * shared level 2 memory interface
 */

static struct omap_hwmod_class omap44xx_sl2if_hwmod_class = {
	.name	= "sl2if",
};

/* sl2if */
static struct omap_hwmod omap44xx_sl2if_hwmod = {
	.name		= "sl2if",
	.class		= &omap44xx_sl2if_hwmod_class,
	.clkdm_name	= "ivahd_clkdm",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_IVAHD_SL2_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_IVAHD_SL2_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * 'usb_host_fs' class
 * full-speed usb host controller
 */

/* The IP is not compliant to type1 / type2 scheme */
static struct omap_hwmod_class_sysconfig omap44xx_usb_host_fs_sysc = {
	.rev_offs	= 0x0000,
	.sysc_offs	= 0x0210,
	.sysc_flags	= (SYSC_HAS_MIDLEMODE | SYSC_HAS_SIDLEMODE |
			   SYSC_HAS_SOFTRESET),
	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
			   SIDLE_SMART_WKUP),
	.sysc_fields	= &omap_hwmod_sysc_type_usb_host_fs,
};

static struct omap_hwmod_class omap44xx_usb_host_fs_hwmod_class = {
	.name	= "usb_host_fs",
	.sysc	= &omap44xx_usb_host_fs_sysc,
};

/* usb_host_fs */
static struct omap_hwmod omap44xx_usb_host_fs_hwmod = {
	.name		= "usb_host_fs",
	.class		= &omap44xx_usb_host_fs_hwmod_class,
	.clkdm_name	= "l3_init_clkdm",
	.main_clk	= "usb_host_fs_fck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3INIT_USB_HOST_FS_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3INIT_USB_HOST_FS_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_SWCTRL,
		},
	},
};

/*
 * 'usb_host_hs' class
 * high-speed multi-port usb host controller
 */

static struct omap_hwmod_class_sysconfig omap44xx_usb_host_hs_sysc = {
	.rev_offs	= 0x0000,
	.sysc_offs	= 0x0010,
	.syss_offs	= 0x0014,
	.sysc_flags	= (SYSC_HAS_MIDLEMODE | SYSC_HAS_SIDLEMODE |
			   SYSC_HAS_SOFTRESET | SYSC_HAS_RESET_STATUS),
	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART |
			   SIDLE_SMART_WKUP | MSTANDBY_FORCE | MSTANDBY_NO |
			   MSTANDBY_SMART | MSTANDBY_SMART_WKUP),
	.sysc_fields	= &omap_hwmod_sysc_type2,
};

static struct omap_hwmod_class omap44xx_usb_host_hs_hwmod_class = {
	.name	= "usb_host_hs",
	.sysc	= &omap44xx_usb_host_hs_sysc,
};

/* usb_host_hs */
static struct omap_hwmod omap44xx_usb_host_hs_hwmod = {
	.name		= "usb_host_hs",
	.class		= &omap44xx_usb_host_hs_hwmod_class,
	.clkdm_name	= "l3_init_clkdm",
	.main_clk	= "usb_host_hs_fck",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3INIT_USB_HOST_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3INIT_USB_HOST_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_SWCTRL,
		},
	},

	/*
	 * Errata: USBHOST Configured In Smart-Idle Can Lead To a Deadlock
	 * id: i660
	 *
	 * Description:
	 * In the following configuration :
	 * - USBHOST module is set to smart-idle mode
	 * - PRCM asserts idle_req to the USBHOST module ( This typically
	 *   happens when the system is going to a low power mode : all ports
	 *   have been suspended, the master part of the USBHOST module has
	 *   entered the standby state, and SW has cut the functional clocks)
	 * - an USBHOST interrupt occurs before the module is able to answer
	 *   idle_ack, typically a remote wakeup IRQ.
	 * Then the USB HOST module will enter a deadlock situation where it
	 * is no more accessible nor functional.
	 *
	 * Workaround:
	 * Don't use smart idle; use only force idle, hence HWMOD_SWSUP_SIDLE
	 */

	/*
	 * Errata: USB host EHCI may stall when entering smart-standby mode
	 * Id: i571
	 *
	 * Description:
	 * When the USBHOST module is set to smart-standby mode, and when it is
	 * ready to enter the standby state (i.e. all ports are suspended and
	 * all attached devices are in suspend mode), then it can wrongly assert
	 * the Mstandby signal too early while there are still some residual OCP
	 * transactions ongoing. If this condition occurs, the internal state
	 * machine may go to an undefined state and the USB link may be stuck
	 * upon the next resume.
	 *
	 * Workaround:
	 * Don't use smart standby; use only force standby,
	 * hence HWMOD_SWSUP_MSTANDBY
	 */

	.flags		= HWMOD_SWSUP_SIDLE | HWMOD_SWSUP_MSTANDBY,
};

/*
 * 'usb_tll_hs' class
 * usb_tll_hs module is the adapter on the usb_host_hs ports
 */

static struct omap_hwmod_class_sysconfig omap44xx_usb_tll_hs_sysc = {
	.rev_offs	= 0x0000,
	.sysc_offs	= 0x0010,
	.syss_offs	= 0x0014,
	.sysc_flags	= (SYSC_HAS_CLOCKACTIVITY | SYSC_HAS_SIDLEMODE |
			   SYSC_HAS_ENAWAKEUP | SYSC_HAS_SOFTRESET |
			   SYSC_HAS_AUTOIDLE),
	.idlemodes	= (SIDLE_FORCE | SIDLE_NO | SIDLE_SMART),
	.sysc_fields	= &omap_hwmod_sysc_type1,
};

static struct omap_hwmod_class omap44xx_usb_tll_hs_hwmod_class = {
	.name	= "usb_tll_hs",
	.sysc	= &omap44xx_usb_tll_hs_sysc,
};

static struct omap_hwmod omap44xx_usb_tll_hs_hwmod = {
	.name		= "usb_tll_hs",
	.class		= &omap44xx_usb_tll_hs_hwmod_class,
	.clkdm_name	= "l3_init_clkdm",
	.main_clk	= "usb_tll_hs_ick",
	.prcm = {
		.omap4 = {
			.clkctrl_offs = OMAP4_CM_L3INIT_USB_TLL_CLKCTRL_OFFSET,
			.context_offs = OMAP4_RM_L3INIT_USB_TLL_CONTEXT_OFFSET,
			.modulemode   = MODULEMODE_HWCTRL,
		},
	},
};

/*
 * interfaces
 */

/* l3_main_1 -> dmm */
static struct omap_hwmod_ocp_if omap44xx_l3_main_1__dmm = {
	.master		= &omap44xx_l3_main_1_hwmod,
	.slave		= &omap44xx_dmm_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_SDMA,
};

/* mpu -> dmm */
static struct omap_hwmod_ocp_if omap44xx_mpu__dmm = {
	.master		= &omap44xx_mpu_hwmod,
	.slave		= &omap44xx_dmm_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU,
};

/* iva -> l3_instr */
static struct omap_hwmod_ocp_if omap44xx_iva__l3_instr = {
	.master		= &omap44xx_iva_hwmod,
	.slave		= &omap44xx_l3_instr_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_3 -> l3_instr */
static struct omap_hwmod_ocp_if omap44xx_l3_main_3__l3_instr = {
	.master		= &omap44xx_l3_main_3_hwmod,
	.slave		= &omap44xx_l3_instr_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* ocp_wp_noc -> l3_instr */
static struct omap_hwmod_ocp_if omap44xx_ocp_wp_noc__l3_instr = {
	.master		= &omap44xx_ocp_wp_noc_hwmod,
	.slave		= &omap44xx_l3_instr_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_2 -> l3_main_1 */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__l3_main_1 = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_l3_main_1_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> l3_main_1 */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__l3_main_1 = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_l3_main_1_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* mpu -> l3_main_1 */
static struct omap_hwmod_ocp_if omap44xx_mpu__l3_main_1 = {
	.master		= &omap44xx_mpu_hwmod,
	.slave		= &omap44xx_l3_main_1_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU,
};

/* debugss -> l3_main_2 */
static struct omap_hwmod_ocp_if omap44xx_debugss__l3_main_2 = {
	.master		= &omap44xx_debugss_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "dbgclk_mux_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* iss -> l3_main_2 */
static struct omap_hwmod_ocp_if omap44xx_iss__l3_main_2 = {
	.master		= &omap44xx_iss_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* iva -> l3_main_2 */
static struct omap_hwmod_ocp_if omap44xx_iva__l3_main_2 = {
	.master		= &omap44xx_iva_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_1 -> l3_main_2 */
static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l3_main_2 = {
	.master		= &omap44xx_l3_main_1_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU,
};

/* l4_cfg -> l3_main_2 */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__l3_main_2 = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* usb_host_fs -> l3_main_2 */
static struct omap_hwmod_ocp_if __maybe_unused omap44xx_usb_host_fs__l3_main_2 = {
	.master		= &omap44xx_usb_host_fs_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* usb_host_hs -> l3_main_2 */
static struct omap_hwmod_ocp_if omap44xx_usb_host_hs__l3_main_2 = {
	.master		= &omap44xx_usb_host_hs_hwmod,
	.slave		= &omap44xx_l3_main_2_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_1 -> l3_main_3 */
static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l3_main_3 = {
	.master		= &omap44xx_l3_main_1_hwmod,
	.slave		= &omap44xx_l3_main_3_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU,
};

/* l3_main_2 -> l3_main_3 */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__l3_main_3 = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_l3_main_3_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> l3_main_3 */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__l3_main_3 = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_l3_main_3_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_1 -> l4_abe */
static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l4_abe = {
	.master		= &omap44xx_l3_main_1_hwmod,
	.slave		= &omap44xx_l4_abe_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* mpu -> l4_abe */
static struct omap_hwmod_ocp_if omap44xx_mpu__l4_abe = {
	.master		= &omap44xx_mpu_hwmod,
	.slave		= &omap44xx_l4_abe_hwmod,
	.clk		= "ocp_abe_iclk",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_1 -> l4_cfg */
static struct omap_hwmod_ocp_if omap44xx_l3_main_1__l4_cfg = {
	.master		= &omap44xx_l3_main_1_hwmod,
	.slave		= &omap44xx_l4_cfg_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_2 -> l4_per */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__l4_per = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_l4_per_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> l4_wkup */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__l4_wkup = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_l4_wkup_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* mpu -> mpu_private */
static struct omap_hwmod_ocp_if omap44xx_mpu__mpu_private = {
	.master		= &omap44xx_mpu_hwmod,
	.slave		= &omap44xx_mpu_private_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> ocp_wp_noc */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__ocp_wp_noc = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_ocp_wp_noc_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> ctrl_module_core */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__ctrl_module_core = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_ctrl_module_core_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> ctrl_module_pad_core */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__ctrl_module_pad_core = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_ctrl_module_pad_core_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_wkup -> ctrl_module_wkup */
static struct omap_hwmod_ocp_if omap44xx_l4_wkup__ctrl_module_wkup = {
	.master		= &omap44xx_l4_wkup_hwmod,
	.slave		= &omap44xx_ctrl_module_wkup_hwmod,
	.clk		= "l4_wkup_clk_mux_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_wkup -> ctrl_module_pad_wkup */
static struct omap_hwmod_ocp_if omap44xx_l4_wkup__ctrl_module_pad_wkup = {
	.master		= &omap44xx_l4_wkup_hwmod,
	.slave		= &omap44xx_ctrl_module_pad_wkup_hwmod,
	.clk		= "l4_wkup_clk_mux_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_instr -> debugss */
static struct omap_hwmod_ocp_if omap44xx_l3_instr__debugss = {
	.master		= &omap44xx_l3_instr_hwmod,
	.slave		= &omap44xx_debugss_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_2 -> gpmc */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__gpmc = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_gpmc_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_2 -> iss */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__iss = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_iss_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* iva -> sl2if */
static struct omap_hwmod_ocp_if __maybe_unused omap44xx_iva__sl2if = {
	.master		= &omap44xx_iva_hwmod,
	.slave		= &omap44xx_sl2if_hwmod,
	.clk		= "dpll_iva_m5x2_ck",
	.user		= OCP_USER_IVA,
};

/* l3_main_2 -> iva */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__iva = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_iva_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU,
};

/* l3_main_2 -> ocmc_ram */
static struct omap_hwmod_ocp_if omap44xx_l3_main_2__ocmc_ram = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_ocmc_ram_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* mpu_private -> prcm_mpu */
static struct omap_hwmod_ocp_if omap44xx_mpu_private__prcm_mpu = {
	.master		= &omap44xx_mpu_private_hwmod,
	.slave		= &omap44xx_prcm_mpu_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_wkup -> cm_core_aon */
static struct omap_hwmod_ocp_if omap44xx_l4_wkup__cm_core_aon = {
	.master		= &omap44xx_l4_wkup_hwmod,
	.slave		= &omap44xx_cm_core_aon_hwmod,
	.clk		= "l4_wkup_clk_mux_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> cm_core */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__cm_core = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_cm_core_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_wkup -> prm */
static struct omap_hwmod_ocp_if omap44xx_l4_wkup__prm = {
	.master		= &omap44xx_l4_wkup_hwmod,
	.slave		= &omap44xx_prm_hwmod,
	.clk		= "l4_wkup_clk_mux_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_wkup -> scrm */
static struct omap_hwmod_ocp_if omap44xx_l4_wkup__scrm = {
	.master		= &omap44xx_l4_wkup_hwmod,
	.slave		= &omap44xx_scrm_hwmod,
	.clk		= "l4_wkup_clk_mux_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l3_main_2 -> sl2if */
static struct omap_hwmod_ocp_if __maybe_unused omap44xx_l3_main_2__sl2if = {
	.master		= &omap44xx_l3_main_2_hwmod,
	.slave		= &omap44xx_sl2if_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> usb_host_fs */
static struct omap_hwmod_ocp_if __maybe_unused omap44xx_l4_cfg__usb_host_fs = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_usb_host_fs_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> usb_host_hs */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__usb_host_hs = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_usb_host_hs_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* l4_cfg -> usb_tll_hs */
static struct omap_hwmod_ocp_if omap44xx_l4_cfg__usb_tll_hs = {
	.master		= &omap44xx_l4_cfg_hwmod,
	.slave		= &omap44xx_usb_tll_hs_hwmod,
	.clk		= "l4_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* mpu -> emif1 */
static struct omap_hwmod_ocp_if omap44xx_mpu__emif1 = {
	.master		= &omap44xx_mpu_hwmod,
	.slave		= &omap44xx_emif1_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

/* mpu -> emif2 */
static struct omap_hwmod_ocp_if omap44xx_mpu__emif2 = {
	.master		= &omap44xx_mpu_hwmod,
	.slave		= &omap44xx_emif2_hwmod,
	.clk		= "l3_div_ck",
	.user		= OCP_USER_MPU | OCP_USER_SDMA,
};

static struct omap_hwmod_ocp_if *omap44xx_hwmod_ocp_ifs[] __initdata = {
	&omap44xx_l3_main_1__dmm,
	&omap44xx_mpu__dmm,
	&omap44xx_iva__l3_instr,
	&omap44xx_l3_main_3__l3_instr,
	&omap44xx_ocp_wp_noc__l3_instr,
	&omap44xx_l3_main_2__l3_main_1,
	&omap44xx_l4_cfg__l3_main_1,
	&omap44xx_mpu__l3_main_1,
	&omap44xx_debugss__l3_main_2,
	&omap44xx_iss__l3_main_2,
	&omap44xx_iva__l3_main_2,
	&omap44xx_l3_main_1__l3_main_2,
	&omap44xx_l4_cfg__l3_main_2,
	/* &omap44xx_usb_host_fs__l3_main_2, */
	&omap44xx_usb_host_hs__l3_main_2,
	&omap44xx_l3_main_1__l3_main_3,
	&omap44xx_l3_main_2__l3_main_3,
	&omap44xx_l4_cfg__l3_main_3,
	&omap44xx_l3_main_1__l4_abe,
	&omap44xx_mpu__l4_abe,
	&omap44xx_l3_main_1__l4_cfg,
	&omap44xx_l3_main_2__l4_per,
	&omap44xx_l4_cfg__l4_wkup,
	&omap44xx_mpu__mpu_private,
	&omap44xx_l4_cfg__ocp_wp_noc,
	&omap44xx_l4_cfg__ctrl_module_core,
	&omap44xx_l4_cfg__ctrl_module_pad_core,
	&omap44xx_l4_wkup__ctrl_module_wkup,
	&omap44xx_l4_wkup__ctrl_module_pad_wkup,
	&omap44xx_l3_instr__debugss,
	&omap44xx_l3_main_2__gpmc,
	&omap44xx_l3_main_2__iss,
	/* &omap44xx_iva__sl2if, */
	&omap44xx_l3_main_2__iva,
	&omap44xx_l3_main_2__ocmc_ram,
	&omap44xx_mpu_private__prcm_mpu,
	&omap44xx_l4_wkup__cm_core_aon,
	&omap44xx_l4_cfg__cm_core,
	&omap44xx_l4_wkup__prm,
	&omap44xx_l4_wkup__scrm,
	/* &omap44xx_l3_main_2__sl2if, */
	/* &omap44xx_l4_cfg__usb_host_fs, */
	&omap44xx_l4_cfg__usb_host_hs,
	&omap44xx_l4_cfg__usb_tll_hs,
	&omap44xx_mpu__emif1,
	&omap44xx_mpu__emif2,
	NULL,
};

int __init omap44xx_hwmod_init(void)
{
	omap_hwmod_init();
	return omap_hwmod_register_links(omap44xx_hwmod_ocp_ifs);
}

