# 1 "humanLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "humanLib.c"
# 1 "gooseLib.h" 1

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


extern GOOSE goose;
extern int honkTimer;
extern int gateOpen;


enum {LEFT, RIGHT, BACK, FORWARD};
enum {IDLE, WALK};
enum {DUCK, STAND, SWIM};


void initGoose();
void updateGoose();
void drawGoose();
# 2 "humanLib.c" 2
# 1 "objectLib.h" 1

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





extern OBJECT objects[14];
extern int shadowCount;
extern OBJECT stolenObject;
extern OBJECT empty;
extern int sprinklerOn;


enum {FERTILIZER, SPRINKLER, HAT, SUNHAT, CARROT, SANDWICH, THERMOS, APPLE, JAM, KEYS, FRONTGATE, BACKGATE, BREAD, PEN};


void initObjects();
void updateObjects();
void drawObjects();
void drawCollision(OBJECT* o);
void checkTasks();
# 3 "humanLib.c" 2
# 1 "humanLib.h" 1

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


extern HUMAN human;
extern int walkDir;
extern int hatTimer;


enum {FORWARDH, BACKH, LEFTH, RIGHTH};
enum {IDLEH, WALKH};
enum {STANDH, KNEELH};
enum {CHASE, RETURNOBJ, SWEAT, OPENFRONT, OPENBACK, CHEAT, SPRINKLEROFF, GARDENING};


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
# 4 "humanLib.c" 2
# 1 "game.h" 1





extern int tasks;
extern int cheat;
extern int voff;
extern int hoff;
extern int sb;
extern int anicounter;
extern int gooseHoff;
extern int overallHoff;



void initGame();
void updateGame();
void drawGame();
# 5 "humanLib.c" 2
# 1 "myLib.h" 1




typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
# 64 "myLib.h"
extern unsigned short *videoBuffer;
# 85 "myLib.h"
typedef struct {
 u16 tileimg[8192];
} charblock;


typedef struct {
 u16 tilemap[1024];
} screenblock;



void setPixel3(int col, int row, unsigned short color);
void drawRect3(int col, int row, int width, int height, volatile unsigned short color);
void fillScreen3(volatile unsigned short color);
void drawImage3(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage3(const unsigned short *image);


void setPixel4(int col, int row, unsigned char colorIndex);
void drawRect4(int col, int row, int width, int height, volatile unsigned char colorIndex);
void fillScreen4(volatile unsigned char colorIndex);
void drawImage4(int col, int row, int width, int height, const unsigned short *image);
void drawFullscreenImage4(const unsigned short *image);


void waitForVBlank();
void flipPage();





typedef struct {
    unsigned short attr0;
    unsigned short attr1;
    unsigned short attr2;
    unsigned short fill;
} OBJ_ATTR;



extern OBJ_ATTR shadowOAM[];
# 157 "myLib.h"
void hideSprites();






typedef struct {
    int screenRow;
    int screenCol;
    int worldRow;
    int worldCol;
    int rdel;
    int cdel;
    int width;
    int height;
    int aniCounter;
    int aniState;
    int prevAniState;
    int curFrame;
    int numFrames;
    int hide;
} ANISPRITE;
# 200 "myLib.h"
extern unsigned short oldButtons;
extern unsigned short buttons;
# 211 "myLib.h"
typedef volatile struct {
    volatile const void *src;
    volatile void *dst;
    volatile unsigned int cnt;
} DMA;


extern DMA *dma;
# 251 "myLib.h"
void DMANow(int channel, volatile const void *src, volatile void *dst, unsigned int cnt);
# 342 "myLib.h"
typedef struct{
    const unsigned char* data;
    int length;
    int frequency;
    int isPlaying;
    int loops;
    int duration;
    int priority;
    int vBlankCount;
} SOUND;




int collision(int colA, int rowA, int widthA, int heightA, int colB, int rowB, int widthB, int heightB);
# 6 "humanLib.c" 2
# 1 "tempCollision.h" 1
# 20 "tempCollision.h"
extern const unsigned short tempCollisionBitmap[262144];
# 7 "humanLib.c" 2

int walkDir;
int hatTimer;
int aniTimer;
int aninum;

void initHuman() {
    walkDir = -1;
    hatTimer = 0;
    aniTimer = 0;
    aninum = 0;

    human.worldRow = 40;
    human.worldCol = 300;
    human.bubbleDel = 40;
    human.bubbleWidth = 112;
    human.bubbleHeight = 144;
    human.state = STANDH;
    human.anistate = IDLEH;
    human.index = 1;
    human.dir = FORWARDH;
    human.anicounter = 0;
    human.workTimer = 0;
    human.aninum = 0;
    human.action = GARDENING;
}

void updateHuman() {
    if (human.action == GARDENING) {
        gardening();
    } else if (human.action == CHASE) {
        chase();
    } else if (human.action == RETURNOBJ) {
        returnObject();
    } else if (human.action == SWEAT) {
        sweat();
    } else if (human.action == OPENFRONT) {
        openFrontGate();
    } else if (human.action == OPENBACK) {
        openBackGate();
    } else if (human.action == SPRINKLEROFF) {
        turnSprinklerOff();
    } else if (human.action == CHEAT) {
        performCheat();
    }

    if (tasks == -1) {
        human.action == CHEAT;
    } else if (tasks == 3) {
        human.action = SWEAT;
    } else if ((tasks == 4) && sprinklerOn) {
        human.action == SPRINKLEROFF;
        turnSprinklerOff();
    }

    human.screenRow = human.worldRow - voff;
    human.screenCol = human.worldCol - gooseHoff;
}

void drawHuman() {
    aniTimer = (aniTimer + 1) % 20;
    if (aniTimer == 0) {
        aninum = (aninum + 1) % 2;
    }
    int humanSB = (human.worldCol / 256) + 28;
    if ((humanSB == sb) || (humanSB == (sb + 1))) {
        shadowOAM[human.index].attr0 = (0xFF & human.screenRow) | (0<<8) | (0<<13) | (2<<14);
    } else {
        shadowOAM[human.index].attr0 = (2<<8);
    }
    shadowOAM[human.index].attr1 = (0x1FF & human.screenCol) | (3<<14);
    if (human.dir == FORWARDH) {
        shadowOAM[human.index].attr2 = ((0)<<12) | ((16)*32+(((human.state * 8) + (4 * aninum))));
    } else if (human.dir == BACKH) {
        shadowOAM[human.index].attr2 = ((0)<<12) | ((16)*32+(((human.state * 8) + 16 + (4 * aninum))));
    } else if (human.dir == LEFTH) {
        shadowOAM[human.index].attr2 = ((0)<<12) | ((24)*32+(((human.state * 8) + (4 * aninum))));
    } else {
        shadowOAM[human.index].attr2 = ((0)<<12) | ((24)*32+(((human.state * 8) + 16 + (4 * aninum))));
    }
}

void chase() {
# 129 "humanLib.c"
}

void returnObject() {
# 155 "humanLib.c"
}

void sweat() {
# 185 "humanLib.c"
}

void openFrontGate() {
# 205 "humanLib.c"
}

void openBackGate() {

}

void turnSprinklerOff() {
# 245 "humanLib.c"
}

void gardening() {
    if (human.worldCol != 440) {
        if (440 > human.worldCol) {
            human.worldCol++;
        }
        if (440 < human.worldCol) {
            human.worldCol--;
        }
        if (100 > human.worldRow) {
            human.worldRow++;
        }
        if (100 < human.worldRow) {
            human.worldRow--;
        }
    }
# 286 "humanLib.c"
        if (human.workTimer == 0) {
            human.state = STANDH;
            human.worldRow += (walkDir);
            if (walkDir > 0) {
                human.dir = FORWARDH;
            } else {
                human.dir = BACKH;
            }
            if (human.worldRow == 6) {
                walkDir = 1;
                human.dir = BACKH;
                human.workTimer++;
            } else if (human.worldRow == 136) {
                walkDir = -1;
                human.dir = FORWARDH;
                human.workTimer++;
            }
        } else {
            human.state = KNEELH;
            human.workTimer++;
            if (human.workTimer >= 250) {
                human.workTimer = 0;
            }
        }

}

void performCheat() {

}
