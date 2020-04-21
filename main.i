# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 29 "main.c"
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
# 30 "main.c" 2
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
# 31 "main.c" 2
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
# 32 "main.c" 2
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
# 33 "main.c" 2
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
# 34 "main.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[2080];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 35 "main.c" 2
# 1 "goose.h" 1
# 21 "goose.h"
extern const unsigned short gooseTiles[16384];


extern const unsigned short goosePal[256];
# 36 "main.c" 2
# 1 "gardener.h" 1
# 21 "gardener.h"
extern const unsigned short gardenerTiles[16384];


extern const unsigned short gardenerPal[256];
# 37 "main.c" 2
# 1 "garden.h" 1
# 22 "garden.h"
extern const unsigned short gardenTiles[21984];


extern const unsigned short gardenMap[4096];


extern const unsigned short gardenPal[256];
# 38 "main.c" 2
# 1 "pauseScreen.h" 1
# 22 "pauseScreen.h"
extern const unsigned short pauseScreenTiles[22816];


extern const unsigned short pauseScreenMap[2048];


extern const unsigned short pauseScreenPal[256];
# 39 "main.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[18400];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 40 "main.c" 2
# 1 "instructionsScreen.h" 1
# 22 "instructionsScreen.h"
extern const unsigned short instructionsScreenTiles[1072];


extern const unsigned short instructionsScreenMap[1024];


extern const unsigned short instructionsScreenPal[256];
# 41 "main.c" 2
# 1 "sprites.h" 1
# 22 "sprites.h"
extern const unsigned short spritesTiles[48];


extern const unsigned short spritesMap[1024];


extern const unsigned short spritesPal[256];
# 42 "main.c" 2
# 1 "TaskList.h" 1
# 22 "TaskList.h"
extern const unsigned short TaskListTiles[544];


extern const unsigned short TaskListMap[1024];


extern const unsigned short TaskListPal[256];
# 43 "main.c" 2
# 1 "taskSprites.h" 1
# 21 "taskSprites.h"
extern const unsigned short taskSpritesTiles[16384];


extern const unsigned short taskSpritesPal[256];
# 44 "main.c" 2
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
# 45 "main.c" 2
# 1 "menuSong.h" 1




extern const signed char menuSong[1805505];
# 46 "main.c" 2
# 1 "gardenSong.h" 1




extern const signed char gardenSong[1373015];
# 47 "main.c" 2
# 1 "honk.h" 1




extern const signed char honk[5742];
# 48 "main.c" 2


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
void drawTaskList();


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


    DMANow(3, startScreenPal, ((unsigned short *)0x5000000), 256);


    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (0<<7) | (0<<14);
    (*(volatile unsigned short*)0x4000008) = ((1)<<2) | ((16)<<8) | (1<<7) | (1<<14);


    setupSounds();
 setupInterrupts();

    goToStart();
}

void goToStart() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, startScreenTiles, &((charblock *)0x6000000)[0], 4160 / 2);
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);

    playSoundA(menuSong, 1805505, 1);

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
        stopSound();
        playSoundA(gardenSong, 1373015, 1);
        goToGame();
    }
}

void goToGame() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    DMANow(3, gardenTiles, &((charblock *)0x6000000)[1], 43968 / 2);
    DMANow(3, gardenMap, &((screenblock *)0x6000000)[16], 512 * 64);


    DMANow(3, gardenPal, ((unsigned short *)0x5000000), 256);


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
    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        goToTask();
    }
    if (tasks == 0) {
        goToWin();
    }
}

void goToPause() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (1<<7) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, pauseScreenTiles, &((charblock *)0x6000000)[0], 45632 / 2);
    DMANow(3, pauseScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);


    DMANow(3, pauseScreenPal, ((unsigned short *)0x5000000), 256);




    stopSound();
    playSoundA(menuSong, 1805505, 1);

    state = PAUSE;
}

void pause() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        stopSound();
        playSoundA(gardenSong, 1373015, 1);
        goToGame();
    }
}

void goToWin() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (1<<7) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9);

    DMANow(3, winScreenTiles, &((charblock *)0x6000000)[0], 36800 / 2);
    DMANow(3, winScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);


    DMANow(3, winScreenPal, ((unsigned short *)0x5000000), 256);

    state = WIN;
}

void win() {
    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToTask() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (0<<7) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    DMANow(3, TaskListTiles, &((charblock *)0x6000000)[0], 1088 / 2);
    DMANow(3, TaskListMap, &((screenblock *)0x6000000)[28], 512 * 2);

    DMANow(3, taskSpritesPal, ((unsigned short *)0x5000200), 256);
    DMANow(3, taskSpritesTiles, &((charblock *)0x6000000)[4], 32768 / 2);
    state = TASK;
}

void task() {
    drawTaskList();


    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if ((!(~(oldButtons)&((1<<0))) && (~buttons & ((1<<0))))) {
        goToGame();
    }
}

void drawTaskList() {
    int count = 0;
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 7; j++) {
            shadowOAM[count].attr0 = (30 + (i * 16)) | (0<<13) | (0<<8) | (1<<14);
            shadowOAM[count].attr1 = (10 + (j * 32)) | (2<<14);
            if ((4 - i) < tasks) {
                shadowOAM[count].attr2 = ((0)<<12) | (((i * 2))*32+((j * 4)));
            } else {
                shadowOAM[count].attr2 = ((0)<<12) | ((((i * 2) + 10))*32+((j * 4)));
            }
            count++;
        }
    }
    if (tasks < 0) {
        shadowOAM[count].attr0 = 110 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[count].attr1 = 10 | (3<<14);
        shadowOAM[count].attr2 = ((0)<<12) | ((20)*32+(0));
        count++;
        shadowOAM[count].attr0 = 110 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[count].attr1 = 74 | (3<<14);
        shadowOAM[count].attr2 = ((0)<<12) | ((20)*32+(8));
    }
}
