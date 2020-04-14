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

//Variables
extern GOOSE goose;

//Enums
enum {LEFT, RIGHT, BACK, FORWARD}; //direction
enum {HONK, IDLE, WALK}; //goose anistate
enum {DUCK, STAND, SWIM}; //goose state

//Methods
void initGoose();
void updateGoose();
void drawGoose();