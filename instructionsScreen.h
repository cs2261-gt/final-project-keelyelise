
//{{BLOCK(instructionsScreen)

//======================================================================
//
//	instructionsScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 67 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 2144 + 2048 = 4704
//
//	Time-stamp: 2020-04-05, 21:17:58
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_INSTRUCTIONSSCREEN_H
#define GRIT_INSTRUCTIONSSCREEN_H

#define instructionsScreenTilesLen 2144
extern const unsigned short instructionsScreenTiles[1072];

#define instructionsScreenMapLen 2048
extern const unsigned short instructionsScreenMap[1024];

#define instructionsScreenPalLen 512
extern const unsigned short instructionsScreenPal[256];

#endif // GRIT_INSTRUCTIONSSCREEN_H

//}}BLOCK(instructionsScreen)
