
//{{BLOCK(sprites)

//======================================================================
//
//	sprites, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 3 tiles (t|f|p reduced) not compressed
//	+ regular map (flat), not compressed, 32x32 
//	Total size: 512 + 96 + 2048 = 2656
//
//	Time-stamp: 2020-04-08, 12:20:10
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_SPRITES_H
#define GRIT_SPRITES_H

#define spritesTilesLen 96
extern const unsigned short spritesTiles[48];

#define spritesMapLen 2048
extern const unsigned short spritesMap[1024];

#define spritesPalLen 512
extern const unsigned short spritesPal[256];

#endif // GRIT_SPRITES_H

//}}BLOCK(sprites)
