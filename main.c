#include "myLib.h"
#include "game.h"
#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "startScreen.h"
#include "goose.h"
#include "gardener.h"
#include "garden.h"
#include "PauseScreen.h"
#include "WinScreen.h"
#include "instructionsScreen.h"
#include "sprites.h"
#include "TaskList.h"
#include "temp.h" //remove later
#include "tempCollision.h" //remove later

//Prototypes
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

//States
enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, TASK};
int state;

//Buttons
unsigned short buttons;
unsigned short oldButtons;

//Offset
int voff;
int hoff;


int main() {
    initialize();
    
    while(1) {
        //Reset buttons
        oldButtons = buttons;
        buttons = BUTTONS;

        //State machine
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

//Initialize the game
void initialize() {
    oldButtons = 0;
    buttons = BUTTONS;
    hoff = 0;
    voff = 0;

    //Add background palette to memory
    DMANow(3, gardenPal, PALETTE, 256);

    //Initialize background
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(16) | BG_4BPP | BG_SIZE_WIDE;
    goToStart();
}

void goToStart() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add start screen tiles and map to memory
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], 512 * 2);
    state = START;
}

void start() {
    waitForVBlank();
    if (BUTTON_PRESSED(BUTTON_START)) {
        initGame();
        goToInstructions();
    }
}

void goToInstructions() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add instructions background tiles and map to memory
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[0], instructionsScreenTilesLen / 2);
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[28], 512 * 2);
    state = INSTRUCTIONS;
}

void instructions() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
}

void goToGame() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;
    //Add game background tiles and map to memory
    DMANow(3, tempTiles, &CHARBLOCK[1], tempTilesLen / 2);
    DMANow(3, tempMap, &SCREENBLOCK[16], 512 * 32);

    //Add game sprite palette and tiles to memory
    DMANow(3, goosePal, SPRITEPALETTE, 256);
    DMANow(3, gooseTiles, &CHARBLOCK[4], gooseTilesLen / 2);
    //DMANow(3, gardenerTiles, &CHARBLOCK[5], gardenerTilesLen / 2);
    state = GAME;
}

void game() {
    updateGame();
    drawGame();

    //Add shadowOAM to OAM
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToPause();
    }
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToTask();
    }
}

void goToPause() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add pause tiles and map to meory
    DMANow(3, PauseScreenTiles, &CHARBLOCK[0], PauseScreenTilesLen / 2);
    DMANow(3, PauseScreenMap, &SCREENBLOCK[28], 512 * 2);
    //hideSprites();
    //DMANow(3, shadowOAM, OAM, 512);
    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToGame();
    }
    if (BUTTON_PRESSED(BUTTON_SELECT)) {
        goToWin();
    }
}

void goToWin() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add win background tiles and map to memory
    DMANow(3, WinScreenTiles, &CHARBLOCK[0], WinScreenTilesLen / 2);
    DMANow(3, WinScreenMap, &SCREENBLOCK[28], 512 * 2);
    state = WIN;
}

void win() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToTask() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add task list tiles and map to memory
    DMANow(3, TaskListTiles, &CHARBLOCK[0], TaskListTilesLen / 2);
    DMANow(3, TaskListMap, &SCREENBLOCK[28], 512 * 2);
    state = TASK;
}

void task() {
    if (BUTTON_PRESSED(BUTTON_B)) {
        goToGame();
    }
}