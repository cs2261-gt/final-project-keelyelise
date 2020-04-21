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


extern GOOSE goose;
extern int honkTimer;
extern int gateOpen;


enum {LEFT, RIGHT, BACK, FORWARD};
enum {IDLE, WALK};
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
# 4 "gooseLib.c" 2
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
# 1 "gardenCollision.h" 1
# 20 "gardenCollision.h"
extern const unsigned short gardenCollisionBitmap[262144];
# 7 "gooseLib.c" 2
# 1 "sound.h" 1
SOUND soundA;
SOUND soundB;



void setupSounds();
void playSoundA(const signed char* sound, int length, int loops);
void playSoundB(const signed char* sound, int length, int loops);

void setupInterrupts();
void interruptHandler();

void pauseSound();
void unpauseSound();
void stopSound();
# 8 "gooseLib.c" 2
# 1 "honk.h" 1




extern const signed char honk[3163];
# 9 "gooseLib.c" 2

int honkTimer;
int gateOpen;


void initGoose() {
    honkTimer = 0;

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
        && gardenCollisionBitmap[(((goose.worldRow - goose.rdel))*(1024)+(goose.worldCol))]
        && gardenCollisionBitmap[(((goose.worldRow - goose.rdel))*(1024)+((goose.worldCol + goose.width - 1)))]) {
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
        && gardenCollisionBitmap[(((goose.worldRow + goose.height - 1 + goose.rdel))*(1024)+(goose.worldCol))]
        && gardenCollisionBitmap[(((goose.worldRow + goose.height - 1 + goose.rdel))*(1024)+((goose.worldCol + goose.width - 1)))]) {
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
        && gardenCollisionBitmap[(((goose.worldRow))*(1024)+((goose.worldCol - goose.cdel)))]
        && gardenCollisionBitmap[(((goose.worldRow + goose.height - 1))*(1024)+((goose.worldCol - goose.cdel)))]) {
            goose.worldCol -= goose.cdel;
            goose.dir = LEFT;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 14;
                goose.beakX = -1;
            } else {
                goose.beakX = 8;
            }
            if ((hoff > 0)) {
                hoff--;
                gooseHoff--;
                overallHoff--;
            }
        }
    }
    if ((~((*(volatile unsigned short *)0x04000130)) & ((1<<4)))) {
        if ((goose.worldCol < (1024 - goose.width))
        && gardenCollisionBitmap[(((goose.worldRow))*(1024)+((goose.worldCol + goose.width - 1 + goose.cdel)))]
        && gardenCollisionBitmap[(((goose.worldRow + goose.height - 1))*(1024)+((goose.worldCol + goose.width - 1 + goose.cdel)))]) {
            if (tasks < 5 || goose.worldCol < 390) {
                if (gateOpen || !(tasks == 1 && goose.worldRow <= 4 && goose.worldCol == 589)) {
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
                } else if (tasks == 1 && goose.worldRow <= 4 && goose.worldCol == 589 && stolenObject.type == KEYS) {
                    gateOpen = 1;
                    tasks = 0;
                }
            }
        }
    }

    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1)))) && (honkTimer == 0)) {
        honkTimer++;
        playSoundB(honk, 3163, 0);
    } else if (honkTimer >= 30) {
        honkTimer = 0;
    } else if (honkTimer > 0) {
        honkTimer++;
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
            shadowOAM[goose.index].attr2 = (((4 * goose.dir))*32+((goose.state * 12))) | ((0)<<12);
        } else {
            shadowOAM[goose.index].attr2 = (((4 * goose.dir))*32+((4 + (goose.state * 12) + (goose.aninum * 4)))) | ((0)<<12);
        }
    } else {
        shadowOAM[goose.index].attr2 = (((16))*32+((goose.dir * 8 + 4))) | ((0)<<12);
    }
}
