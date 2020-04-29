
//{{BLOCK(garden)

//======================================================================
//
//	garden, 1024x256@8, 
//	+ palette 256 entries, not compressed
//	+ 616 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 39424 + 8192 = 48128
//
//	Time-stamp: 2020-04-29, 12:53:53
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDEN_H
#define GRIT_GARDEN_H

#define gardenTilesLen 39424
extern const unsigned short gardenTiles[19712];

#define gardenMapLen 8192
extern const unsigned short gardenMap[4096];

#define gardenPalLen 512
extern const unsigned short gardenPal[256];

#endif // GRIT_GARDEN_H

//}}BLOCK(garden)
