# 1 "game.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "game.c"
# 1 "game.h" 1

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


typedef struct {
    int worldRow;
    int worldCol;
    int screenRow;
    int screenCol;
    int state;
    int anistate;
    int index;
} HUMAN;


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


enum {LEFT, RIGHT, BACK, FORWARD};
enum {HONK, IDLE, WALK};
enum {DUCK, STAND, SWIM};
enum {BLOCK};







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
void initGoose();
void initHuman();
void initObjects();
void updateGoose();
void updateHuman();
void updateObjects();
void drawGoose();
void drawHuman();
void drawObjects();
void animateGoose();
void animateHuman();
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


GOOSE goose;
HUMAN human;
OBJECT objects[2];
int tasks;
int cheat;
int voff;
int hoff;
int sb;
int anicounter;
int gooseHoff;
int overallHoff;



void initGame() {
    initGoose();

    initObjects();
    tasks = 5;
    cheat = 0;
    voff = 0;
    hoff = 0;
    sb = 16;
    anicounter = 0;
    gooseHoff = 0;
    overallHoff = 0;
}

void updateGame() {
    updateGoose();

    updateObjects();
    if (hoff > 256 && sb < 18) {
        hoff -= 256;
        sb++;
        (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((sb)<<8) | (1<<14) | (0<<7);
    } else if (hoff < 0 && sb > 16) {
        hoff += 256;
        sb--;
        (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((sb)<<8) | (1<<14) | (0<<7);
    }
    if (gooseHoff > 512) {
        gooseHoff -= 512;
    } else if (gooseHoff < 0) {
        gooseHoff += 512;
    }
}

void drawGame() {
    drawGoose();

    drawObjects();
    (*(volatile unsigned short *)0x04000012) = voff;
    (*(volatile unsigned short *)0x04000010) = hoff;
}

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

void initHuman() {

}

void initObjects() {
    for (int i = 0; i < 2; i++) {
        objects[i].type = BLOCK;
        objects[i].width = 8;
        objects[i].height = 8;
        objects[i].index = i + 1;
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

void updateGoose() {

    goose.anistate = IDLE;

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<9)))) {
        goose.state = DUCK;
    }


        else {
        goose.state = STAND;
        goose.beakY = 7;
    }

    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<6)))) {
        if ((goose.worldRow > -4)
        && tempCollisionBitmap[(((goose.worldRow - goose.rdel))*(1024)+(goose.worldCol))]
        && tempCollisionBitmap[(((goose.worldRow - goose.rdel))*(1024)+((goose.worldCol + goose.width - 1)))]) {
            goose.worldRow -= goose.rdel;
            goose.dir = BACK;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 13;
                goose.beakX = 15;
            } else {
                goose.beakX = 15;
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
                goose.beakY = 20;
                goose.beakX = 12;
            } else {
                goose.beakX = 10;
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
                goose.beakY = 17;
                goose.beakX = 0;
            } else {
                goose.beakX = 9;
            }
            if ((overallHoff > 1) && (goose.screenCol < (240 / 2))) {
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
                goose.beakY = 17;
                goose.beakX = 29;
            } else {
                goose.beakX = 20;
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

    animateGoose();
}

void updateHuman() {

}

void updateObjects() {
    int beakwidth = 3;
    int beakHeight = 2;
    for (int i = 0; i < 2; i++) {
        if (objects[i].grabbed == 0) {
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - hoff;
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
                if ((goose.state == DUCK) && (objects[i].level == 0)) {
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 2), (goose.worldRow + goose.beakY - 2), 7, 6)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                } else if ((goose.state == STAND) && (objects[i].level == 1)) {
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 2), (goose.worldRow + goose.beakY - 2), 7, 6)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                }
            }
        } else {
            if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
                objects[i].grabbed = 0;
                goose.grabbing = 0;
            } else {
                if (goose.dir == LEFT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width + 3);
                } else if (goose.dir == RIGHT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                } else {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width / 2);
                }
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - hoff;
            }

        }
    }
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

void drawHuman() {

}

void drawObjects() {
    for (int i = 0; i < 2; i++) {
        shadowOAM[objects[i].index].attr0 = objects[i].screenRow | (0<<8) | (0<<13) | (0<<14);
        shadowOAM[objects[i].index].attr1 = objects[i].screenCol | (0<<14);
        shadowOAM[objects[i].index].attr2 = ((0)<<12) | ((20)*32+(i));
    }
}

void animateGoose(){

}

void animateHuman() {

}
