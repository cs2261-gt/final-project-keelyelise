//Human struct
typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int bubbleDel;
    int bubbleWidth;
    int bubbleHeight;
    int state;
    int anistate;
    int index;
    int dir;
    int anicounter;
    int workTimer;
    int aninum;
    int action;
    int grabbing;
} HUMAN;

//Variables
extern HUMAN human;
extern int walkDir;
extern int hatTimer;

//Enums
enum {FORWARDH, BACKH, LEFTH, RIGHTH}; //direction
enum {IDLEH, WALKH}; //human anistate
enum {STANDH, KNEELH}; //human state
enum {CHASE, RETURNOBJ, SWEAT, OPENFRONT, OPENBACK, CHEAT, SPRINKLEROFF, GARDENING};

//Methods
void initHuman();
void updateHuman();
void drawHuman();
void chase();
void returnObject();
void sweat();
void openFrontGate();
void openBackGate();
void turnSprinklerOff();
void gardening();
void performCheat();