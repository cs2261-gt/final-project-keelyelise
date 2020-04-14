# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
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
# 2 "main.c" 2
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
# 3 "main.c" 2
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
# 4 "main.c" 2
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
# 5 "main.c" 2
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
# 6 "main.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[2080];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 7 "main.c" 2
# 1 "goose.h" 1
# 21 "goose.h"
extern const unsigned short gooseTiles[16384];


extern const unsigned short goosePal[256];
# 8 "main.c" 2
# 1 "gardener.h" 1
# 21 "gardener.h"
extern const unsigned short gardenerTiles[16384];


extern const unsigned short gardenerPal[256];
# 9 "main.c" 2
# 1 "garden.h" 1
# 22 "garden.h"
extern const unsigned short gardenTiles[2736];


extern const unsigned short gardenMap[16384];


extern const unsigned short gardenPal[256];
# 10 "main.c" 2
# 1 "PauseScreen.h" 1
# 22 "PauseScreen.h"
extern const unsigned short PauseScreenTiles[1568];


extern const unsigned short PauseScreenMap[1024];


extern const unsigned short PauseScreenPal[256];
# 11 "main.c" 2
# 1 "WinScreen.h" 1
# 22 "WinScreen.h"
extern const unsigned short WinScreenTiles[784];


extern const unsigned short WinScreenMap[1024];


extern const unsigned short WinScreenPal[256];
# 12 "main.c" 2
# 1 "instructionsScreen.h" 1
# 22 "instructionsScreen.h"
extern const unsigned short instructionsScreenTiles[1072];


extern const unsigned short instructionsScreenMap[1024];


extern const unsigned short instructionsScreenPal[256];
# 13 "main.c" 2
# 1 "sprites.h" 1
# 22 "sprites.h"
extern const unsigned short spritesTiles[48];


extern const unsigned short spritesMap[1024];


extern const unsigned short spritesPal[256];
# 14 "main.c" 2
# 1 "TaskList.h" 1
# 22 "TaskList.h"
extern const unsigned short TaskListTiles[544];


extern const unsigned short TaskListMap[1024];


extern const unsigned short TaskListPal[256];
# 15 "main.c" 2
# 1 "temp.h" 1
# 22 "temp.h"
extern const unsigned short tempTiles[1920];


extern const unsigned short tempMap[4096];


extern const unsigned short tempPal[256];
# 16 "main.c" 2
# 1 "tempCollision.h" 1
# 20 "tempCollision.h"
extern const unsigned short tempCollisionBitmap[262144];
# 17 "main.c" 2


void initialize();
void goToStart();
void start();
void goToInstructions();
void instructions();
void goToGame();
void game();
void goToPause();
void pause();
void goToWin();
void win();
void goToTask();
void task();


enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, TASK};
int state;


unsigned short buttons;
unsigned short oldButtons;


int voff;
int hoff;


int main() {
    initialize();

    while(1) {

        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);


        switch(state) {
            case START:
                start();
                break;
            case INSTRUCTIONS:
                instructions();
                break;
            case GAME:
                game();
                break;
            case PAUSE:
                pause();
                break;
            case WIN:
                win();
                break;
            case TASK:
                task();
                break;
        }
    }
}


void initialize() {
    oldButtons = 0;
    buttons = (*(volatile unsigned short *)0x04000130);
    hoff = 0;
    voff = 0;


    DMANow(3, gardenPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (0<<7) | (0<<14);
    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((16)<<8) | (0<<7) | (1<<14);
    goToStart();
}

void goToStart() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, startScreenTiles, &((charblock *)0x6000000)[0], 4160 / 2);
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);
    state = START;
}

void start() {
    waitForVBlank();
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        initGame();
        goToInstructions();
    }
}

void goToInstructions() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, instructionsScreenTiles, &((charblock *)0x6000000)[0], 2144 / 2);
    DMANow(3, instructionsScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);
    state = INSTRUCTIONS;
}

void instructions() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }
}

void goToGame() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    DMANow(3, tempTiles, &((charblock *)0x6000000)[1], 3840 / 2);
    DMANow(3, tempMap, &((screenblock *)0x6000000)[16], 512 * 32);


    DMANow(3, goosePal, ((unsigned short *)0x5000200), 256);
    DMANow(3, gooseTiles, &((charblock *)0x6000000)[4], 32768 / 2);

    state = GAME;
}

void game() {
    updateGame();
    drawGame();


    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToPause();
    }
    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        goToTask();
    }
}

void goToPause() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, PauseScreenTiles, &((charblock *)0x6000000)[0], 3136 / 2);
    DMANow(3, PauseScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);


    state = PAUSE;
}

void pause() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToGame();
    }
    if ((!(~(oldButtons)&((1<<2))) && (~buttons & ((1<<2))))) {
        goToWin();
    }
}

void goToWin() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, WinScreenTiles, &((charblock *)0x6000000)[0], 1568 / 2);
    DMANow(3, WinScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);
    state = WIN;
}

void win() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToTask() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, TaskListTiles, &((charblock *)0x6000000)[0], 1088 / 2);
    DMANow(3, TaskListMap, &((screenblock *)0x6000000)[28], 512 * 2);
    state = TASK;
}

void task() {
    if ((!(~(oldButtons)&((1<<1))) && (~buttons & ((1<<1))))) {
        goToGame();
    }
}
