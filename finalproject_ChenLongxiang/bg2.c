
//{{BLOCK(bg2)

//======================================================================
//
//	bg2, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 39 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1248 + 2048 = 3808
//
//	Time-stamp: 2023-04-22, 23:20:46
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short bg2Tiles[624] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x4440,0x0000,0x5540,0x0000,0x5540,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x4444,0x4444,0x5555,0x5555,0x5555,0x5555,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x4444,0x0004,0x5555,0x0004,0x5555,0x0004,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x4444,0x0044,0x5555,0x0045,0x5555,0x0045,
	0x0000,0x5540,0x0000,0x5540,0x0000,0x5540,0x0000,0x5540,
	0x0000,0x5540,0x0000,0x5540,0x0000,0x5540,0x0000,0x5540,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5444,0x5555,
	0x5545,0x5555,0x5545,0x4555,0x5545,0x5455,0x5545,0x4455,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x4445,0x5445,0x5454,0x4545,0x5454,0x4545,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x4555,0x5554,
	0x5555,0x5554,0x5554,0x4554,0x5545,0x5554,0x5544,0x5554,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x0004,0x5555,0x0004,0x5555,0x0004,0x5555,0x0004,
	0x5555,0x0004,0x5555,0x0004,0x5555,0x0004,0x5555,0x0004,
	0x4000,0x5555,0x4000,0x5555,0x4000,0x4555,0x4000,0x5555,
	0x4000,0x5555,0x4000,0x5555,0x4000,0x5555,0x4000,0x5555,

	0x5555,0x5555,0x5555,0x5555,0x5544,0x5455,0x5554,0x5555,
	0x5554,0x4445,0x5554,0x5455,0x5554,0x5455,0x5554,0x5455,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x4455,0x4554,0x4555,
	0x4444,0x4554,0x4554,0x4555,0x4554,0x4555,0x4554,0x4555,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x4445,0x5555,0x5455,
	0x5455,0x5455,0x4545,0x4455,0x4445,0x5455,0x5545,0x5455,
	0x5555,0x5555,0x5555,0x5555,0x5544,0x5555,0x5455,0x5555,
	0x5455,0x5445,0x5544,0x4554,0x5554,0x4554,0x5545,0x4554,

	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5455,
	0x4455,0x4445,0x5545,0x5454,0x5545,0x5454,0x5545,0x5454,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x4445,0x5555,0x4545,
	0x5555,0x4555,0x5555,0x4555,0x5555,0x4555,0x5555,0x4555,
	0x5555,0x5555,0x5555,0x5555,0x5544,0x5555,0x5545,0x5555,
	0x5555,0x4544,0x4555,0x5455,0x4555,0x5455,0x4555,0x5455,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4454,0x4444,0x4554,0x4545,0x4454,0x4545,0x5545,0x4554,

	0x5555,0x0045,0x5555,0x0045,0x5555,0x0045,0x5555,0x0045,
	0x5545,0x0045,0x5454,0x0045,0x5455,0x0045,0x5455,0x0045,
	0x0000,0x5540,0x0000,0x5540,0x0000,0x5540,0x0000,0x5540,
	0x0000,0x4440,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5545,0x5455,0x4444,0x4554,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4555,0x4554,0x4554,0x5554,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x5555,0x5554,0x4544,0x4544,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5555,0x0004,0x5555,0x0004,0x5555,0x0004,0x5555,0x0004,
	0x4444,0x0004,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4000,0x4555,0x4000,0x5555,0x4000,0x5555,0x4000,0x5555,
	0x4000,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x4444,0x4445,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4444,0x4444,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4454,0x4445,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x4455,0x5445,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x4455,0x4455,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5554,0x4455,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5554,0x5544,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x5545,0x4454,0x5555,0x5555,0x5555,0x5555,0x5555,0x5555,
	0x4444,0x4444,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x4454,0x0045,0x5555,0x0045,0x5555,0x0045,0x5555,0x0045,
	0x4444,0x0044,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x4440,0x4000,0x9994,0x9400,0x9999,
	0x9940,0x9999,0x9940,0x9999,0x9994,0x4999,0x9994,0x5499,
	0x9444,0x5549,0x4454,0x5544,0x5554,0x5455,0x5540,0x4555,
	0x5540,0x5555,0x5400,0x5555,0x4000,0x5554,0x0000,0x4440,
};

const unsigned short bg2Map[1024] __attribute__((aligned(4)))=
{
	0x1001,0x1002,0x1002,0x1002,0x1002,0x1002,0x1003,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x1403,0x1002,0x1002,0x1002,0x1002,
	0x1002,0x1002,0x1002,0x1002,0x1004,0x0000,0x0000,0x0000,
	0x1005,0x1006,0x1007,0x1008,0x1009,0x1009,0x100A,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x100B,0x100C,0x100D,0x100E,0x100F,
	0x1010,0x1011,0x1012,0x1013,0x1014,0x0000,0x0000,0x0000,

	0x1015,0x1016,0x1017,0x1018,0x1019,0x1019,0x101A,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x101B,0x101C,0x101D,0x101E,0x101F,
	0x1020,0x1021,0x1022,0x1023,0x1024,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1025,0x1425,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x1026,0x1426,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

const unsigned short bg2Pal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0120,0x4BDF,0x0117,0x7C00,0x0000,0x7FFF,0x45A0,0x000D,
	0x7CBF,0x001F,0x54B8,0x7FA0,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,

	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
};

//}}BLOCK(bg2)
