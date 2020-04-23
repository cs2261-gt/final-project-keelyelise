
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 59 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1888 + 2048 = 4448
//
//	Time-stamp: 2020-04-22, 10:39:20
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

const unsigned short instructionsScreenTiles[944] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x4111,0x1444,0x4411,0x4411,0x1441,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x4444,0x4111,0x4114,0x4411,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x4411,0x1114,0x4441,0x1144,0x1141,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1144,0x1114,0x1144,0x1114,0x1144,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x4411,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x2211,0x1111,0x1121,0x1111,0x1112,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1111,0x1121,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1121,0x1111,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x2111,0x1211,0x2111,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1211,0x1111,0x1211,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1112,0x1111,0x1112,
	0x1441,0x1111,0x1441,0x4411,0x1441,0x4111,0x1441,0x4111,
	0x4411,0x4411,0x4111,0x1444,0x1111,0x1111,0x1111,0x1111,
	0x4411,0x1111,0x4411,0x1111,0x4414,0x1111,0x4414,0x1111,
	0x4111,0x4114,0x1111,0x4444,0x1111,0x1111,0x1111,0x1111,
	0x1144,0x1144,0x1144,0x4444,0x1144,0x4444,0x4144,0x1114,
	0x4114,0x1114,0x4111,0x1114,0x1111,0x1111,0x1111,0x1111,

	0x1144,0x1144,0x1144,0x1144,0x1144,0x1144,0x1441,0x1144,
	0x1441,0x1144,0x1441,0x4444,0x1111,0x1111,0x1111,0x1111,
	0x4411,0x1111,0x1111,0x1111,0x4411,0x1111,0x4411,0x1111,
	0x1111,0x1111,0x1114,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1121,0x1111,0x2211,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1222,0x2111,0x2111,0x2111,0x2111,
	0x2121,0x2111,0x1112,0x1222,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x2121,0x1121,0x1221,0x1212,0x1121,0x1212,
	0x1121,0x1212,0x1121,0x1212,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1121,0x1212,0x1121,0x2122,0x2121,0x2112,0x2121,
	0x2112,0x2121,0x1222,0x1121,0x1112,0x1111,0x1112,0x1111,
	0x1111,0x1222,0x1122,0x1121,0x1211,0x1121,0x1222,0x1121,
	0x1111,0x1121,0x1122,0x1121,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1221,0x1111,0x2112,0x1111,0x2222,0x1111,
	0x1112,0x1111,0x1221,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x2211,0x1212,0x2111,0x1211,0x2111,0x2211,0x2111,0x1211,
	0x2111,0x1211,0x2111,0x1211,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1122,0x2121,0x1211,0x2121,0x1222,
	0x2121,0x1111,0x1121,0x1122,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x2221,0x1111,0x1211,0x1111,0x1211,0x1111,0x1211,
	0x1111,0x1211,0x1111,0x1211,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x2211,0x2111,0x1111,0x1212,0x2211,0x2112,
	0x1121,0x1112,0x2211,0x2212,0x1111,0x1111,0x1111,0x1111,

	0x1211,0x1111,0x1212,0x1111,0x1211,0x1112,0x2211,0x1111,
	0x1212,0x1112,0x1211,0x1121,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1212,0x1111,0x1112,0x1111,0x1212,0x1111,0x1212,
	0x1111,0x1212,0x1111,0x1212,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1222,0x1221,0x1121,0x1112,0x1121,0x1121,0x1121,
	0x1211,0x1121,0x1122,0x1121,0x1111,0x1111,0x1111,0x1111,
	0x1112,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x2221,0x2222,0x2221,0x2222,
	0x2221,0x2222,0x2221,0x2222,0x2221,0x2222,0x2221,0x2222,
	0x1111,0x1111,0x1111,0x1111,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2221,0x2222,0x2221,0x2222,0x2221,0x2222,0x2221,0x2222,
	0x2221,0x2222,0x2221,0x2222,0x2221,0x2222,0x2221,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,
	0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,0x2222,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1112,0x1111,0x2122,
	0x1111,0x1212,0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x2112,0x1122,0x1212,0x1211,
	0x1212,0x1211,0x1212,0x1211,0x1212,0x1211,0x1212,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1112,0x2212,0x1112,0x1212,
	0x1112,0x1212,0x1112,0x2212,0x2121,0x1211,0x2121,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x1122,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1112,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x1222,0x1111,0x2112,
	0x1111,0x1112,0x1111,0x1112,0x1111,0x1112,0x1111,0x2112,
	0x1111,0x1111,0x1111,0x1111,0x1211,0x1211,0x1211,0x1211,
	0x1212,0x1211,0x1212,0x1211,0x1212,0x1211,0x1211,0x1211,
	0x1111,0x1111,0x1111,0x1111,0x2221,0x1211,0x1112,0x1212,
	0x1112,0x1211,0x1112,0x2211,0x1112,0x1211,0x1112,0x1212,
	0x1111,0x1111,0x1111,0x1111,0x1211,0x1111,0x1121,0x1111,
	0x1112,0x1111,0x1111,0x1111,0x1112,0x1111,0x1121,0x1111,

	0x1111,0x1111,0x1111,0x1111,0x1111,0x2221,0x1111,0x1112,
	0x1111,0x1112,0x1111,0x1112,0x1111,0x2112,0x1111,0x1112,
	0x1111,0x1111,0x1111,0x1111,0x2211,0x1122,0x1212,0x1211,
	0x1211,0x1211,0x2211,0x1122,0x1212,0x1112,0x1212,0x1121,
	0x1111,0x1111,0x1111,0x1111,0x1211,0x2211,0x2121,0x1211,
	0x1112,0x1212,0x2222,0x2212,0x1112,0x1212,0x1112,0x1212,
	0x1111,0x1111,0x1111,0x1111,0x1122,0x1111,0x1211,0x1111,
	0x1211,0x1111,0x1122,0x1111,0x1211,0x1111,0x1211,0x1111,

	0x1111,0x1112,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2112,0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1211,0x2211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x1222,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2111,0x1122,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x2221,0x1211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,

	0x1111,0x2221,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1211,0x1211,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1112,0x2212,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
	0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,0x1111,
};

const unsigned short instructionsScreenMap[1024] __attribute__((aligned(4)))=
{
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2002,0x2003,
	0x2004,0x2005,0x2006,0x2007,0x2008,0x2001,0x2009,0x2009,
	0x2001,0x200A,0x2001,0x200B,0x2001,0x2409,0x200C,0x2009,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x200D,0x200E,
	0x200F,0x2010,0x2011,0x2012,0x2013,0x2014,0x2015,0x2016,
	0x2017,0x2018,0x2019,0x201A,0x201B,0x201C,0x201D,0x201E,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x201F,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2020,0x2021,0x2021,0x2021,0x2021,
	0x2420,0x2001,0x2001,0x2001,0x2020,0x2021,0x2021,0x2021,
	0x2021,0x2420,0x2001,0x2001,0x2001,0x2020,0x2021,0x2021,
	0x2021,0x2021,0x2420,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,0x2023,
	0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,
	0x2023,0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,
	0x2023,0x2023,0x2422,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,0x2023,
	0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,
	0x2023,0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,
	0x2023,0x2023,0x2422,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,0x2023,
	0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,
	0x2023,0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,
	0x2023,0x2023,0x2422,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,0x2023,
	0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,
	0x2023,0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,
	0x2023,0x2023,0x2422,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,0x2023,
	0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,0x2023,
	0x2023,0x2422,0x2001,0x2001,0x2001,0x2022,0x2023,0x2023,
	0x2023,0x2023,0x2422,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2024,0x2025,0x2026,0x2027,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2028,0x2029,0x202A,
	0x202B,0x2001,0x2001,0x2001,0x2001,0x2001,0x202C,0x202D,
	0x202E,0x202F,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2030,0x2031,0x2032,0x2033,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2034,0x2035,0x2036,
	0x2037,0x2001,0x2001,0x2001,0x2001,0x2001,0x2038,0x2039,
	0x203A,0x2033,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,

	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
	0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,0x2001,
};

const unsigned short instructionsScreenPal[256] __attribute__((aligned(4)))=
{
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
	0x0000,0x7FFF,0x20C5,0x6318,0x2A1E,0x023D,0x396A,0x77BD,
	0x027F,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,
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

//}}BLOCK(instructionsScreen)
