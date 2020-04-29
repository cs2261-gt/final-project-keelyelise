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
extern int aniTimer;
extern int aninum;
extern int stepTimer;
extern int savedDir;

//Enums
enum {FORWARDH, BACKH, LEFTH, RIGHTH}; //direction
enum {IDLEH, WALKH}; //human anistate
enum {STANDH, KNEELH}; //human state
enum {CHASE, RETURNOBJ, OPENFRONT, OPENBACK, CHEAT, GARDENING, REPLACE};

//Methods
void initHuman();
void updateHuman();
void drawHuman();
void chase();
void returnObject();
void replaceHat();
void openFrontGate();
void openBackGate();
void gardening();
void performCheat();