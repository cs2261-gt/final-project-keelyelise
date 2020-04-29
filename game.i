# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
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
# 2 "game.c" 2
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
# 3 "game.c" 2
# 1 "tempCollision.h" 1
# 20 "tempCollision.h"
extern const unsigned short tempCollisionBitmap[262144];
# 4 "game.c" 2
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
# 5 "game.c" 2
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
# 6 "game.c" 2
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
# 7 "game.c" 2


GOOSE goose;
HUMAN human;
OBJECT objects[14];
int tasks;
int cheat;
int voff;
int hoff;
int sb;
int anicounter;
int gooseHoff;
int overallHoff;
OBJECT stolenObject;
OBJECT empty;



void initGame() {
    initGoose();
    initHuman();
    initObjects();
    tasks = 5;
    cheat = 0;
    voff = 0;
    hoff = 0;
    sb = 28;
    anicounter = 0;
    gooseHoff = 0;
    overallHoff = 0;
}

void updateGame() {
    shadowCount = 14;
    updateGoose();
    updateHuman();
    updateObjects();

    if (hoff > 256 && sb < 30) {
        hoff -= 256;
        sb += 1;
        (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((sb)<<8) | (1<<14) | (1<<7);
    } else if (hoff <= 0 && sb > 28) {
        hoff += 256;
        sb -= 1;
        (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((sb)<<8) | (1<<14) | (1<<7);
    }
    if (gooseHoff > 512) {
        gooseHoff -= 512;
    } else if (gooseHoff < 0) {
        gooseHoff += 512;
    }
}

void drawGame() {
    drawGoose();
    drawHuman();
    drawObjects();
    (*(volatile unsigned short *)0x04000012) = voff;
    (*(volatile unsigned short *)0x04000010) = hoff;
}
