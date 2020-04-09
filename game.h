//Goose struct
typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int width;
    int height;
    int grabbing;
    int state;
    int anistate;
    int aninum;
    int dir;
    int rdel;
    int cdel;
    int index;
    int beakX;
    int beakY;
} GOOSE;

//Human struct
typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int state;
    int anistate;
    int index;
} HUMAN;

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
} OBJECT;

//Enums
enum {LEFT, RIGHT, BACK, FORWARD}; //direction
enum {HONK, IDLE, WALK}; //goose anistate
enum {DUCK, STAND, SWIM}; //goose state
enum {BLOCK}; //object types

//Constants
#define OBJECTCOUNT 2
#define WORLDWIDTH 1024
#define WORLDHEIGHT 256

//Variables
extern GOOSE goose;
extern HUMAN human;
extern OBJECT objects[OBJECTCOUNT];
extern int tasks;
extern int cheat;
extern int voff;
extern int hoff;
extern int sb;
extern int anicounter;
extern int gooseHoff;
extern int overallHoff;


//Methods
void initGame();
void updateGame();
void drawGame();
void initGoose();
void initHuman();
void initObjects();
void updateGoose();
void updateHuman();
void updateObjects();
void drawGoose();
void drawHuman();
void drawObjects();