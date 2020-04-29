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
extern int honkTimer;
extern int gateOpen;


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
extern OBJECT * stolenObject;
extern int sprinklerOn;
extern int sprinklerTimer;
extern int hatIndex;
extern int keyIndex;


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
    int anicounter;
    int workTimer;
    int aninum;
    int action;
    int grabbing;
} HUMAN;


extern HUMAN human;
extern int walkDir;
extern int hatTimer;
extern int aniTimer;
extern int aninum;
extern int stepTimer;
extern int savedDir;


enum {FORWARDH, BACKH, LEFTH, RIGHTH};
enum {IDLEH, WALKH};
enum {STANDH, KNEELH};
enum {CHASE, RETURNOBJ, OPENFRONT, OPENBACK, CHEAT, GARDENING, REPLACE};


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
# 1 "gardenCollision.h" 1
# 20 "gardenCollision.h"
extern const unsigned short gardenCollisionBitmap[262144];
# 7 "objectLib.c" 2
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
# 8 "objectLib.c" 2
# 1 "writing.h" 1




extern const signed char writing[28400];
# 9 "objectLib.c" 2

int shadowCount;
int sprinklerOn;
int sprinklerTimer;
int hatIndex;
int keyIndex;


void initObjects() {


    sprinklerOn = 0;
    sprinklerTimer = 0;
    hatIndex = 2;
    keyIndex = 9;


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
    objects[1].worldCol = 560;
    objects[1].permRow = 130;
    objects[1].permCol = 560;
    objects[1].level = 0;
    objects[1].shape = (0<<14);
    objects[1].size = (0<<14);
    objects[1].spriteCol = 28;
    objects[1].spriteRow = 1;


    objects[2].type = HAT;
    objects[2].width = 16;
    objects[2].height = 8;

    objects[2].worldRow = human.worldRow - 1;
    objects[2].worldCol = human.worldCol + 8;
    objects[2].permRow = human.worldRow - 1;
    objects[2].permCol = human.worldCol - 8;
    objects[2].level = 1;
    objects[2].shape = (1<<14);
    objects[2].size = (0<<14);
    objects[2].spriteCol = 28;
    objects[2].spriteRow = 0;


    objects[3].type = SUNHAT;
    objects[3].width = 16;
    objects[3].height = 8;

    objects[3].worldRow = 196;
    objects[3].worldCol = 918;
    objects[3].permRow = 196;
    objects[3].permCol = 918;
    objects[3].level = 1;
    objects[3].shape = (1<<14);
    objects[3].size = (0<<14);
    objects[3].spriteCol = 30;
    objects[3].spriteRow = 0;


    objects[4].type = CARROT;
    objects[4].width = 8;
    objects[4].height = 8;

    objects[4].worldRow = 58;
    objects[4].worldCol = 430;
    objects[4].permRow = 58;
    objects[4].permCol = 430;
    objects[4].level = 0;
    objects[4].shape = (1<<14);
    objects[4].size = (0<<14);
    objects[4].spriteCol = 30;
    objects[4].spriteRow = 1;


    objects[5].type = SANDWICH;
    objects[5].width = 8;
    objects[5].height = 8;

    objects[5].worldRow = 125;
    objects[5].worldCol = 219;
    objects[5].permRow = 125;
    objects[5].permCol = 219;
    objects[5].level = 1;
    objects[5].shape = (0<<14);
    objects[5].size = (0<<14);
    objects[5].spriteCol = 31;
    objects[5].spriteRow = 3;


    objects[6].type = THERMOS;
    objects[6].width = 8;
    objects[6].height = 16;

    objects[6].worldRow = 128;
    objects[6].worldCol = 894;
    objects[6].permRow = 128;
    objects[6].permCol = 894;
    objects[6].level = 1;
    objects[6].shape = (2<<14);
    objects[6].size = (0<<14);
    objects[6].spriteCol = 28;
    objects[6].spriteRow = 2;


    objects[7].type = APPLE;
    objects[7].width = 8;
    objects[7].height = 8;

    objects[7].worldRow = 130;
    objects[7].worldCol = 230;
    objects[7].permRow = 130;
    objects[7].permCol = 230;
    objects[7].level = 1;
    objects[7].shape = (0<<14);
    objects[7].size = (0<<14);
    objects[7].spriteCol = 29;
    objects[7].spriteRow = 1;


    objects[8].type = JAM;
    objects[8].width = 8;
    objects[8].height = 8;

    objects[8].worldRow = 152;
    objects[8].worldCol = 894;
    objects[8].permRow = 152;
    objects[8].permCol = 894;
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

    objects[10].worldRow = 98;
    objects[10].worldCol = 411;
    objects[10].permRow = 98;
    objects[10].permCol = 411;
    objects[10].level = 0;
    objects[10].shape = (2<<14);
    objects[10].size = (3<<14);
    objects[10].spriteCol = 24;
    objects[10].spriteRow = 2;


    objects[11].type = BACKGATE;
    objects[11].width = 8;
    objects[11].height = 32;

    objects[11].worldRow = 0;
    objects[11].worldCol = 670;
    objects[11].permRow = -8;
    objects[11].permCol = 670;
    objects[11].level = -8;
    objects[11].shape = (2<<14);
    objects[11].size = (3<<14);
    objects[11].spriteCol = 24;
    objects[11].spriteRow = 3;


    objects[12].type = BREAD;
    objects[12].width = 16;
    objects[12].height = 8;

    objects[12].worldRow = 162;
    objects[12].worldCol = 894;
    objects[12].permRow = 162;
    objects[12].permCol = 894;
    objects[12].level = 1;
    objects[12].shape = (1<<14);
    objects[12].size = (0<<14);
    objects[12].spriteCol = 30;
    objects[12].spriteRow = 2;


    objects[13].type = PEN;
    objects[13].width = 8;
    objects[13].height = 8;

    objects[13].worldRow = 240;
    objects[13].worldCol = 910;
    objects[13].permRow = 240;
    objects[13].permCol = 910;
    objects[13].level = 0;
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

        if ((objects[i].grabbed == 0)) {
            int coll = collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 5), (goose.worldRow + goose.beakY), beakWidth + 5, beakHeight);
            if (coll && (objects[i].type != FRONTGATE) && (objects[i].type != BACKGATE)) {
                drawCollision(&(objects[i]));
                if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8)))) && !goose.grabbing) {
                    if (((~((*(volatile unsigned short *)0x04000130)) & ((1<<9)))) && (objects[i].level == 0)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                        stolenObject = &(objects[i]);
                    } else if ((goose.state == STAND) && (objects[i].level == 1)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                        stolenObject = &(objects[i]);
                    }
                }
            }
            if (i == hatIndex) {
                if (human.state == KNEELH) {
                    objects[i].worldRow = human.worldRow + 10;
                    objects[i].level = 0;
                } else {
                    objects[i].worldRow = human.worldRow - 2;
                    objects[i].level = 2;
                }
                objects[i].worldCol = human.worldCol + 8;
                if (objects[i].grabbed) {
                    hatIndex = 50;
                }
            } else if (i == keyIndex) {
                if (human.state == KNEELH) {
                    objects[i].worldRow = human.worldRow + 58;
                    objects[i].level = 0;
                } else {
                    objects[i].worldRow = human.worldRow + 45;
                    objects[i].level = 1;
                }
                objects[i].worldCol = human.worldCol + 19;
                if (objects[i].grabbed) {
                    keyIndex = 51;
                }
            }
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - gooseHoff;
        } else {
            if ((!(~(oldButtons)&((1<<8))) && (~buttons & ((1<<8)))) && goose.grabbing) {
                objects[i].grabbed = 0;
                goose.grabbing = 0;
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].worldCol = goose.worldCol + goose.beakX;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
                if (!gardenCollisionBitmap[((objects[i].worldRow)*(1024)+(objects[i].worldCol))] ||
                        !gardenCollisionBitmap[(((objects[i].worldRow + objects[i].height))*(1024)+(objects[i].worldCol))] ||
                        !gardenCollisionBitmap[((objects[i].worldRow)*(1024)+((objects[i].worldCol + objects[i].width)))] ||
                        !gardenCollisionBitmap[(((objects[i].worldRow + objects[i].height))*(1024)+((objects[i].worldCol + objects[i].width)))]) {
                    objects[i].level = 1;
                } else {
                    objects[i].level = 0;
                }
            } else if (goose.grabbing) {
                objects[i].hoff = gooseHoff;
                if (goose.dir == LEFT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                } else if (goose.dir == RIGHT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                } else {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                }
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
            } else if (human.grabbing) {
                objects[i].hoff = gooseHoff;







                objects[i].worldCol = human.worldCol + 4;
                objects[i].worldRow = human.worldRow + 28;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;

            } else if (human.grabbing == 0) {
                objects[i].grabbed = 0;
                objects[i].worldRow = human.worldRow;
                objects[i].worldCol = human.worldCol;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
                if (!gardenCollisionBitmap[((objects[i].worldRow)*(1024)+(objects[i].worldCol))] ||
                        !gardenCollisionBitmap[(((objects[i].worldRow + objects[i].height))*(1024)+(objects[i].worldCol))] ||
                        !gardenCollisionBitmap[((objects[i].worldRow)*(1024)+((objects[i].worldCol + objects[i].width)))] ||
                        !gardenCollisionBitmap[(((objects[i].worldRow + objects[i].height))*(1024)+((objects[i].worldCol + objects[i].width)))]) {
                    objects[i].level = 1;
                } else {
                    objects[i].level = 0;
                }
            }

        }

        if ((objects[i].type == PEN) && (objects[i].grabbed)) {
            if (tasks >= 0) {
                playSoundB(writing, 28400, 0);
            }
            tasks = -1;
        } else if (tasks == 4 && (objects[i].type == SPRINKLER) && (objects[i].grabbed)) {
            sprinklerOn = 1;
        } else if (tasks == 5 && human.grabbing) {
            tasks = 4;
        }
    }
    int picnicCol = 38;
    int picnicRow = 16;
    int picnicWidth = 86;
    int picnicHeight = 74;
    if ((tasks == 2)) {
        if (collision(objects[4].worldCol, objects[4].worldRow, objects[4].width, objects[4].height, picnicCol, picnicRow, picnicWidth, picnicHeight)) {
            if (collision(objects[5].worldCol, objects[5].worldRow, objects[5].width, objects[5].height, picnicCol, picnicRow, picnicWidth, picnicHeight)) {
                if (collision(objects[6].worldCol, objects[6].worldRow, objects[6].width, objects[6].height, picnicCol, picnicRow, picnicWidth, picnicHeight)) {
                    if (collision(objects[7].worldCol, objects[7].worldRow, objects[7].width, objects[7].height, picnicCol, picnicRow, picnicWidth, picnicHeight)) {
                        if (collision(objects[8].worldCol, objects[8].worldRow, objects[8].width, objects[8].height, picnicCol, picnicRow, picnicWidth, picnicHeight)) {
                            tasks = 1;
                        }
                    }
                }
            }
        }
    }
}


void drawObjects() {
    for (int i = 0; i < 14; i++) {
        int objSB = (objects[i].worldCol / 256) + 28;
        if ((objSB == sb) || (objSB == (sb + 1))) {
            if (gateOpen && (objects[i].type == BACKGATE)) {
                shadowOAM[i + 2].attr0 = (2<<8);
            } else {
                shadowOAM[i + 2].attr0 = (0xFF & objects[i].screenRow) | (0<<8) | (0<<13) | objects[i].shape;
            }
        } else {
            shadowOAM[i + 2].attr0 = (2<<8);
        }
        shadowOAM[i + 2].attr1 = (0x1FF & objects[i].screenCol) | objects[i].size;
        shadowOAM[i + 2].attr2 = ((0)<<12) | ((objects[i].spriteRow)*32+(objects[i].spriteCol));
    }
    int objSB = (objects[1].worldCol / 256) + 28;
    if (sprinklerOn && ((objSB == sb) || (objSB == (sb + 1)))) {
        sprinklerTimer++;
        int sprinklerAniNum = sprinklerTimer % 12;
        int sprinklerWorldRow = objects[1].worldRow - 12;
        int sprinklerWorldCol = objects[1].worldCol - 12;
        int sprinklerScreenRow = sprinklerWorldRow - voff;
        int sprinklerScreenCol = sprinklerWorldCol - gooseHoff;
        if ((tasks == 4) && collision(sprinklerWorldCol, sprinklerWorldRow, 32, 32, human.worldCol, human.worldRow, 32, 64)) {
            tasks = 3;
        }
        shadowOAM[14 + 2].attr0 = (0xFF & sprinklerScreenRow) | (0<<8) | (0<<14) | (0<<13);
        shadowOAM[14 + 2].attr1 = (0x1FF & sprinklerScreenCol) | (2<<14);
        if (sprinklerAniNum < 6) {
            shadowOAM[14 + 2].attr2 = ((1)<<12) | ((12)*32+(24));
        } else {
            shadowOAM[14 + 2].attr2 = ((1)<<12) | ((12)*32+(28));
        }
    } else {
        shadowOAM[14 + 2].attr0 = (2<<8);
    }
}

void drawCollision(OBJECT* o) {






}
