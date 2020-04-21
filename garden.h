
//{{BLOCK(garden)

//======================================================================
//
//	garden, 1024x256@8, 
//	+ palette 256 entries, not compressed
//	+ 687 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 43968 + 8192 = 52672
//
//	Time-stamp: 2020-04-19, 23:18:40
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_GARDEN_H
#define GRIT_GARDEN_H

#define gardenTilesLen 43968
extern const unsigned short gardenTiles[21984];

#define gardenMapLen 8192
extern const unsigned short gardenMap[4096];

#define gardenPalLen 512
extern const unsigned short gardenPal[256];

#endif // GRIT_GARDEN_H

//}}BLOCK(garden)
