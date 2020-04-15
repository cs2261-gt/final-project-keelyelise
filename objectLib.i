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
enum {IDLE, WALK};
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
    int grabbed;
    int hoff;
    int spriteCol;
    int spriteRow;
    int shape;
    int size;
} OBJECT;





extern OBJECT objects[14];
extern int shadowCount;


enum {FERTILIZER, SPRINKLER, HAT, SUNHAT, CARROT, SANDWICH, THERMOS, APPLE, JAM, KEYS, FRONTGATE, BACKGATE, BREAD, PEN};


void initObjects();
void updateObjects();
void drawObjects();
void drawCollision(OBJECT* o);
void checkTasks();
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

int shadowCount;


void initObjects() {

    shadowCount = 14;


    objects[0].type = FERTILIZER;
    objects[0].width = 32;
    objects[0].height = 16;

    objects[0].worldRow = 170;
    objects[0].worldCol = 380;
    objects[0].permRow = 170;
    objects[0].permCol = 380;
    objects[0].level = 0;
    objects[0].shape = (1<<14);
    objects[0].size = (2<<14);
    objects[0].spriteCol = 24;
    objects[0].spriteRow = 0;


    objects[1].type = SPRINKLER;
    objects[1].width = 8;
    objects[1].height = 8;

    objects[1].worldRow = 130;
    objects[1].worldCol = 590;
    objects[1].permRow = 130;
    objects[1].permCol = 590;
    objects[1].level = 0;
    objects[1].shape = (0<<14);
    objects[1].size = (0<<14);
    objects[1].spriteCol = 28;
    objects[1].spriteRow = 1;


    objects[2].type = HAT;
    objects[2].width = 16;
    objects[2].height = 8;

    objects[2].worldRow = human.worldRow - 1;
    objects[2].worldCol = human.worldCol;
    objects[2].permRow = human.worldRow - 1;
    objects[2].permCol = human.worldCol;
    objects[2].level = 1;
    objects[2].shape = (1<<14);
    objects[2].size = (0<<14);
    objects[2].spriteCol = 28;
    objects[2].spriteRow = 0;


    objects[3].type = SUNHAT;
    objects[3].width = 16;
    objects[3].height = 8;

    objects[3].worldRow = 80;
    objects[3].worldCol = 880;
    objects[3].permRow = 80;
    objects[3].permCol = 880;
    objects[3].level = 1;
    objects[3].shape = (1<<14);
    objects[3].size = (0<<14);
    objects[3].spriteCol = 30;
    objects[3].spriteRow = 0;


    objects[4].type = CARROT;
    objects[4].width = 8;
    objects[4].height = 8;

    objects[4].worldRow = 120;
    objects[4].worldCol = 500;
    objects[4].permRow = 120;
    objects[4].permCol = 500;
    objects[4].level = 0;
    objects[4].shape = (0<<14);
    objects[4].size = (0<<14);
    objects[4].spriteCol = 29;
    objects[4].spriteRow = 1;


    objects[5].type = SANDWICH;
    objects[5].width = 8;
    objects[5].height = 8;

    objects[5].worldRow = 150;
    objects[5].worldCol = 215;
    objects[5].permRow = 150;
    objects[5].permCol = 215;
    objects[5].level = 1;
    objects[5].shape = (0<<14);
    objects[5].size = (0<<14);
    objects[5].spriteCol = 27;
    objects[5].spriteRow = 2;


    objects[6].type = THERMOS;
    objects[6].width = 8;
    objects[6].height = 16;

    objects[6].worldRow = 100;
    objects[6].worldCol = 880;
    objects[6].permRow = 100;
    objects[6].permCol = 880;
    objects[6].level = 1;
    objects[6].shape = (2<<14);
    objects[6].size = (0<<14);
    objects[6].spriteCol = 28;
    objects[6].spriteRow = 2;


    objects[7].type = APPLE;
    objects[7].width = 8;
    objects[7].height = 8;

    objects[7].worldRow = 170;
    objects[7].worldCol = 230;
    objects[7].permRow = 170;
    objects[7].permCol = 230;
    objects[7].level = 1;
    objects[7].shape = (0<<14);
    objects[7].size = (0<<14);
    objects[7].spriteCol = 27;
    objects[7].spriteRow = 3;


    objects[8].type = JAM;
    objects[8].width = 8;
    objects[8].height = 8;

    objects[8].worldRow = 120;
    objects[8].worldCol = 880;
    objects[8].permRow = 120;
    objects[8].permCol = 880;
    objects[8].level = 1;
    objects[8].shape = (0<<14);
    objects[8].size = (0<<14);
    objects[8].spriteCol = 29;
    objects[8].spriteRow = 2;


    objects[9].type = KEYS;
    objects[9].width = 8;
    objects[9].height = 8;

    objects[9].worldRow = human.worldRow + 40;
    objects[9].worldCol = human.worldCol + 19;
    objects[9].permRow = human.worldRow + 40;
    objects[9].permCol = human.worldCol + 19;
    objects[9].level = 1;
    objects[9].shape = (0<<14);
    objects[9].size = (0<<14);
    objects[9].spriteCol = 29;
    objects[9].spriteRow = 3;


    objects[10].type = FRONTGATE;
    objects[10].width = 8;
    objects[10].height = 32;

    objects[10].worldRow = 112;
    objects[10].worldCol = 416;
    objects[10].permRow = 112;
    objects[10].permCol = 416;
    objects[10].level = 0;
    objects[10].shape = (2<<14);
    objects[10].size = (1<<14);
    objects[10].spriteCol = 24;
    objects[10].spriteRow = 2;


    objects[11].type = BACKGATE;
    objects[11].width = 8;
    objects[11].height = 32;

    objects[11].worldRow = 0;
    objects[11].worldCol = 621;
    objects[11].permRow = 0;
    objects[11].permCol = 621;
    objects[11].level = 0;
    objects[11].shape = (2<<14);
    objects[11].size = (1<<14);
    objects[11].spriteCol = 24;
    objects[11].spriteRow = 2;


    objects[12].type = BREAD;
    objects[12].width = 16;
    objects[12].height = 8;

    objects[12].worldRow = 140;
    objects[12].worldCol = 880;
    objects[12].permRow = 140;
    objects[12].permCol = 880;
    objects[12].level = 1;
    objects[12].shape = (1<<14);
    objects[12].size = (0<<14);
    objects[12].spriteCol = 30;
    objects[12].spriteRow = 2;


    objects[13].type = PEN;
    objects[13].width = 8;
    objects[13].height = 8;

    objects[13].worldRow = 160;
    objects[13].worldCol = 880;
    objects[13].permRow = 160;
    objects[13].permCol = 880;
    objects[13].level = 1;
    objects[13].shape = (0<<14);
    objects[13].size = (0<<14);
    objects[13].spriteCol = 30;
    objects[13].spriteRow = 3;
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
    for (int i = 0; i < 14; i++) {

        if (objects[i].grabbed == 0) {
            int coll = collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 5), (goose.worldRow + goose.beakY), beakWidth + 5, beakHeight);
            if (coll) {
                drawCollision(&(objects[i]));
                if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<8)))) {
                    if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<9)))) && (objects[i].level == 0)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    } else if ((goose.state == STAND) && (objects[i].level == 1)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                }
            }
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - gooseHoff;
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

        if ((objects[i].type == PEN) && (objects[i].grabbed)) {
            tasks = -1;
        }
    }
}


void drawObjects() {
    for (int i = 0; i < 14; i++) {





        shadowOAM[i + 2].attr0 = (0xFF & objects[i].screenRow) | (0<<8) | (0<<13) | objects[i].shape;
        shadowOAM[i + 2].attr1 = (0x1FF & objects[i].screenCol) | objects[i].size;
        shadowOAM[i + 2].attr2 = ((0)<<12) | ((objects[i].spriteRow)*32+(objects[i].spriteCol));
    }
}

void drawCollision(OBJECT* o) {
    int row = (o -> worldRow) + ((o -> height) / 2 - 4);
    int col = (o -> worldCol) + ((o -> width) / 2 - 4);
    shadowOAM[shadowCount].attr0 = row | (0<<8) | (0<<13) | (0<<14);
    shadowOAM[shadowCount].attr1 = col | (0<<14);
    shadowOAM[shadowCount].attr2 = ((0)<<12) | ((3)*32+(31));
    shadowCount++;
}

void checkTasks() {

}
