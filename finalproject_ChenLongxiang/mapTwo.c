
//{{BLOCK(mapTwo)

//======================================================================
//
//	mapTwo, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 15 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 480 + 2048 = 3040
//
//	Time-stamp: 2023-04-29, 22:12:52
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short mapTwoTiles[240] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3A33,0x3333,
	0xA333,0x3A33,0xA333,0x33A3,0xA333,0x33A3,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,0x3333,
	0x3333,0x3333,0x3333,0x3333,0x3333,0x333A,0xA33A,0xA33A,
	0xA3A3,0x3A3A,0xA303,0x303A,0x0333,0x3330,0x3333,0x3333,

	0x3333,0x3333,0x3333,0x3833,0x3333,0x8283,0x8333,0x3833,
	0x2833,0x3A38,0x8333,0x3A33,0xA333,0x3333,0x3333,0x3333,
	0x3333,0x5333,0x3333,0x5333,0x3333,0x5333,0x3333,0x5333,
	0x3333,0x5333,0x3333,0x5333,0x3333,0x5333,0x3333,0xE533,
	0x5555,0x5555,0xEEEE,0xEEEE,0xEE99,0x9EEE,0x99EE,0xE999,
	0xEEEE,0xEEEE,0x999E,0xEEE9,0xEEE9,0x999E,0xEEEE,0xEEEE,
	0x5555,0xEE55,0xEEEE,0xEEEE,0xEE99,0xEEEE,0x99EE,0xEEE9,
	0xEEEE,0xEEEE,0x999E,0xEEE9,0xEEE9,0x3EEE,0xEEEE,0x33EE,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x4441,0x1111,0x1114,0x1114,0x1111,0x4441,0x1111,0x1111,
	0x3333,0x3333,0x3355,0x5533,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0xF55F,0xF55F,0xFFFF,0xFFFF,
	0x3333,0x3333,0x3355,0x5533,0x5555,0x5555,0x5555,0x5555,
	0x5555,0x5555,0x5555,0x5555,0x55FF,0xFF55,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0x9FFF,0xFFFF,0xFFFF,0xFFFF,
	0xFF9F,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,

	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,0xFFFF,
	0x3366,0x6633,0x6776,0x6666,0x6777,0x6666,0x6666,0x7776,
	0x6667,0xC766,0x6677,0xC666,0x6677,0xCC66,0xCCC6,0xBB6C,
	0x3366,0x7333,0xDDD7,0x766D,0xDD77,0x7666,0x677C,0x6666,
	0x666C,0x6C66,0x666C,0x6CC6,0x66CC,0x7CCC,0xC6BB,0x6CCC,
};

const unsigned short mapTwoMap[1024] __attribute__((aligned(4)))=
{
	0x0001,0x0002,0x0003,0x0004,0x0002,0x0001,0x0004,0x0004,
	0x0001,0x0002,0x0003,0x0002,0x0003,0x0004,0x0004,0x0003,
	0x0002,0x0004,0x0003,0x0001,0x0001,0x0003,0x0003,0x0004,
	0x0001,0x0003,0x0004,0x0004,0x0002,0x0004,0x0004,0x0005,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,
	0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0006,0x0007,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,
	0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,
	0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,
	0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,0x0009,0x000A,
	0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,
	0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,
	0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,
	0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,

	0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,
	0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,
	0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,
	0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,0x000C,0x000B,
	0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,
	0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,
	0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,
	0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,0x080A,0x0809,

	0x000D,0x000D,0x000E,0x000E,0x000D,0x000D,0x000E,0x000E,
	0x000D,0x000D,0x000E,0x000E,0x000D,0x000D,0x000E,0x000E,
	0x000D,0x000D,0x000E,0x000E,0x000D,0x000D,0x000E,0x000E,
	0x000D,0x000D,0x000E,0x000E,0x000D,0x000D,0x000E,0x000E,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,

	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
	0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,0x0008,
};

const unsigned short mapTwoPal[256] __attribute__((aligned(4)))=
{
	0x0CC3,0x5224,0x1A96,0x1DE7,0x5E8A,0x22AC,0x314D,0x2DD2,
	0x5B19,0x10ED,0x1503,0x45F0,0x20E8,0x4637,0x0CE8,0x2A37,
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

//}}BLOCK(mapTwo)