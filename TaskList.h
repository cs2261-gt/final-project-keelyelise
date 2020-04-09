
//{{BLOCK(TaskList)

//======================================================================
//
//	TaskList, 256x256@4, 
//	+ palette 256 entries, not compressed
//	+ 34 tiles (t|f|p reduced) not compressed
//	+ regular map (in SBBs), not compressed, 32x32 
//	Total size: 512 + 1088 + 2048 = 3648
//
//	Time-stamp: 2020-04-05, 21:42:29
//	Exported by Cearn's GBA Image Transmogrifier, v0.8.3
//	( http://www.coranac.com/projects/#grit )
//
//======================================================================

#ifndef GRIT_TASKLIST_H
#define GRIT_TASKLIST_H

#define TaskListTilesLen 1088
extern const unsigned short TaskListTiles[544];

#define TaskListMapLen 2048
extern const unsigned short TaskListMap[1024];

#define TaskListPalLen 512
extern const unsigned short TaskListPal[256];

#endif // GRIT_TASKLIST_H

//}}BLOCK(TaskList)
