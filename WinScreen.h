
//{{BLOCK(WinScreen)

//======================================================================
//
//	WinScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 49 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1568 + 2048 = 4128
//
//	Time-stamp: 2020-04-05, 21:34:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_WINSCREEN_H
#define GRIT_WINSCREEN_H

#define WinScreenTilesLen 1568
extern const unsigned short WinScreenTiles[784];

#define WinScreenMapLen 2048
extern const unsigned short WinScreenMap[1024];

#define WinScreenPalLen 512
extern const unsigned short WinScreenPal[256];

#endif // GRIT_WINSCREEN_H

//}}BLOCK(WinScreen)
