# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 19 "main.c"
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
# 20 "main.c" 2
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
# 21 "main.c" 2
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
# 22 "main.c" 2
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
# 23 "main.c" 2
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
# 24 "main.c" 2
# 1 "startScreen.h" 1
# 22 "startScreen.h"
extern const unsigned short startScreenTiles[3024];


extern const unsigned short startScreenMap[1024];


extern const unsigned short startScreenPal[256];
# 25 "main.c" 2
# 1 "goose.h" 1
# 21 "goose.h"
extern const unsigned short gooseTiles[16384];


extern const unsigned short goosePal[256];
# 26 "main.c" 2
# 1 "gardener.h" 1
# 21 "gardener.h"
extern const unsigned short gardenerTiles[16384];


extern const unsigned short gardenerPal[256];
# 27 "main.c" 2
# 1 "garden.h" 1
# 22 "garden.h"
extern const unsigned short gardenTiles[20192];


extern const unsigned short gardenMap[4096];


extern const unsigned short gardenPal[256];
# 28 "main.c" 2
# 1 "pauseScreen.h" 1
# 22 "pauseScreen.h"
extern const unsigned short pauseScreenTiles[22816];


extern const unsigned short pauseScreenMap[2048];


extern const unsigned short pauseScreenPal[256];
# 29 "main.c" 2
# 1 "winScreen.h" 1
# 22 "winScreen.h"
extern const unsigned short winScreenTiles[18400];


extern const unsigned short winScreenMap[1024];


extern const unsigned short winScreenPal[256];
# 30 "main.c" 2
# 1 "instructionsScreen.h" 1
# 22 "instructionsScreen.h"
extern const unsigned short instructionsScreenTiles[944];


extern const unsigned short instructionsScreenMap[1024];


extern const unsigned short instructionsScreenPal[256];
# 31 "main.c" 2
# 1 "sprites.h" 1
# 22 "sprites.h"
extern const unsigned short spritesTiles[48];


extern const unsigned short spritesMap[1024];


extern const unsigned short spritesPal[256];
# 32 "main.c" 2
# 1 "TaskList.h" 1
# 22 "TaskList.h"
extern const unsigned short TaskListTiles[496];


extern const unsigned short TaskListMap[1024];


extern const unsigned short TaskListPal[256];
# 33 "main.c" 2
# 1 "taskSprites.h" 1
# 21 "taskSprites.h"
extern const unsigned short taskSpritesTiles[16384];


extern const unsigned short taskSpritesPal[256];
# 34 "main.c" 2
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
# 35 "main.c" 2
# 1 "menuSong.h" 1




extern const signed char menuSong[1805505];
# 36 "main.c" 2
# 1 "gardenSong.h" 1




extern const signed char gardenSong[1373015];
# 37 "main.c" 2
# 1 "honk.h" 1




extern const signed char honk[5742];
# 38 "main.c" 2
# 1 "buttons.h" 1
# 21 "buttons.h"
extern const unsigned short buttonsTiles[16384];


extern const unsigned short buttonsPal[256];
# 39 "main.c" 2


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


int buttonTimer;
int option;
int frame;


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
    buttonTimer = 0;
    option = 0;
    frame = 0;


    (*(volatile unsigned short*)0x4000008) = ((0)<<2) | ((28)<<8) | (1<<7) | (1<<14);
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (0<<7) | (0<<14);


    DMANow(3, startScreenPal, ((unsigned short *)0x5000000), 256);


    setupSounds();
 setupInterrupts();

    goToStart();
}

void goToStart() {
    (*(volatile unsigned short*)0x400000A) = ((0)<<2) | ((28)<<8) | (0<<7) | (0<<14);
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);


    DMANow(3, startScreenPal, ((unsigned short *)0x5000000), 256);


    DMANow(3, startScreenTiles, &((charblock *)0x6000000)[0], 6048 / 2);
    DMANow(3, startScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);


    DMANow(3, buttonsPal, ((unsigned short *)0x5000200), 256);
    DMANow(3, buttonsTiles, &((charblock *)0x6000000)[4], 32768 / 2);

    playSoundA(menuSong, 1805505, 1);

    state = START;
}

void start() {
    hideSprites();
    if (option == 0) {
        shadowOAM[0].attr0 = 108 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[0].attr1 = 9 | (2<<14);
        shadowOAM[0].attr2 = ((2)<<12) | ((26)*32+(0));
        shadowOAM[1].attr0 = 108 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[1].attr1 = 41 | (2<<14);
        shadowOAM[1].attr2 = ((2)<<12) | ((26)*32+(4));
        shadowOAM[2].attr0 = 128 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[2].attr1 = 9 | (2<<14);
        shadowOAM[2].attr2 = ((2)<<12) | ((28)*32+(0));
        shadowOAM[3].attr0 = 128 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[3].attr1 = 41 | (2<<14);
        shadowOAM[3].attr2 = ((2)<<12) | ((28)*32+(4));
    } else {
        shadowOAM[0].attr0 = 108 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[0].attr1 = 9 | (2<<14);
        shadowOAM[0].attr2 = ((2)<<12) | ((24)*32+(0));
        shadowOAM[1].attr0 = 108 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[1].attr1 = 41 | (2<<14);
        shadowOAM[1].attr2 = ((2)<<12) | ((24)*32+(4));
        shadowOAM[2].attr0 = 128 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[2].attr1 = 9 | (2<<14);
        shadowOAM[2].attr2 = ((2)<<12) | ((30)*32+(0));
        shadowOAM[3].attr0 = 128 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[3].attr1 = 41 | (2<<14);
        shadowOAM[3].attr2 = ((2)<<12) | ((30)*32+(4));
    }

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        if (option == 0) {
            initGame();
            stopSound();
            playSoundA(gardenSong, 1373015, 1);
            goToGame();
        } else {
            goToInstructions();
        }
    }
    if ((!(~(oldButtons)&((1<<7))) && (~buttons & ((1<<7))))) {
        option = 1;
    } else if ((!(~(oldButtons)&((1<<6))) && (~buttons & ((1<<6))))) {
        option = 0;
    }
}

void goToInstructions() {
    (*(unsigned short *)0x4000000) = 0 | (1<<9) | (1<<12);

    DMANow(3, instructionsScreenTiles, &((charblock *)0x6000000)[0], 1888 / 2);
    DMANow(3, instructionsScreenMap, &((screenblock *)0x6000000)[28], 512 * 2);
    state = INSTRUCTIONS;
}

void instructions() {
    hideSprites();
    shadowOAM[0].attr0 = 0 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[0].attr1 = 0 | (2<<14);
    shadowOAM[0].attr2 = ((2)<<12) | ((0)*32+(0));
    shadowOAM[1].attr0 = 41 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[1].attr1 = 32 | (2<<14);
    shadowOAM[2].attr0 = 100 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[2].attr1 = 24 | (1<<14);
    shadowOAM[3].attr0 = 100 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[3].attr1 = 56 | (1<<14);
    shadowOAM[4].attr0 = 92 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[4].attr1 = 40 | (1<<14);
    shadowOAM[5].attr0 = 108 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[5].attr1 = 40 | (1<<14);
    if (buttonTimer >= 225) {
        shadowOAM[1].attr2 = ((2)<<12) | ((16)*32+((frame * 4)));
        shadowOAM[2].attr2 = ((2)<<12) | ((0)*32+(4));
        shadowOAM[3].attr2 = ((2)<<12) | ((0)*32+(6));
        shadowOAM[4].attr2 = ((2)<<12) | ((0)*32+(8));
        shadowOAM[5].attr2 = ((2)<<12) | ((2)*32+(10));
    } else if (buttonTimer >= 150) {
        shadowOAM[1].attr2 = ((2)<<12) | ((12)*32+((frame * 4)));
        shadowOAM[2].attr2 = ((2)<<12) | ((0)*32+(4));
        shadowOAM[3].attr2 = ((2)<<12) | ((0)*32+(6));
        shadowOAM[4].attr2 = ((2)<<12) | ((2)*32+(8));
        shadowOAM[5].attr2 = ((2)<<12) | ((0)*32+(10));
    } else if (buttonTimer >= 75) {
        shadowOAM[1].attr2 = ((2)<<12) | ((8)*32+((frame * 4)));
        shadowOAM[2].attr2 = ((2)<<12) | ((0)*32+(4));
        shadowOAM[3].attr2 = ((2)<<12) | ((2)*32+(6));
        shadowOAM[4].attr2 = ((2)<<12) | ((0)*32+(8));
        shadowOAM[5].attr2 = ((2)<<12) | ((0)*32+(10));
    } else {
        shadowOAM[1].attr2 = ((2)<<12) | ((4)*32+((frame * 4)));
        shadowOAM[2].attr2 = ((2)<<12) | ((2)*32+(4));
        shadowOAM[3].attr2 = ((2)<<12) | ((0)*32+(6));
        shadowOAM[4].attr2 = ((2)<<12) | ((0)*32+(8));
        shadowOAM[5].attr2 = ((2)<<12) | ((0)*32+(10));
    }
    shadowOAM[6].attr0 = 41 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[6].attr1 = 104 | (2<<14);
    shadowOAM[7].attr0 = 96 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[7].attr1 = 112 | (1<<14);
    if (buttonTimer >= 225) {
        shadowOAM[6].attr2 = ((2)<<12) | ((20)*32+(4));
        shadowOAM[7].attr2 = ((2)<<12) | ((0)*32+(12));
    } else if (buttonTimer >= 150) {
        shadowOAM[6].attr2 = ((2)<<12) | ((20)*32+(0));
        shadowOAM[7].attr2 = ((2)<<12) | ((0)*32+(12));
    } else if (buttonTimer >= 75) {
        shadowOAM[6].attr2 = ((2)<<12) | ((20)*32+(4));
        shadowOAM[7].attr2 = ((2)<<12) | ((0)*32+(12));
    } else {
        shadowOAM[6].attr2 = ((2)<<12) | ((20)*32+(0));
        shadowOAM[7].attr2 = ((2)<<12) | ((2)*32+(12));
    }
    shadowOAM[8].attr0 = 41 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[8].attr1 = 176 | (2<<14);
    shadowOAM[9].attr2 = ((2)<<12) | ((16)*32+(9));
    shadowOAM[10].attr0 = 96 | (0<<13) | (0<<8) | (0<<14);
    shadowOAM[10].attr1 = 184 | (1<<14);
    if (buttonTimer >= 225) {
        shadowOAM[8].attr2 = ((2)<<12) | ((20)*32+(0));
        shadowOAM[9].attr0 = 55 | (0<<13) | (0<<8) | (0<<14);
        shadowOAM[9].attr1 = 172 | (0<<14);
        if (buttonTimer > 260) {
            shadowOAM[10].attr2 = ((2)<<12) | ((0)*32+(14));
        } else {
            shadowOAM[10].attr2 = ((2)<<12) | ((2)*32+(14));
        }
    } else if (buttonTimer >= 150) {
        shadowOAM[8].attr2 = ((2)<<12) | ((20)*32+(4));
        shadowOAM[9].attr0 = 45 | (0<<13) | (0<<8) | (0<<14);
        shadowOAM[9].attr1 = 180 | (0<<14);
        shadowOAM[10].attr2 = ((2)<<12) | ((0)*32+(14));
    } else if (buttonTimer >= 75) {
        shadowOAM[8].attr2 = ((2)<<12) | ((20)*32+(0));
        shadowOAM[9].attr0 = 55 | (0<<13) | (0<<8) | (0<<14);
        shadowOAM[9].attr1 = 172 | (0<<14);
        if (buttonTimer > 110) {
            shadowOAM[10].attr2 = ((2)<<12) | ((2)*32+(14));
        } else {
            shadowOAM[10].attr2 = ((2)<<12) | ((0)*32+(14));
        }
    } else {
        shadowOAM[8].attr2 = ((2)<<12) | ((20)*32+(4));
        shadowOAM[9].attr0 = 55 | (0<<13) | (0<<8) | (0<<14);
        shadowOAM[9].attr1 = 172 | (0<<14);
        shadowOAM[10].attr2 = ((2)<<12) | ((0)*32+(14));
    }
    shadowOAM[11].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[11].attr1 = 8 | (2<<14);
    shadowOAM[12].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[12].attr1 = 40 | (2<<14);
    shadowOAM[13].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[13].attr1 = 72 | (2<<14);
    shadowOAM[14].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[14].attr1 = 104 | (2<<14);
    shadowOAM[15].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[15].attr1 = 136 | (2<<14);
    shadowOAM[16].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[16].attr1 = 168 | (2<<14);
    shadowOAM[17].attr0 = 142 | (0<<13) | (0<<8) | (1<<14);
    shadowOAM[17].attr1 = 200 | (2<<14);
    if (buttonTimer >= 200) {
        shadowOAM[11].attr2 = ((2)<<12) | ((4)*32+(9));
        shadowOAM[12].attr2 = ((2)<<12) | ((4)*32+(13));
        shadowOAM[13].attr2 = ((2)<<12) | ((4)*32+(17));
        shadowOAM[14].attr2 = ((2)<<12) | ((8)*32+(9));
        shadowOAM[15].attr2 = ((2)<<12) | ((8)*32+(13));
        shadowOAM[16].attr2 = ((2)<<12) | ((14)*32+(9));
        shadowOAM[17].attr2 = ((2)<<12) | ((14)*32+(13));
    } else if (buttonTimer >= 100) {
        shadowOAM[11].attr2 = ((2)<<12) | ((4)*32+(9));
        shadowOAM[12].attr2 = ((2)<<12) | ((4)*32+(13));
        shadowOAM[13].attr2 = ((2)<<12) | ((4)*32+(17));
        shadowOAM[14].attr2 = ((2)<<12) | ((10)*32+(9));
        shadowOAM[15].attr2 = ((2)<<12) | ((10)*32+(13));
        shadowOAM[16].attr2 = ((2)<<12) | ((12)*32+(9));
        shadowOAM[17].attr2 = ((2)<<12) | ((12)*32+(13));
    } else {
        shadowOAM[11].attr2 = ((2)<<12) | ((6)*32+(9));
        shadowOAM[12].attr2 = ((2)<<12) | ((6)*32+(13));
        shadowOAM[13].attr2 = ((2)<<12) | ((6)*32+(17));
        shadowOAM[14].attr2 = ((2)<<12) | ((8)*32+(9));
        shadowOAM[15].attr2 = ((2)<<12) | ((8)*32+(13));
        shadowOAM[16].attr2 = ((2)<<12) | ((12)*32+(9));
        shadowOAM[17].attr2 = ((2)<<12) | ((12)*32+(13));
    }

    buttonTimer = (buttonTimer + 1) % 300;
    if ((buttonTimer % 10) == 0) {
        frame = (frame + 1) % 2;
    }

    waitForVBlank();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);

    if ((!(~(oldButtons)&((1<<3))) && (~buttons & ((1<<3))))) {
        goToStart();
    }
}

void goToGame() {
    (*(unsigned short *)0x4000000) = 0 | (1<<8) | (1<<12);

    hideSprites();
    DMANow(3, shadowOAM, ((OBJ_ATTR*)(0x7000000)), 512);


    DMANow(3, gardenTiles, &((charblock *)0x6000000)[0], 40384 / 2);
    DMANow(3, gardenMap, &((screenblock *)0x6000000)[28], 512 * 32);


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

    stopSound();
    playSoundA(menuSong, 1805505, 1);

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


    DMANow(3, TaskListTiles, &((charblock *)0x6000000)[0], 992 / 2);
    DMANow(3, TaskListMap, &((screenblock *)0x6000000)[28], 512 * 2);


    DMANow(3, TaskListPal, ((unsigned short *)0x5000000), 256);


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
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 7; j++) {
            shadowOAM[count].attr0 = (30 + (i * 16)) | (0<<13) | (0<<8) | (1<<14);
            shadowOAM[count].attr1 = (10 + (j * 32)) | (2<<14);
            if ((4 - i) < tasks) {
                shadowOAM[count].attr2 = ((0)<<12) | (((i * 2))*32+(((j) * 4)));
                if ((tasks == 1) && (i == 4)) {
                    shadowOAM[count].attr2 = ((0)<<12) | (((i * 2 + 12))*32+(((j) * 4)));
                }
            } else {
                shadowOAM[count].attr2 = ((0)<<12) | ((((i * 2) + 12))*32+((j * 4)));
            }
            count++;
        }
    }
    if (tasks < 0) {
        shadowOAM[count].attr0 = 126 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[count].attr1 = 10 | (3<<14);
        shadowOAM[count].attr2 = ((0)<<12) | ((24)*32+(0));
        count++;
        shadowOAM[count].attr0 = 126 | (0<<13) | (0<<8) | (1<<14);
        shadowOAM[count].attr1 = 74 | (3<<14);
        shadowOAM[count].attr2 = ((0)<<12) | ((24)*32+(8));
    }
}
