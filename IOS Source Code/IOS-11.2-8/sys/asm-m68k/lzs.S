| $Id: lzs.S,v 3.2 1995/11/17 08:40:08 hampton Exp $
| $Source: /swtal/cherf.111/ios/sys/asm-m68k/lzs.S,v $
|------------------------------------------------------------------
| LZS.S - Packet by Packet Compression
|
| Feburary 11, 1994 Bill Thomas
|
| Copyright (c) 1994 by cisco Systems, Inc.
| All Rights Reserved
|------------------------------------------------------------------
| $Log: lzs.S,v $
| Revision 3.2  1995/11/17  08:40:08  hampton
| Remove old entries from the RCS header logs.
|
| Revision 3.1  1995/11/09  10:54:53  shaker
| Bump version numbers from 2.x to 3.x.
|
| Revision 2.1  1995/06/07  20:06:12  hampton
| Bump version numbers from 1.x to 2.x.
|
|------------------------------------------------------------------
| $Endlog$
|/


|/* 
| *	 LZS68KFC.S  -  Stac Compression in Software for the 68XXX 
| * 
| **************************************************************** 
| * Copyright 1988, 1989, 1990, 1991, 1992 STAC Electronics, 
| * Carlsbad, California, All rights reserved 
| * 
| * This code is Stac confidential property, and the algorithms and 
| * methods used herein may not be disclosed to any party without 
| * express written consent from Stac 
| **************************************************************** 
| */ 

	.globl _LZS_InitHistory
	.globl _LZS_Compress
	.globl _LZS_Decompress
	.globl _x25_pbp_stac_history_size
	.text

_x25_pbp_stac_history_size:
	.long	0x3400	| LZS_HISTORY_SIZE
	

_LZS_InitHistory:
 
	.byte	0x48,0xE7,0xFF,0xFE,0x2C,0x6F,0x00,0x40
	.byte	0x4D,0xEE,0x00,0x2C,0x49,0xEE,0x28,0x10
	.byte	0x4C,0xFA,0x02,0xFE,0x00,0x42,0x70,0x7F
	.byte	0x48,0xE4,0x7F,0x40,0x51,0xC8,0xFF,0xFA
	.byte	0x47,0xEE,0x18,0x10,0x70,0x7F,0x48,0xE3
	.byte	0x7F,0x40,0x51,0xC8,0xFF,0xFA,0x4C,0xBA
	.byte	0x04,0xFE,0x00,0x44,0x3D,0x41,0x28,0x10
	.byte	0x3D,0x41,0x28,0x16,0x30,0x3C,0x00,0x76
	.byte	0x48,0xEE,0x04,0xFF,0x28,0x1C,0x30,0x3C
	.byte	0x00,0x1A,0x48,0xEE,0x02,0xFF,0x30,0x40
	.byte	0x4C,0xDF,0x7F,0xFF,0x4E,0x75,0xF8,0x00
	.byte	0xF8,0x00,0xF8,0x00,0xF8,0x00,0xF8,0x00
	.byte	0xF8,0x00,0xF8,0x00,0xF8,0x00,0xF8,0x00
	.byte	0xF8,0x00,0xF8,0x00,0xF8,0x00,0xF8,0x00
	.byte	0xF8,0x00,0xF8,0x00,0xF8,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00
	.byte	0x00,0x00,0x00,0x00,0x00,0x00

 
_LZS_Compress:
 
	.byte	0x48,0xE7,0xFF,0xFE,0x2E,0xBC,0x00,0x00
	.byte	0x00,0x00,0x4C,0xEF,0x1F,0x00,0x00,0x40
	.byte	0x4D,0xEC,0x00,0x2C,0x70,0xEF,0xD0,0x93
	.byte	0x65,0x04,0x60,0x00,0x0C,0x4A,0x2D,0x40
	.byte	0xFF,0xF0,0x2D,0x52,0xFF,0xF4,0x2D,0x50
	.byte	0xFF,0xFC,0x2A,0x51,0x2D,0x4D,0xFF,0xEC
	.byte	0x41,0xF5,0x08,0x01,0xB1,0xCD,0x64,0x04
	.byte	0x30,0x7C,0xFF,0xFF,0x2D,0x48,0xFF,0xE8
	.byte	0x70,0x18,0xC0,0x6F,0x00,0x56,0xE4,0x48
	.byte	0x3D,0x7B,0x00,0x24,0x28,0x34,0x47,0xEE
	.byte	0x08,0x10,0x49,0xEE,0x18,0x10,0x4C,0xEE
	.byte	0x04,0xFF,0x28,0x1C,0x4E,0xFB,0x00,0xA2
	.byte	0x30,0x2E,0xFF,0xE6,0x4E,0xFB,0x00,0x9A
	.byte	0x48,0x46,0x4E,0xFB,0x60,0x94,0x01,0x56
	.byte	0x01,0x20,0x00,0xDC,0x00,0xDC,0x4A,0xAE
	.byte	0xFF,0xF4,0x67,0x00,0x09,0x20,0x2A,0x3C
	.byte	0x00,0x08,0x07,0xFF,0x42,0x6E,0x28,0x18
	.byte	0x7E,0x00,0x20,0x6E,0xFF,0xFC,0x12,0x18
	.byte	0x34,0x0A,0xC4,0x45,0x1D,0x81,0x20,0x00
	.byte	0x52,0x4A,0x2D,0x48,0xFF,0xFC,0x53,0xAE
	.byte	0xFF,0xF4,0x67,0x00,0x08,0xFE,0x3D,0x7C
	.byte	0x07,0xD6,0xFF,0xE6,0x70,0x10,0xD0,0xAE
	.byte	0xFF,0xF0,0x64,0x00,0x06,0xF8,0x30,0x3C
	.byte	0x00,0xA6,0x4A,0xAE,0xFF,0xF4,0x66,0x08
	.byte	0x3F,0x7C,0x00,0x03,0x00,0x02,0x60,0x06
	.byte	0x3F,0x7C,0x00,0x02,0x00,0x02,0x08,0x2F
	.byte	0x00,0x01,0x00,0x57,0x67,0x00,0x0B,0x60
	.byte	0x60,0x00,0x08,0xDC,0x5D,0x07,0x67,0x40
	.byte	0x10,0x07,0x48,0x80,0x41,0xF2,0x00,0xFE
	.byte	0x34,0x08,0xC4,0x45,0x70,0x00,0x10,0x36
	.byte	0x20,0x01,0xE7,0x40,0x14,0x36,0x20,0x00
	.byte	0xB5,0x00,0xD0,0x40,0x52,0x88,0x34,0x34
	.byte	0x00,0x00,0x39,0x88,0x00,0x00,0x94,0x48
	.byte	0x30,0x08,0xC0,0x45,0xD0,0x40,0x0C,0x42
	.byte	0xF8,0x6A,0x62,0x04,0x34,0x3C,0xF8,0x00
	.byte	0x37,0x82,0x00,0x00,0x52,0x07,0x66,0xC8
	.byte	0x70,0x00,0x10,0x01,0xE7,0x40,0x34,0x0A
	.byte	0x55,0x42,0xC4,0x45,0x14,0x36,0x20,0x00
	.byte	0xB5,0x00,0xD0,0x40,0x41,0xEA,0xFF,0xFF
	.byte	0x34,0x34,0x00,0x00,0x39,0x88,0x00,0x00
	.byte	0x94,0x48,0x30,0x08,0xC0,0x45,0xD0,0x40
	.byte	0x0C,0x42,0xF8,0x6A,0x62,0x04,0x34,0x3C
	.byte	0xF8,0x00,0x37,0x82,0x00,0x00,0x48,0x46
	.byte	0x7E,0x00,0x51,0xCE,0x00,0x06,0x60,0x00
	.byte	0xFF,0x00,0x38,0x01,0x34,0x0A,0xC4,0x45
	.byte	0x12,0x36,0x20,0x00,0x48,0x42,0x34,0x01
	.byte	0xE7,0x42,0xB9,0x02,0xD4,0x42,0x36,0x34
	.byte	0x20,0x00,0x39,0x8A,0x20,0x00,0x96,0x4A
	.byte	0x48,0x42,0x52,0x4A,0xD4,0x42,0x0C,0x43
	.byte	0xF8,0x6A,0x62,0x4C,0x37,0xBC,0xF8,0x00
	.byte	0x20,0x00,0x48,0x45,0x53,0x45,0x66,0x28
	.byte	0x88,0x6E,0x28,0x18,0x3A,0x3C,0x00,0x08
	.byte	0x42,0x6E,0x28,0x18,0x30,0x0D,0x08,0x00
	.byte	0x00,0x00,0x66,0x06,0x3A,0xC4,0x48,0x45
	.byte	0x60,0x1E,0x1B,0x44,0x00,0x01,0xE0,0x4C
	.byte	0x1A,0x84,0x54,0x4D,0x48,0x45,0x60,0x10
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x51,0xCE,0xFF,0x90,0x60,0x00,0xFE,0x8A
	.byte	0x37,0x83,0x20,0x00,0x10,0x2F,0x00,0x5B
	.byte	0x34,0x0A,0x53,0x42,0xD4,0x43,0xC4,0x45
	.byte	0xB2,0x36,0x20,0x00,0x67,0x68,0x53,0x00
	.byte	0x65,0x10,0xD4,0x42,0xD6,0x73,0x20,0x00
	.byte	0x0C,0x43,0xF8,0x6A,0x62,0x4A,0x02,0x44
	.byte	0x00,0xFF,0x48,0x45,0x53,0x45,0x66,0x28
	.byte	0x88,0x6E,0x28,0x18,0x3A,0x3C,0x00,0x08
	.byte	0x42,0x6E,0x28,0x18,0x30,0x0D,0x08,0x00
	.byte	0x00,0x00,0x66,0x06,0x3A,0xC4,0x48,0x45
	.byte	0x60,0x1E,0x1B,0x44,0x00,0x01,0xE0,0x4C
	.byte	0x1A,0x84,0x54,0x4D,0x48,0x45,0x60,0x10
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x51,0xCE,0xFF,0x20,0x60,0x00,0xFE,0x1A
	.byte	0x34,0x0A,0x53,0x42,0xD4,0x43,0xC4,0x45
	.byte	0xB2,0x36,0x20,0x00,0x66,0x98,0x7E,0x06
	.byte	0x3D,0x42,0x28,0x12,0x3D,0x43,0x28,0x14
	.byte	0x1D,0x40,0x28,0x16,0x38,0x03,0x51,0xCE
	.byte	0x00,0x06,0x60,0x00,0xFD,0xF4,0x34,0x0A
	.byte	0x52,0x4A,0xC4,0x45,0x12,0x36,0x20,0x00
	.byte	0xD4,0x44,0xC4,0x45,0xB2,0x36,0x20,0x00
	.byte	0x66,0x00,0x00,0x30,0x53,0x47,0x51,0xCE
	.byte	0x00,0x06,0x60,0x00,0xFD,0xD4,0x34,0x0A
	.byte	0x52,0x4A,0xC4,0x45,0x12,0x36,0x20,0x00
	.byte	0xD4,0x44,0xC4,0x45,0xB2,0x36,0x20,0x00
	.byte	0x66,0x00,0x00,0x94,0x53,0x47,0x6F,0x00
	.byte	0x02,0x6A,0x51,0xCE,0xFF,0xE2,0x60,0x00
	.byte	0xFD,0xB0,0x53,0x2E,0x28,0x16,0x65,0x00
	.byte	0x04,0x34,0x34,0x2E,0x28,0x12,0xD4,0x42
	.byte	0xD8,0x73,0x20,0x00,0x0C,0x44,0xF8,0x6A
	.byte	0x65,0x00,0x04,0x22,0x36,0x0A,0x55,0x43
	.byte	0xC6,0x45,0x10,0x36,0x30,0x00,0xD6,0x44
	.byte	0xC6,0x45,0xB0,0x36,0x30,0x00,0x66,0x06
	.byte	0xB2,0x36,0x30,0x01,0x67,0x34,0x53,0x2E
	.byte	0x28,0x16,0x65,0x00,0x04,0x00,0x36,0x33
	.byte	0x20,0x00,0xD4,0x43,0xD4,0x43,0x02,0x42
	.byte	0x0F,0xFE,0xD8,0x73,0x20,0x00,0x0C,0x44
	.byte	0xF8,0x6A,0x65,0x00,0x03,0xE8,0x36,0x0A
	.byte	0x55,0x43,0xD6,0x44,0xC6,0x45,0xB0,0x36
	.byte	0x30,0x00,0x66,0xD2,0xB2,0x36,0x30,0x01
	.byte	0x66,0xCC,0x3D,0x44,0x28,0x14,0x30,0x33
	.byte	0x20,0x00,0xE2,0x4A,0xD4,0x40,0xC4,0x45
	.byte	0x3D,0x42,0x28,0x12,0x53,0x47,0x51,0xCE
	.byte	0xFF,0x5E,0x60,0x00,0xFD,0x2C,0x53,0x2E
	.byte	0x28,0x16,0x65,0x00,0x03,0xB0,0x36,0x07
	.byte	0x34,0x2E,0x28,0x12,0xD4,0x42,0xD6,0x43
	.byte	0x36,0x3B,0x30,0x04,0x4E,0xFB,0x30,0x02
	.byte	0x01,0x86,0x01,0x2E,0x00,0xD6,0x00,0x7E
	.byte	0x00,0x26,0x00,0x10,0x00,0x10,0x00,0x10
	.byte	0x60,0xFE,0x53,0x2E,0x28,0x16,0x65,0x00
	.byte	0x03,0x84,0x36,0x33,0x20,0x00,0xD4,0x43
	.byte	0xD4,0x43,0x02,0x42,0x0F,0xFE,0xD8,0x73
	.byte	0x20,0x00,0x0C,0x44,0xF8,0x6A,0x65,0x00
	.byte	0x03,0x6C,0x36,0x0A,0x57,0x43,0xC6,0x45
	.byte	0x41,0xF6,0x30,0x00,0xD6,0x44,0xC6,0x45
	.byte	0x43,0xF6,0x30,0x00,0x70,0x02,0xB1,0x09
	.byte	0x56,0xC8,0xFF,0xFC,0x66,0xC4,0x3D,0x44
	.byte	0x28,0x14,0x30,0x33,0x20,0x00,0xE2,0x4A
	.byte	0xD4,0x40,0xC4,0x45,0x3D,0x42,0x28,0x12
	.byte	0x53,0x47,0x51,0xCE,0xFE,0xDA,0x60,0x00
	.byte	0xFC,0xA8,0x53,0x2E,0x28,0x16,0x65,0x00
	.byte	0x03,0x2C,0x36,0x33,0x20,0x00,0xD4,0x43
	.byte	0xD4,0x43,0x02,0x42,0x0F,0xFE,0xD8,0x73
	.byte	0x20,0x00,0x0C,0x44,0xF8,0x6A,0x65,0x00
	.byte	0x03,0x14,0x36,0x0A,0x59,0x43,0xC6,0x45
	.byte	0x41,0xF6,0x30,0x00,0xD6,0x44,0xC6,0x45
	.byte	0x43,0xF6,0x30,0x00,0x70,0x03,0xB1,0x09
	.byte	0x56,0xC8,0xFF,0xFC,0x66,0xC4,0x3D,0x44
	.byte	0x28,0x14,0x30,0x33,0x20,0x00,0xE2,0x4A
	.byte	0xD4,0x40,0xC4,0x45,0x3D,0x42,0x28,0x12
	.byte	0x53,0x47,0x51,0xCE,0xFE,0x82,0x60,0x00
	.byte	0xFC,0x50,0x53,0x2E,0x28,0x16,0x65,0x00
	.byte	0x02,0xD4,0x36,0x33,0x20,0x00,0xD4,0x43
	.byte	0xD4,0x43,0x02,0x42,0x0F,0xFE,0xD8,0x73
	.byte	0x20,0x00,0x0C,0x44,0xF8,0x6A,0x65,0x00
	.byte	0x02,0xBC,0x36,0x0A,0x5B,0x43,0xC6,0x45
	.byte	0x41,0xF6,0x30,0x00,0xD6,0x44,0xC6,0x45
	.byte	0x43,0xF6,0x30,0x00,0x70,0x04,0xB1,0x09
	.byte	0x56,0xC8,0xFF,0xFC,0x66,0xC4,0x3D,0x44
	.byte	0x28,0x14,0x30,0x33,0x20,0x00,0xE2,0x4A
	.byte	0xD4,0x40,0xC4,0x45,0x3D,0x42,0x28,0x12
	.byte	0x53,0x47,0x51,0xCE,0xFE,0x2A,0x60,0x00
	.byte	0xFB,0xF8,0x53,0x2E,0x28,0x16,0x65,0x00
	.byte	0x02,0x7C,0x36,0x33,0x20,0x00,0xD4,0x43
	.byte	0xD4,0x43,0x02,0x42,0x0F,0xFE,0xD8,0x73
	.byte	0x20,0x00,0x0C,0x44,0xF8,0x6A,0x65,0x00
	.byte	0x02,0x64,0x36,0x0A,0x5D,0x43,0xC6,0x45
	.byte	0x41,0xF6,0x30,0x00,0xD6,0x44,0xC6,0x45
	.byte	0x43,0xF6,0x30,0x00,0x70,0x05,0xB1,0x09
	.byte	0x56,0xC8,0xFF,0xFC,0x66,0xC4,0x3D,0x44
	.byte	0x28,0x14,0x30,0x33,0x20,0x00,0xE2,0x4A
	.byte	0xD4,0x40,0xC4,0x45,0x3D,0x42,0x28,0x12
	.byte	0x53,0x47,0x51,0xCE,0xFD,0xD2,0x60,0x00
	.byte	0xFB,0xA0,0x53,0x2E,0x28,0x16,0x65,0x00
	.byte	0x02,0x24,0x36,0x33,0x20,0x00,0xD4,0x43
	.byte	0xD4,0x43,0x02,0x42,0x0F,0xFE,0xD8,0x73
	.byte	0x20,0x00,0x0C,0x44,0xF8,0x6A,0x65,0x00
	.byte	0x02,0x0C,0x36,0x0A,0x5F,0x43,0xC6,0x45
	.byte	0x41,0xF6,0x30,0x00,0xD6,0x44,0xC6,0x45
	.byte	0x43,0xF6,0x30,0x00,0x70,0x06,0xB1,0x09
	.byte	0x56,0xC8,0xFF,0xFC,0x66,0xC4,0x3D,0x44
	.byte	0x28,0x14,0x30,0x33,0x20,0x00,0xE2,0x4A
	.byte	0xD4,0x40,0xC4,0x45,0x3D,0x42,0x28,0x12
	.byte	0x53,0x47,0x44,0x44,0x0C,0x44,0x00,0x7F
	.byte	0x62,0x52,0xE9,0x44,0x00,0x44,0x18,0x0F
	.byte	0x48,0x45,0x5B,0x45,0x6E,0x34,0x14,0x04
	.byte	0x44,0x45,0xEA,0x6C,0x88,0x6E,0x28,0x18
	.byte	0x44,0x45,0x50,0x45,0xEB,0x22,0x1D,0x42
	.byte	0x28,0x18,0x30,0x0D,0x08,0x00,0x00,0x00
	.byte	0x66,0x08,0x3A,0xC4,0x48,0x45,0x60,0x00
	.byte	0x00,0x98,0x1B,0x44,0x00,0x01,0xE0,0x4C
	.byte	0x1A,0x84,0x54,0x4D,0x48,0x45,0x60,0x00
	.byte	0x00,0x88,0xEB,0x64,0x88,0x6E,0x28,0x18
	.byte	0x1D,0x44,0x28,0x18,0xE0,0x5C,0x1A,0xC4
	.byte	0x48,0x45,0x60,0x74,0x00,0x44,0x10,0x00
	.byte	0x48,0x45,0x5B,0x45,0x6E,0x30,0x14,0x04
	.byte	0x44,0x45,0xEA,0x6C,0x88,0x6E,0x28,0x18
	.byte	0x44,0x45,0x50,0x45,0xEB,0x22,0x1D,0x42
	.byte	0x28,0x18,0x30,0x0D,0x08,0x00,0x00,0x00
	.byte	0x66,0x06,0x3A,0xC4,0x48,0x45,0x60,0x1E
	.byte	0x1B,0x44,0x00,0x01,0xE0,0x4C,0x1A,0x84
	.byte	0x54,0x4D,0x48,0x45,0x60,0x10,0xEB,0x64
	.byte	0x88,0x6E,0x28,0x18,0x1D,0x44,0x28,0x18
	.byte	0xE0,0x5C,0x1A,0xC4,0x48,0x45,0x18,0x3C
	.byte	0x00,0x0F,0x48,0x45,0x59,0x45,0x6F,0x0A
	.byte	0xEB,0x24,0x89,0x2E,0x28,0x18,0x48,0x45
	.byte	0x60,0x16,0x50,0x45,0x02,0x44,0x00,0xFF
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x7E,0xF1,0x38,0x2E,0x28,0x14,0x51,0xCE
	.byte	0x00,0x06,0x60,0x00,0xFA,0x74,0x34,0x0A
	.byte	0x52,0x4A,0xC4,0x45,0x12,0x36,0x20,0x00
	.byte	0xD4,0x44,0xC4,0x45,0xB2,0x36,0x20,0x00
	.byte	0x66,0x0C,0x52,0x47,0x67,0xB0,0x51,0xCE
	.byte	0xFF,0xE6,0x60,0x00,0xFA,0x54,0x78,0x0F
	.byte	0xD8,0x07,0x48,0x45,0x59,0x45,0x6F,0x0A
	.byte	0xEB,0x24,0x89,0x2E,0x28,0x18,0x48,0x45
	.byte	0x60,0x16,0x50,0x45,0x02,0x44,0x00,0xFF
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x7E,0x00,0x60,0x00,0xFA,0x2C,0x48,0x45
	.byte	0x59,0x45,0x6F,0x0A,0xEB,0x24,0x89,0x2E
	.byte	0x28,0x18,0x48,0x45,0x60,0x16,0x50,0x45
	.byte	0x02,0x44,0x00,0xFF,0xEB,0x64,0x88,0x6E
	.byte	0x28,0x18,0x1D,0x44,0x28,0x18,0xE0,0x5C
	.byte	0x1A,0xC4,0x48,0x45,0x60,0x00,0xFA,0x02
	.byte	0x00,0x44,0x10,0x00,0x48,0x45,0x5B,0x45
	.byte	0x6E,0x30,0x14,0x04,0x44,0x45,0xEA,0x6C
	.byte	0x88,0x6E,0x28,0x18,0x44,0x45,0x50,0x45
	.byte	0xEB,0x22,0x1D,0x42,0x28,0x18,0x30,0x0D
	.byte	0x08,0x00,0x00,0x00,0x66,0x06,0x3A,0xC4
	.byte	0x48,0x45,0x60,0x1E,0x1B,0x44,0x00,0x01
	.byte	0xE0,0x4C,0x1A,0x84,0x54,0x4D,0x48,0x45
	.byte	0x60,0x10,0xEB,0x64,0x88,0x6E,0x28,0x18
	.byte	0x1D,0x44,0x28,0x18,0xE0,0x5C,0x1A,0xC4
	.byte	0x48,0x45,0x78,0x0F,0x98,0x07,0x0C,0x04
	.byte	0x00,0x0C,0x64,0x82,0x53,0x44,0x02,0x44
	.byte	0x00,0x03,0x48,0x45,0x55,0x45,0x6F,0x0A
	.byte	0xEB,0x24,0x89,0x2E,0x28,0x18,0x48,0x45
	.byte	0x60,0x16,0x50,0x45,0x02,0x44,0x00,0xFF
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x60,0x00,0xF9,0x7E,0x38,0x2E,0x28,0x14
	.byte	0x44,0x44,0x0C,0x44,0x00,0x7F,0x62,0x00
	.byte	0xFF,0x70,0x00,0x44,0x01,0x80,0x34,0x04
	.byte	0x78,0x0F,0x98,0x07,0x0C,0x44,0x00,0x0C
	.byte	0x64,0x54,0xE5,0x42,0x53,0x44,0x02,0x44
	.byte	0x00,0x03,0x88,0x42,0x48,0x45,0x57,0x45
	.byte	0x6E,0x30,0x14,0x04,0x44,0x45,0xEA,0x6C
	.byte	0x88,0x6E,0x28,0x18,0x44,0x45,0x50,0x45
	.byte	0xEB,0x22,0x1D,0x42,0x28,0x18,0x30,0x0D
	.byte	0x08,0x00,0x00,0x00,0x66,0x06,0x3A,0xC4
	.byte	0x48,0x45,0x60,0x1E,0x1B,0x44,0x00,0x01
	.byte	0xE0,0x4C,0x1A,0x84,0x54,0x4D,0x48,0x45
	.byte	0x60,0x10,0xEB,0x64,0x88,0x6E,0x28,0x18
	.byte	0x1D,0x44,0x28,0x18,0xE0,0x5C,0x1A,0xC4
	.byte	0x48,0x45,0x60,0x00,0xF9,0x0C,0xE9,0x42
	.byte	0x88,0x42,0x48,0x45,0x5B,0x45,0x6E,0x30
	.byte	0x14,0x04,0x44,0x45,0xEA,0x6C,0x88,0x6E
	.byte	0x28,0x18,0x44,0x45,0x50,0x45,0xEB,0x22
	.byte	0x1D,0x42,0x28,0x18,0x30,0x0D,0x08,0x00
	.byte	0x00,0x00,0x66,0x06,0x3A,0xC4,0x48,0x45
	.byte	0x60,0x1E,0x1B,0x44,0x00,0x01,0xE0,0x4C
	.byte	0x1A,0x84,0x54,0x4D,0x48,0x45,0x60,0x10
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x60,0x00,0xF8,0xBE,0x34,0x2E,0x28,0x10
	.byte	0x02,0x42,0x0F,0xFE,0x43,0xF4,0x20,0x00
	.byte	0x30,0x0A,0x90,0x59,0x0C,0x40,0x30,0x00
	.byte	0x65,0x08,0x41,0xEA,0xF8,0x00,0x33,0x48
	.byte	0xFF,0xFE,0x93,0xCC,0xB2,0xFC,0x10,0x00
	.byte	0x65,0x6C,0x92,0xC9,0x60,0x68,0x48,0x41
	.byte	0x32,0x3C,0x0F,0xFE,0x34,0x2E,0x28,0x10
	.byte	0xC4,0x41,0x92,0x42,0xE2,0x49,0x41,0xEA
	.byte	0xF8,0x00,0x43,0xF4,0x20,0x00,0x34,0x3C
	.byte	0x30,0x00,0x30,0x0A,0x90,0x59,0xB0,0x42
	.byte	0x65,0x04,0x33,0x48,0xFF,0xFE,0x51,0xC9
	.byte	0x00,0x04,0x22,0x4C,0x30,0x0A,0x90,0x59
	.byte	0xB0,0x42,0x65,0x04,0x33,0x48,0xFF,0xFE
	.byte	0x51,0xC9,0x00,0x04,0x22,0x4C,0x30,0x0A
	.byte	0x90,0x59,0xB0,0x42,0x65,0x04,0x33,0x48
	.byte	0xFF,0xFE,0x51,0xC9,0x00,0x04,0x22,0x4C
	.byte	0x30,0x0A,0x90,0x59,0xB0,0x42,0x65,0x04
	.byte	0x33,0x48,0xFF,0xFE,0x51,0xC9,0x00,0x04
	.byte	0x22,0x4C,0x48,0x41,0x93,0xCC,0x3D,0x49
	.byte	0x28,0x10,0x70,0x60,0x24,0x0D,0x94,0xAE
	.byte	0xFF,0xE8,0x64,0x00,0xF8,0x6A,0xD4,0x80
	.byte	0x64,0x18,0x3D,0x7C,0x07,0xAC,0xFF,0xE6
	.byte	0x90,0x82,0x24,0x00,0xE6,0x8A,0x90,0x82
	.byte	0x0C,0x80,0x00,0x00,0x00,0x08,0x62,0x02
	.byte	0x70,0x08,0x24,0x2E,0xFF,0xF4,0x67,0x00
	.byte	0x01,0x32,0x94,0x80,0x64,0x06,0xD4,0x40
	.byte	0x30,0x02,0x74,0x00,0x2D,0x42,0xFF,0xF4
	.byte	0x3C,0x00,0x53,0x46,0x48,0x41,0x34,0x0A
	.byte	0xC4,0x45,0x20,0x6E,0xFF,0xFC,0x32,0x00
	.byte	0xD0,0x42,0x43,0xF6,0x20,0x00,0x04,0x40
	.byte	0x08,0x00,0x64,0x00,0x00,0x96,0x38,0x08
	.byte	0xD8,0x49,0xE2,0x4C,0x65,0x2E,0x38,0x08
	.byte	0xE2,0x4C,0x64,0x06,0x12,0xD8,0x53,0x41
	.byte	0x67,0x34,0x38,0x01,0xE2,0x49,0x67,0x2C
	.byte	0xE2,0x49,0x67,0x08,0x53,0x41,0x22,0xD8
	.byte	0x51,0xC9,0xFF,0xFC,0x02,0x44,0x00,0x03
	.byte	0x18,0x3B,0x40,0x06,0x4E,0xFB,0x40,0x10
	.byte	0x08,0x06,0x00,0x04,0x53,0x41,0x12,0xD8
	.byte	0x51,0xC9,0xFF,0xFC,0x60,0x08,0x32,0xD8
	.byte	0x60,0x04,0x32,0xD8,0x12,0xD8,0x2D,0x48
	.byte	0xFF,0xFC,0x0C,0x42,0x00,0x08,0x63,0x00
	.byte	0x00,0x9C,0x48,0x41,0x38,0x2E,0x28,0x14
	.byte	0x34,0x07,0xD4,0x42,0x34,0x3B,0x20,0x26
	.byte	0x4E,0xFB,0x20,0x22,0xFC,0xCA,0xFC,0xCA
	.byte	0xFC,0xCA,0xFC,0xCA,0xFC,0xCA,0xFC,0xCA
	.byte	0xFC,0xCA,0xFC,0xCA,0xFC,0xCA,0xFC,0xCA
	.byte	0xFC,0xCA,0xFC,0xCA,0xFC,0xCA,0xFC,0xCA
	.byte	0xFC,0xCA,0xFC,0xCA,0xF8,0x3E,0xF9,0x6A
	.byte	0xF9,0x6A,0xF9,0x6A,0xF9,0x6A,0xF9,0x6A
	.byte	0xF9,0x4A,0x92,0x40,0x38,0x08,0xD8,0x49
	.byte	0xE2,0x4C,0x65,0x2E,0x38,0x08,0xE2,0x4C
	.byte	0x64,0x06,0x12,0xD8,0x53,0x41,0x67,0x34
	.byte	0x38,0x01,0xE2,0x49,0x67,0x2C,0xE2,0x49
	.byte	0x67,0x08,0x53,0x41,0x22,0xD8,0x51,0xC9
	.byte	0xFF,0xFC,0x02,0x44,0x00,0x03,0x18,0x3B
	.byte	0x40,0x06,0x4E,0xFB,0x40,0x10,0x08,0x06
	.byte	0x00,0x04,0x53,0x41,0x12,0xD8,0x51,0xC9
	.byte	0xFF,0xFC,0x60,0x08,0x32,0xD8,0x60,0x04
	.byte	0x32,0xD8,0x12,0xD8,0x43,0xEE,0x00,0x00
	.byte	0x74,0x00,0x32,0x00,0x66,0x00,0xFF,0x18
	.byte	0x67,0x00,0xFF,0x5C,0x41,0xEE,0x00,0x00
	.byte	0x43,0xE8,0x08,0x00,0x22,0xD8,0x22,0xD8
	.byte	0x60,0x00,0xFF,0x58,0x30,0x3C,0x00,0x76
	.byte	0x60,0x04,0x30,0x3C,0x00,0xA6,0x00,0x6F
	.byte	0x00,0x01,0x00,0x02,0x08,0x2F,0x00,0x00
	.byte	0x00,0x57,0x67,0x00,0x02,0x82,0x00,0x6F
	.byte	0x00,0x04,0x00,0x02,0x4A,0x47,0x67,0x00
	.byte	0x01,0x16,0x6A,0x32,0x18,0x07,0x06,0x04
	.byte	0x00,0x0F,0x48,0x45,0x59,0x45,0x6F,0x0C
	.byte	0xEB,0x24,0x89,0x2E,0x28,0x18,0x48,0x45
	.byte	0x60,0x00,0x01,0x3E,0x50,0x45,0x02,0x44
	.byte	0x00,0xFF,0xEB,0x64,0x88,0x6E,0x28,0x18
	.byte	0x1D,0x44,0x28,0x18,0xE0,0x5C,0x1A,0xC4
	.byte	0x48,0x45,0x60,0x00,0x01,0x24,0x38,0x2E
	.byte	0x28,0x14,0x44,0x44,0x0C,0x44,0x00,0x7F
	.byte	0x62,0x48,0x00,0x44,0x01,0x80,0x48,0x45
	.byte	0x53,0x45,0x66,0x2C,0x88,0x6E,0x28,0x18
	.byte	0x3A,0x3C,0x00,0x08,0x42,0x6E,0x28,0x18
	.byte	0x30,0x0D,0x08,0x00,0x00,0x00,0x66,0x08
	.byte	0x3A,0xC4,0x48,0x45,0x60,0x00,0x00,0x6E
	.byte	0x1B,0x44,0x00,0x01,0xE0,0x4C,0x1A,0x84
	.byte	0x54,0x4D,0x48,0x45,0x60,0x00,0x00,0x5E
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x60,0x4A,0x00,0x44,0x10,0x00,0x48,0x45
	.byte	0x5B,0x45,0x6E,0x30,0x14,0x04,0x44,0x45
	.byte	0xEA,0x6C,0x88,0x6E,0x28,0x18,0x44,0x45
	.byte	0x50,0x45,0xEB,0x22,0x1D,0x42,0x28,0x18
	.byte	0x30,0x0D,0x08,0x00,0x00,0x00,0x66,0x06
	.byte	0x3A,0xC4,0x48,0x45,0x60,0x1E,0x1B,0x44
	.byte	0x00,0x01,0xE0,0x4C,0x1A,0x84,0x54,0x4D
	.byte	0x48,0x45,0x60,0x10,0xEB,0x64,0x88,0x6E
	.byte	0x28,0x18,0x1D,0x44,0x28,0x18,0xE0,0x5C
	.byte	0x1A,0xC4,0x48,0x45,0x18,0x07,0x42,0x07
	.byte	0x44,0x04,0x06,0x04,0x00,0x0F,0x0C,0x04
	.byte	0x00,0x0C,0x64,0x00,0xFF,0x26,0x53,0x44
	.byte	0x02,0x04,0x00,0x03,0x48,0x45,0x55,0x45
	.byte	0x6F,0x0C,0xEB,0x24,0x89,0x2E,0x28,0x18
	.byte	0x48,0x45,0x60,0x00,0x00,0x5C,0x50,0x45
	.byte	0x02,0x44,0x00,0xFF,0xEB,0x64,0x88,0x6E
	.byte	0x28,0x18,0x1D,0x44,0x28,0x18,0xE0,0x5C
	.byte	0x1A,0xC4,0x48,0x45,0x60,0x42,0x78,0x00
	.byte	0x18,0x01,0x48,0x45,0x53,0x45,0x66,0x28
	.byte	0x88,0x6E,0x28,0x18,0x3A,0x3C,0x00,0x08
	.byte	0x42,0x6E,0x28,0x18,0x30,0x0D,0x08,0x00
	.byte	0x00,0x00,0x66,0x06,0x3A,0xC4,0x48,0x45
	.byte	0x60,0x1E,0x1B,0x44,0x00,0x01,0xE0,0x4C
	.byte	0x1A,0x84,0x54,0x4D,0x48,0x45,0x60,0x10
	.byte	0xEB,0x64,0x88,0x6E,0x28,0x18,0x1D,0x44
	.byte	0x28,0x18,0xE0,0x5C,0x1A,0xC4,0x48,0x45
	.byte	0x38,0x3C,0x01,0x80,0x48,0x45,0x53,0x45
	.byte	0x66,0x28,0x88,0x6E,0x28,0x18,0x3A,0x3C
	.byte	0x00,0x08,0x42,0x6E,0x28,0x18,0x30,0x0D
	.byte	0x08,0x00,0x00,0x00,0x66,0x06,0x3A,0xC4
	.byte	0x48,0x45,0x60,0x1E,0x1B,0x44,0x00,0x01
	.byte	0xE0,0x4C,0x1A,0x84,0x54,0x4D,0x48,0x45
	.byte	0x60,0x10,0xEB,0x64,0x88,0x6E,0x28,0x18
	.byte	0x1D,0x44,0x28,0x18,0xE0,0x5C,0x1A,0xC4
	.byte	0x48,0x45,0x78,0x00,0x48,0x45,0x5F,0x45
	.byte	0x6F,0x0A,0xEB,0x24,0x89,0x2E,0x28,0x18
	.byte	0x48,0x45,0x60,0x16,0x50,0x45,0x02,0x44
	.byte	0x00,0xFF,0xEB,0x64,0x88,0x6E,0x28,0x18
	.byte	0x1D,0x44,0x28,0x18,0xE0,0x5C,0x1A,0xC4
	.byte	0x48,0x45,0x10,0x2F,0x00,0x57,0x08,0x00
	.byte	0x00,0x02,0x67,0x6C,0x32,0x3C,0x0F,0xFE
	.byte	0x34,0x2E,0x28,0x10,0xC4,0x41,0x92,0x42
	.byte	0xE2,0x49,0x41,0xEA,0xF8,0x00,0x43,0xF4
	.byte	0x20,0x00,0x34,0x3C,0x30,0x00,0x30,0x0A
	.byte	0x90,0x59,0xB0,0x42,0x65,0x04,0x33,0x48
	.byte	0xFF,0xFE,0x51,0xC9,0x00,0x04,0x22,0x4C
	.byte	0x30,0x0A,0x90,0x59,0xB0,0x42,0x65,0x04
	.byte	0x33,0x48,0xFF,0xFE,0x51,0xC9,0x00,0x04
	.byte	0x22,0x4C,0x30,0x0A,0x90,0x59,0xB0,0x42
	.byte	0x65,0x04,0x33,0x48,0xFF,0xFE,0x51,0xC9
	.byte	0x00,0x04,0x22,0x4C,0x30,0x0A,0x90,0x59
	.byte	0xB0,0x42,0x65,0x04,0x33,0x48,0xFF,0xFE
	.byte	0x51,0xC9,0x00,0x04,0x22,0x4C,0x93,0xCC
	.byte	0x3D,0x49,0x28,0x10,0x72,0x00,0x60,0x3A
	.byte	0x30,0x3C,0x00,0x59,0x34,0x2E,0x28,0x10
	.byte	0x43,0xF4,0x20,0x00,0xE2,0x4A,0xD4,0x40
	.byte	0x53,0x40,0x04,0x42,0x08,0x00,0x63,0x0C
	.byte	0x90,0x42,0x32,0xCA,0x51,0xC8,0xFF,0xFC
	.byte	0x30,0x02,0x22,0x4C,0x32,0xCA,0x51,0xC8
	.byte	0xFF,0xFC,0x93,0xCC,0x30,0x09,0x02,0x40
	.byte	0x0F,0xFE,0x3D,0x40,0x28,0x10,0xD4,0xFC
	.byte	0x08,0x00,0x30,0x3C,0x00,0x76,0x48,0xEE
	.byte	0x04,0xFF,0x28,0x1C,0x20,0x6F,0x00,0x48
	.byte	0x20,0xAE,0xFF,0xF4,0x20,0x6F,0x00,0x40
	.byte	0x20,0xAE,0xFF,0xFC,0x20,0x6F,0x00,0x44
	.byte	0x20,0x8D,0x20,0x6F,0x00,0x4C,0x9B,0xEE
	.byte	0xFF,0xEC,0x34,0x7C,0x00,0x11,0xD5,0xEE
	.byte	0xFF,0xF0,0x95,0xCD,0x20,0x8A,0x4C,0xDF
	.byte	0x7F,0xFF,0x4E,0x75

_LZS_Decompress:

	.byte	0x48,0xE7,0xFF,0xFE,0x42,0x97,0x4C,0xEF
	.byte	0x1F,0x00,0x00,0x40,0x4D,0xEC,0x00,0x2C
	.byte	0x4B,0xEE,0x28,0x40,0x2D,0x53,0xFF,0xDC
	.byte	0x28,0x50,0x2D,0x52,0xFF,0xE0,0x24,0x51
	.byte	0x4C,0xEE,0x02,0xFF,0x30,0x40,0x43,0xF5
	.byte	0x90,0x00,0x08,0x2F,0x00,0x00,0x00,0x57
	.byte	0x67,0x06,0x30,0x3C,0x00,0x1A,0x7E,0x00
	.byte	0x48,0x7B,0x00,0x42,0x60,0x1C,0x48,0x7B
	.byte	0x00,0x3C,0x20,0x2E,0xFF,0xD8,0x91,0xAE
	.byte	0xFF,0xDC,0x2D,0x46,0xFF,0xE0,0x66,0x06
	.byte	0x00,0x6F,0x00,0x01,0x00,0x06,0x2C,0x0B
	.byte	0x9C,0x8D,0x20,0x3C,0x00,0x00,0x07,0xFF
	.byte	0xCC,0x40,0x47,0xF5,0x60,0x00,0x90,0x46
	.byte	0x52,0x40,0xB0,0xAE,0xFF,0xDC,0x64,0x0E
	.byte	0x22,0x00,0x53,0x41,0x2D,0x40,0xFF,0xD8
	.byte	0x2C,0x2E,0xFF,0xE0,0x4E,0x75,0x20,0x2E
	.byte	0xFF,0xDC,0x66,0xEC,0x00,0x6F,0x00,0x02
	.byte	0x00,0x06,0x41,0xFA,0xFF,0xF0,0x91,0xDF
	.byte	0x90,0x48,0x60,0x00,0x02,0x96,0x51,0xCF
	.byte	0x00,0x22,0x51,0xCE,0x00,0x0C,0x48,0x46
	.byte	0x51,0xCE,0x00,0x04,0x60,0x0A,0x48,0x46
	.byte	0xE1,0x45,0x1A,0x1C,0x50,0x47,0x60,0x0A
	.byte	0x52,0x47,0x30,0x3C,0x00,0x1A,0x60,0x00
	.byte	0x02,0x52,0x0F,0x05,0x66,0x38,0x51,0x47
	.byte	0x6C,0x20,0x51,0xCE,0x00,0x0C,0x48,0x46
	.byte	0x51,0xCE,0x00,0x04,0x60,0x0A,0x48,0x46
	.byte	0xE1,0x45,0x1A,0x1C,0x50,0x47,0x60,0x0A
	.byte	0x50,0x47,0x30,0x3C,0x00,0x42,0x60,0x00
	.byte	0x02,0x2A,0x38,0x05,0xEE,0x6C,0x16,0xC4
	.byte	0x14,0xC4,0x51,0xC9,0xFF,0xAA,0x30,0x3C
	.byte	0x00,0x1A,0x60,0x00,0xFF,0x4A,0x51,0xCF
	.byte	0x00,0x22,0x51,0xCE,0x00,0x0C,0x48,0x46
	.byte	0x51,0xCE,0x00,0x04,0x60,0x0A,0x48,0x46
	.byte	0xE1,0x45,0x1A,0x1C,0x50,0x47,0x60,0x0A
	.byte	0x52,0x47,0x30,0x3C,0x00,0x7A,0x60,0x00
	.byte	0x01,0xF2,0x0F,0x05,0x67,0x00,0x01,0x7C
	.byte	0x5F,0x47,0x6C,0x20,0x51,0xCE,0x00,0x0C
	.byte	0x48,0x46,0x51,0xCE,0x00,0x04,0x60,0x0A
	.byte	0x48,0x46,0xE1,0x45,0x1A,0x1C,0x50,0x47
	.byte	0x60,0x0A,0x5E,0x47,0x30,0x3C,0x00,0xA4
	.byte	0x60,0x00,0x01,0xC8,0x38,0x05,0xEE,0x6C
	.byte	0x02,0x44,0x00,0x7F,0x67,0x00,0x01,0xB0
	.byte	0x20,0x0B,0x90,0x8D,0x90,0x44,0x36,0x3C
	.byte	0x07,0xFF,0xC0,0x43,0x96,0x40,0x43,0xF5
	.byte	0x00,0x00,0x18,0x19,0x51,0xCB,0x00,0x08
	.byte	0x22,0x4D,0x36,0x3C,0x07,0xFF,0x16,0xC4
	.byte	0x14,0xC4,0x51,0xC9,0x00,0x0A,0x30,0x3C
	.byte	0x01,0x02,0x60,0x00,0xFE,0xC2,0x18,0x19
	.byte	0x51,0xCB,0x00,0x08,0x22,0x4D,0x36,0x3C
	.byte	0x07,0xFF,0x16,0xC4,0x14,0xC4,0x51,0xC9
	.byte	0x00,0x0A,0x30,0x3C,0x01,0x1E,0x60,0x00
	.byte	0xFE,0xA6,0x55,0x47,0x6C,0x20,0x51,0xCE
	.byte	0x00,0x0C,0x48,0x46,0x51,0xCE,0x00,0x04
	.byte	0x60,0x0A,0x48,0x46,0xE1,0x45,0x1A,0x1C
	.byte	0x50,0x47,0x60,0x0A,0x54,0x47,0x30,0x3C
	.byte	0x01,0x1E,0x60,0x00,0x01,0x4E,0x38,0x05
	.byte	0xEE,0x6C,0x02,0x44,0x00,0x03,0x67,0x00
	.byte	0xFE,0xCE,0x30,0x04,0x34,0x04,0x53,0x42
	.byte	0x57,0x40,0x1D,0x40,0x30,0x64,0x18,0x19
	.byte	0x51,0xCB,0x00,0x08,0x22,0x4D,0x36,0x3C
	.byte	0x07,0xFF,0x16,0xC4,0x14,0xC4,0x51,0xC9
	.byte	0x00,0x0A,0x30,0x3C,0x01,0x76,0x60,0x00
	.byte	0xFE,0x4E,0x51,0xCA,0xFF,0xE2,0x4A,0x2E
	.byte	0x30,0x64,0x66,0x00,0xFE,0x9A,0x55,0x47
	.byte	0x6C,0x20,0x51,0xCE,0x00,0x0C,0x48,0x46
	.byte	0x51,0xCE,0x00,0x04,0x60,0x0A,0x48,0x46
	.byte	0xE1,0x45,0x1A,0x1C,0x50,0x47,0x60,0x0A
	.byte	0x54,0x47,0x30,0x3C,0x01,0x82,0x60,0x00
	.byte	0x00,0xEA,0x38,0x05,0xEE,0x6C,0x02,0x44
	.byte	0x00,0x03,0x67,0x00,0xFE,0x6A,0x30,0x04
	.byte	0x57,0x40,0x34,0x04,0x53,0x42,0x1D,0x40
	.byte	0x30,0x64,0x18,0x19,0x51,0xCB,0x00,0x08
	.byte	0x22,0x4D,0x36,0x3C,0x07,0xFF,0x16,0xC4
	.byte	0x14,0xC4,0x51,0xC9,0x00,0x0A,0x30,0x3C
	.byte	0x01,0xDA,0x60,0x00,0xFD,0xEA,0x51,0xCA
	.byte	0xFF,0xE2,0x4A,0x2E,0x30,0x64,0x66,0x00
	.byte	0xFE,0x36,0x59,0x47,0x6C,0x20,0x51,0xCE
	.byte	0x00,0x0C,0x48,0x46,0x51,0xCE,0x00,0x04
	.byte	0x60,0x0A,0x48,0x46,0xE1,0x45,0x1A,0x1C
	.byte	0x50,0x47,0x60,0x0A,0x58,0x47,0x30,0x3C
	.byte	0x01,0xE6,0x60,0x00,0x00,0x86,0x38,0x05
	.byte	0xEE,0x6C,0x02,0x44,0x00,0x0F,0x67,0x00
	.byte	0xFE,0x06,0x30,0x04,0x04,0x40,0x00,0x0F
	.byte	0x60,0x98,0x04,0x47,0x00,0x0B,0x6C,0x52
	.byte	0x51,0xCE,0x00,0x0C,0x48,0x46,0x51,0xCE
	.byte	0x00,0x04,0x60,0x3A,0x48,0x46,0x0C,0x47
	.byte	0xFF,0xFD,0x6E,0x24,0xE1,0x45,0x1A,0x1C
	.byte	0x50,0x47,0x65,0x36,0x51,0xCE,0x00,0x0C
	.byte	0x48,0x46,0x51,0xCE,0x00,0x04,0x60,0x1E
	.byte	0x48,0x46,0x0C,0x47,0xFF,0xFD,0x66,0x08
	.byte	0x50,0x47,0xE1,0x45,0x1A,0x1C,0x60,0x1A
	.byte	0x50,0x47,0xE1,0x85,0x1A,0x1C,0x18,0x05
	.byte	0xEE,0xBD,0xCB,0x44,0x60,0x10,0x06,0x47
	.byte	0x00,0x0B,0x30,0x3C,0x02,0x1E,0x60,0x00
	.byte	0x00,0x1A,0x38,0x05,0xEE,0x6C,0x02,0x44
	.byte	0x07,0xFF,0x66,0x00,0xFE,0x54,0x30,0x3C
	.byte	0x00,0x1A,0x7E,0x00,0x00,0x6F,0x00,0x04
	.byte	0x00,0x02,0x42,0xAE,0xFF,0xE0,0x00,0x6F
	.byte	0x00,0x01,0x00,0x02,0x2C,0x2E,0xFF,0xD8
	.byte	0x52,0x41,0x9C,0x81,0x67,0x0C,0x9D,0xAE
	.byte	0xFF,0xDC,0x66,0x06,0x00,0x6F,0x00,0x02
	.byte	0x00,0x02,0x97,0xCD,0x3C,0x0B,0x93,0xCD
	.byte	0x48,0xEE,0x02,0xFF,0x30,0x40,0x24,0x2E
	.byte	0xFF,0xE0,0x4C,0xEF,0x2B,0x00,0x00,0x40
	.byte	0x2A,0xAE,0xFF,0xDC,0x26,0x82,0x22,0x8A
	.byte	0x20,0x8C,0x4C,0xDF,0x7F,0xFF,0x4E,0x75

