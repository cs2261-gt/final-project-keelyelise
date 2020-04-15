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
    int grabbed;
    int hoff;
    int spriteCol;
    int spriteRow;
    int shape;
    int size;
} OBJECT;

//Constants
#define OBJECTCOUNT 14

//Variables
extern OBJECT objects[OBJECTCOUNT];
extern int shadowCount;

//Enums
enum {FERTILIZER, SPRINKLER, HAT, SUNHAT, CARROT, SANDWICH, THERMOS, APPLE, JAM, KEYS, FRONTGATE, BACKGATE, BREAD, PEN}; //object types

//Methods
void initObjects();
void updateObjects();
void drawObjects();
void drawCollision(OBJECT* o);
void checkTasks();