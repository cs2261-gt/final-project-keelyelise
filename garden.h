
//{{BLOCK(garden)

//======================================================================
//
//	garden, 1024x1024@4, 
//	+ palette 256 entries, not compressed
//	+ 171 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x128 
//	Total size: 512 + 5472 + 32768 = 38752
//
//	Time-stamp: 2020-04-07, 14:35:43
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDEN_H
#define GRIT_GARDEN_H

#define gardenTilesLen 5472
extern const unsigned short gardenTiles[2736];

#define gardenMapLen 32768
extern const unsigned short gardenMap[16384];

#define gardenPalLen 512
extern const unsigned short gardenPal[256];

#endif // GRIT_GARDEN_H

//}}BLOCK(garden)
