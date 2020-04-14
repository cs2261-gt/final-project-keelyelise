# 1 "gooseLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "gooseLib.c"
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


enum {LEFT, RIGHT, BACK, FORWARD};
enum {HONK, IDLE, WALK};
enum {DUCK, STAND, SWIM};


void initGoose();
void updateGoose();
void drawGoose();
# 2 "gooseLib.c" 2
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
    int index;
    int grabbed;
    int hoff;
} OBJECT;


enum {BLOCK};


void initObjects();
void updateObjects();
void drawObjects();
# 3 "gooseLib.c" 2
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
} HUMAN;


enum {FORWARDH, BACKH, LEFTH, RIGHTH};
enum {IDLEH, WALKH};
enum {STANDH, KNEELH};


void initHuman();
void updateHuman();
void drawHuman();
# 4 "gooseLib.c" 2
# 1 "game.h" 1






extern GOOSE goose;
extern HUMAN human;
extern OBJECT objects[2];
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
# 5 "gooseLib.c" 2
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
# 6 "gooseLib.c" 2
# 1 "tempCollision.h" 1
# 20 "tempCollision.h"
extern const unsigned short tempCollisionBitmap[262144];
# 7 "gooseLib.c" 2


void initGoose() {
    goose.worldRow = 64;
    goose.worldCol = 104;
    goose.width = 32;
    goose.height = 32;
    goose.grabbing = 0;
    goose.state = STAND;
    goose.anistate = IDLE;
    goose.aninum = 0;
    goose.dir = RIGHT;
    goose.rdel = 1;
    goose.cdel = 1;
    goose.index = 0;
}

void updateGoose() {

    goose.anistate = IDLE;


    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<9)))) {
        goose.state = DUCK;
    }


        else {
        goose.state = STAND;
        goose.beakY = 5;
    }


    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if ((goose.worldRow > -4)
        && tempCollisionBitmap[(((goose.worldRow - goose.rdel))*(1024)+(goose.worldCol))]
        && tempCollisionBitmap[(((goose.worldRow - goose.rdel))*(1024)+((goose.worldCol + goose.width - 1)))]) {
            goose.worldRow -= goose.rdel;
            goose.dir = BACK;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 10;
                goose.beakX = 12;
            } else {
                goose.beakX = 12;
            }
            if ((voff > 0) && (goose.screenRow < (160 / 2 - goose.height))) {
                voff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<7)))) {
        if ((goose.worldRow < (256 - goose.height))
        && tempCollisionBitmap[(((goose.worldRow + goose.height - 1 + goose.rdel))*(1024)+(goose.worldCol))]
        && tempCollisionBitmap[(((goose.worldRow + goose.height - 1 + goose.rdel))*(1024)+((goose.worldCol + goose.width - 1)))]) {
            goose.worldRow += goose.rdel;
            goose.dir = FORWARD;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 17;
                goose.beakX = 9;
            } else {
                goose.beakX = 9;
            }
            if ((voff < (256 - 160)) && (goose.screenRow > (160 / 2 - goose.height))) {
                voff++;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<5)))) {
        if ((goose.worldCol > 1)
        && tempCollisionBitmap[(((goose.worldRow))*(1024)+((goose.worldCol - goose.cdel)))]
        && tempCollisionBitmap[(((goose.worldRow + goose.height - 1))*(1024)+((goose.worldCol - goose.cdel)))]) {
            goose.worldCol -= goose.cdel;
            goose.dir = LEFT;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 14;
                goose.beakX = -1;
            } else {
                goose.beakX = 8;
            }
            if ((hoff > 0) && (goose.screenCol < (240 / 2))) {
                hoff--;
                gooseHoff--;
                overallHoff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if ((goose.worldCol < (1024 - goose.width))
        && tempCollisionBitmap[(((goose.worldRow))*(1024)+((goose.worldCol + goose.width - 1 + goose.cdel)))]
        && tempCollisionBitmap[(((goose.worldRow + goose.height - 1))*(1024)+((goose.worldCol + goose.width - 1 + goose.cdel)))]) {
            goose.worldCol += goose.cdel;
            goose.dir = RIGHT;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 14;
                goose.beakX = 22;
            } else {
                goose.beakX = 13;
            }
            if ((hoff < (1024 - 240 - 1)) && (overallHoff < (1024 - 240 - 1)) && (goose.screenCol > (240 / 2))) {
                hoff++;
                gooseHoff++;
                overallHoff++;
            }
        }
    }


    goose.screenRow = goose.worldRow - voff;
    goose.screenCol = goose.worldCol - gooseHoff;
}

void drawGoose() {
    shadowOAM[goose.index].attr0 = goose.screenRow | (0<<8) | (0<<13) | (0<<14);
    shadowOAM[goose.index].attr1 = goose.screenCol | (2<<14);
    if (goose.state != SWIM) {

        if (goose.anistate == WALK) {
            anicounter++;
            if (anicounter > 6) {
                if (goose.aninum) {
                    goose.aninum = 0;
                } else {
                    goose.aninum = 1;
                }
                anicounter = 0;
            }
        }
        if (goose.anistate == IDLE) {
            shadowOAM[goose.index].attr2 = (((4 * goose.dir))*32+((4 + (goose.state * 16)))) | ((0)<<12);
        } else {
            shadowOAM[goose.index].attr2 = (((4 * goose.dir))*32+((8 + (goose.state * 16) + (goose.aninum * 4)))) | ((0)<<12);
        }
    } else {
        shadowOAM[goose.index].attr2 = (((16))*32+((goose.dir * 8 + 4))) | ((0)<<12);
    }
}
