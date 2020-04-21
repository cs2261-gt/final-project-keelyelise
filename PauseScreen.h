
//{{BLOCK(pauseScreen)

//======================================================================
//
//	pauseScreen, 512x256@8, 
//	+ palette 256 entries, not compressed
//	+ 713 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 64x32 
//	Total size: 512 + 45632 + 4096 = 50240
//
//	Time-stamp: 2020-04-19, 22:01:37
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREEN_H
#define GRIT_PAUSESCREEN_H

#define pauseScreenTilesLen 45632
extern const unsigned short pauseScreenTiles[22816];

#define pauseScreenMapLen 4096
extern const unsigned short pauseScreenMap[2048];

#define pauseScreenPalLen 512
extern const unsigned short pauseScreenPal[256];

#endif // GRIT_PAUSESCREEN_H

//}}BLOCK(pauseScreen)
