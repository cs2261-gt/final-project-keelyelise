
//{{BLOCK(temp)

//======================================================================
//
//	temp, 1024x256@4, 
//	+ palette 256 entries, not compressed
//	+ 120 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 128x32 
//	Total size: 512 + 3840 + 8192 = 12544
//
//	Time-stamp: 2020-04-08, 16:03:00
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TEMP_H
#define GRIT_TEMP_H

#define tempTilesLen 3840
extern const unsigned short tempTiles[1920];

#define tempMapLen 8192
extern const unsigned short tempMap[4096];

#define tempPalLen 512
extern const unsigned short tempPal[256];

#endif // GRIT_TEMP_H

//}}BLOCK(temp)
