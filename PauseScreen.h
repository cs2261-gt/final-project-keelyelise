
//{{BLOCK(PauseScreen)

//======================================================================
//
//	PauseScreen, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 98 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 3136 + 2048 = 5696
//
//	Time-stamp: 2020-04-05, 21:38:26
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_PAUSESCREEN_H
#define GRIT_PAUSESCREEN_H

#define PauseScreenTilesLen 3136
extern const unsigned short PauseScreenTiles[1568];

#define PauseScreenMapLen 2048
extern const unsigned short PauseScreenMap[1024];

#define PauseScreenPalLen 512
extern const unsigned short PauseScreenPal[256];

#endif // GRIT_PAUSESCREEN_H

//}}BLOCK(PauseScreen)
