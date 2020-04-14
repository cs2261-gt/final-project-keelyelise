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
} HUMAN;

//Variables
extern HUMAN human;

//Enums
enum {FORWARDH, BACKH, LEFTH, RIGHTH}; //direction
enum {IDLEH, WALKH}; //human anistate
enum {STANDH, KNEELH}; //human state

//Methods
void initHuman();
void updateHuman();
void drawHuman();