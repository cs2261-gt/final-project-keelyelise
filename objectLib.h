//Object struct
typedef struct {
    int type;
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int permRow;
    int permCol;
    int width;
    int height;
    int level;
    int index;
    int grabbed;
    int hoff;
} OBJECT;

//Constants
#define OBJECTCOUNT 2

//Variables
extern OBJECT objects[OBJECTCOUNT];

//Enums
enum {BLOCK}; //object types

//Methods
void initObjects();
void updateObjects();
void drawObjects();