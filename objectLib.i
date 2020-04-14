# 1 "objectLib.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "objectLib.c"
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


enum {LEFT, RIGHT, BACK, FORWARD};
enum {HONK, IDLE, WALK};
enum {DUCK, STAND, SWIM};


void initGoose();
void updateGoose();
void drawGoose();
# 2 "objectLib.c" 2
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





extern OBJECT objects[2];


enum {BLOCK};


void initObjects();
void updateObjects();
void drawObjects();
# 3 "objectLib.c" 2
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


extern HUMAN human;


enum {FORWARDH, BACKH, LEFTH, RIGHTH};
enum {IDLEH, WALKH};
enum {STANDH, KNEELH};


void initHuman();
void updateHuman();
void drawHuman();
# 4 "objectLib.c" 2
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
# 5 "objectLib.c" 2
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
# 6 "objectLib.c" 2
# 1 "tempCollision.h" 1
# 20 "tempCollision.h"
extern const unsigned short tempCollisionBitmap[262144];
# 7 "objectLib.c" 2


void initObjects() {
    for (int i = 0; i < 2; i++) {
        objects[i].type = BLOCK;
        objects[i].width = 8;
        objects[i].height = 8;
        objects[i].index = i + 2;
    }
    objects[0].worldRow = 70;
    objects[0].worldCol = 230;
    objects[0].permRow = 70;
    objects[0].permCol = 230;
    objects[0].level = 0;
    objects[1].worldRow = 140;
    objects[1].worldCol = 340;
    objects[1].permRow = 140;
    objects[1].permCol = 340;
    objects[1].level = 1;
}

void updateObjects() {
    int beakWidth;
    int beakHeight;
    if (goose.dir == BACK) {
        beakWidth = 8;
        beakHeight = 6;
    } else {
        beakWidth = 11;
        beakHeight = 7;
    }
    for (int i = 0; i < 2; i++) {

        if (objects[i].grabbed == 0) {
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - hoff;
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
                if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<9)))) && (objects[i].level == 0)) {
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 5), (goose.worldRow + goose.beakY), beakWidth + 5, beakHeight)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                } else if ((goose.state == STAND) && (objects[i].level == 1)) {
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX), (goose.worldRow + goose.beakY), beakWidth, beakHeight)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                }
            }
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - hoff;
        } else {
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
                objects[i].grabbed = 0;
                goose.grabbing = 0;
            } else {
                objects[i].hoff = gooseHoff;
                if (goose.dir == LEFT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width + 3);
                } else if (goose.dir == RIGHT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                } else {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width / 2);
                }
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
            }

        }
    }
}


void drawObjects() {
    for (int i = 0; i < 2; i++) {
        if ((overallHoff > objects[i].hoff) && (overallHoff > hoff) && (objects[i].grabbed == 0)) {
            shadowOAM[objects[i].index].attr0 =(2<<8);
        } else {
            shadowOAM[objects[i].index].attr0 = objects[i].screenRow | (0<<8) | (0<<13) | (0<<14);
        }
        shadowOAM[objects[i].index].attr1 = objects[i].screenCol | (0<<14);
        shadowOAM[objects[i].index].attr2 = ((0)<<12) | ((20)*32+(i));
    }
}
