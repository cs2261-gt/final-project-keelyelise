


#include "myLib.h"
#include "game.h"
#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "startScreen.h"
#include "goose.h"
#include "gardener.h"
#include "garden.h"
#include "pauseScreen.h"
#include "winScreen.h"
#include "instructionsScreen.h"
#include "sprites.h"
#include "TaskList.h"
#include "taskSprites.h"
#include "sound.h"
#include "menuSong.h"
#include "gardenSong.h"
#include "honk.h"
#include "buttons.h"

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
void drawTaskList();

//States
enum {START, INSTRUCTIONS, GAME, PAUSE, WIN, TASK};
int state;

//Buttons
unsigned short buttons;
unsigned short oldButtons;

//Offset
int voff;
int hoff;

//Variables for onscreen buttons
int buttonTimer;
int option;
int frame;


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
    buttonTimer = 0;
    option = 0;
    frame = 0;

    //Setup backgrounds
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_8BPP | BG_SIZE_WIDE;
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;

    //Add background palette to memory
    DMANow(3, startScreenPal, PALETTE, 256);
    
    //Add game sprite palette and tiles to memory
    DMANow(3, buttonsPal, SPRITEPALETTE, 256);
    DMANow(3, buttonsTiles, &CHARBLOCK[4], buttonsTilesLen / 2);

    //Setup sounds and interrupts
    setupSounds();
	setupInterrupts();

    goToStart();
}

void goToStart() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    
    //Add background palette to memory
    DMANow(3, startScreenPal, PALETTE, 256);

    //Add start screen tiles and map to memory
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], startScreenMapLen / 2);

    playSoundA(menuSong, MENUSONGLEN, 1);

    state = START;
}

void start() {
    hideSprites();
    if (option == 0) {
        shadowOAM[0].attr0 = 108 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[0].attr1 = 9 | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 26);
        shadowOAM[1].attr0 = 108 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[1].attr1 = 41 | ATTR1_MEDIUM;
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 26);
        shadowOAM[2].attr0 = 128 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[2].attr1 = 9 | ATTR1_MEDIUM;
        shadowOAM[2].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 28);
        shadowOAM[3].attr0 = 128 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[3].attr1 = 41 | ATTR1_MEDIUM;
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 28);
    } else {
        shadowOAM[0].attr0 = 108 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[0].attr1 = 9 | ATTR1_MEDIUM;
        shadowOAM[0].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 24);
        shadowOAM[1].attr0 = 108 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[1].attr1 = 41 | ATTR1_MEDIUM;
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 24);
        shadowOAM[2].attr0 = 128 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[2].attr1 = 9 | ATTR1_MEDIUM;
        shadowOAM[2].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 30);
        shadowOAM[3].attr0 = 128 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[3].attr1 = 41 | ATTR1_MEDIUM;
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 30);
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        if (option == 0) {
            initGame();

            stopSound();
            playSoundA(gardenSong, GARDENSONGLEN, 1);
            goToGame();
        } else {
            goToInstructions();
        }
    } 
    if (BUTTON_PRESSED(BUTTON_DOWN)) {
        option = 1;
    } else if (BUTTON_PRESSED(BUTTON_UP)) {
        option = 0;
    }
}

void goToInstructions() {
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    //Add instructions background tiles and map to memory
    DMANow(3, instructionsScreenTiles, &CHARBLOCK[0], instructionsScreenTilesLen / 2);
    DMANow(3, instructionsScreenMap, &SCREENBLOCK[28], instructionsScreenMapLen / 2);
    state = INSTRUCTIONS;
}

void instructions() {
    hideSprites();
    shadowOAM[0].attr0 = 0 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // back button
    shadowOAM[0].attr1 = 0 | ATTR1_MEDIUM;
    shadowOAM[0].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 0);
    shadowOAM[1].attr0 = 41 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // walking goose
    shadowOAM[1].attr1 = 32 | ATTR1_MEDIUM;
    shadowOAM[2].attr0 = 100 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // left
    shadowOAM[2].attr1 = 24 | ATTR1_SMALL;
    shadowOAM[3].attr0 = 100 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // right
    shadowOAM[3].attr1 = 56 | ATTR1_SMALL;
    shadowOAM[4].attr0 = 92 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // up
    shadowOAM[4].attr1 = 40 | ATTR1_SMALL;
    shadowOAM[5].attr0 = 108 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // down
    shadowOAM[5].attr1 = 40 | ATTR1_SMALL;
    if (buttonTimer >= 225) {
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID((frame * 4), 16);
        shadowOAM[2].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 0);
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 0);
        shadowOAM[4].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(8, 0);
        shadowOAM[5].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(10, 2);
    } else if (buttonTimer >= 150) {
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID((frame * 4), 12);
        shadowOAM[2].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 0);
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 0);
        shadowOAM[4].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(8, 2);
        shadowOAM[5].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(10, 0);
    } else if (buttonTimer >= 75) {
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID((frame * 4), 8);
        shadowOAM[2].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 0);
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 2);
        shadowOAM[4].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(8, 0);
        shadowOAM[5].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(10, 0);
    } else {
        shadowOAM[1].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID((frame * 4), 4);
        shadowOAM[2].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 2);
        shadowOAM[3].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(6, 0);
        shadowOAM[4].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(8, 0);
        shadowOAM[5].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(10, 0);
    }
    shadowOAM[6].attr0 = 41 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // ducking goose
    shadowOAM[6].attr1 = 104 | ATTR1_MEDIUM;
    shadowOAM[7].attr0 = 96 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // left shoulder
    shadowOAM[7].attr1 = 112 | ATTR1_SMALL;
    if (buttonTimer >= 225) {
        shadowOAM[6].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 20);
        shadowOAM[7].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(12, 0);
    } else if (buttonTimer >= 150) {
        shadowOAM[6].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 20);
        shadowOAM[7].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(12, 2);
    } else if (buttonTimer >= 75) {
        shadowOAM[6].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 20);
        shadowOAM[7].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(12, 0);
    } else {
        shadowOAM[6].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 20);
        shadowOAM[7].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(12, 2);
    }
    shadowOAM[8].attr0 = 41 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // grabbing goose
    shadowOAM[8].attr1 = 176 | ATTR1_MEDIUM;
    shadowOAM[9].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 16); // apple
    shadowOAM[10].attr0 = 96 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE; // right shoulder
    shadowOAM[10].attr1 = 184 | ATTR1_SMALL;
    if (buttonTimer >= 225) {
        shadowOAM[8].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 20);
        shadowOAM[9].attr0 = 55 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[9].attr1 = 172 | ATTR1_TINY;
        if (buttonTimer > 260) {
            shadowOAM[10].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 0);
        } else {
            shadowOAM[10].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 2);
        }
    } else if (buttonTimer >= 150) {
        shadowOAM[8].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 20);
        shadowOAM[9].attr0 = 45 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[9].attr1 = 180 | ATTR1_TINY;
        shadowOAM[10].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 0);
    } else if (buttonTimer >= 75) {
        shadowOAM[8].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(0, 20);
        shadowOAM[9].attr0 = 55 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[9].attr1 = 172 | ATTR1_TINY;
        if (buttonTimer > 110) {
            shadowOAM[10].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 2);
        } else {
            shadowOAM[10].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 0);
        }
    } else {
        shadowOAM[8].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(4, 20);
        shadowOAM[9].attr0 = 55 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_SQUARE;
        shadowOAM[9].attr1 = 172 | ATTR1_TINY;
        shadowOAM[10].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(14, 0);
    }
    shadowOAM[11].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // a part 1
    shadowOAM[11].attr1 = 8 | ATTR1_MEDIUM;
    shadowOAM[12].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // a part 2
    shadowOAM[12].attr1 = 40 | ATTR1_MEDIUM;
    shadowOAM[13].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // a part 3
    shadowOAM[13].attr1 = 72 | ATTR1_MEDIUM;
    shadowOAM[14].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // b part 1
    shadowOAM[14].attr1 = 104 | ATTR1_MEDIUM;
    shadowOAM[15].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // b part 2
    shadowOAM[15].attr1 = 136 | ATTR1_MEDIUM;
    shadowOAM[16].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // start part 1
    shadowOAM[16].attr1 = 168 | ATTR1_MEDIUM;
    shadowOAM[17].attr0 = 142 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE; // start part 2
    shadowOAM[17].attr1 = 200 | ATTR1_MEDIUM;
    if (buttonTimer >= 200) {
        shadowOAM[11].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 4);
        shadowOAM[12].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 4);
        shadowOAM[13].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(17, 4);
        shadowOAM[14].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 8);
        shadowOAM[15].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 8);
        shadowOAM[16].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 14);
        shadowOAM[17].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 14);
    } else if (buttonTimer >= 100) {
        shadowOAM[11].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 4);
        shadowOAM[12].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 4);
        shadowOAM[13].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(17, 4);
        shadowOAM[14].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 10);
        shadowOAM[15].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 10);
        shadowOAM[16].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 12);
        shadowOAM[17].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 12);
    } else {
        shadowOAM[11].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 6);
        shadowOAM[12].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 6);
        shadowOAM[13].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(17, 6);
        shadowOAM[14].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 8);
        shadowOAM[15].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 8);
        shadowOAM[16].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(9, 12);
        shadowOAM[17].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(13, 12);
    }

    buttonTimer = (buttonTimer + 1) % 300;
    if ((buttonTimer % 10) == 0) {
        frame = (frame + 1) % 2;
    }

    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToGame() {
    REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(sb) | BG_8BPP | BG_SIZE_WIDE;
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    
    //Add game background tiles and map to memory
    DMANow(3, gardenTiles, &CHARBLOCK[0], gardenTilesLen / 2);
    DMANow(3, gardenMap, &SCREENBLOCK[28], gardenMapLen / 2);

    //Add color palette back to memory
    DMANow(3, gardenPal, PALETTE, 256);

    //Add game sprite palette and tiles to memory
    DMANow(3, goosePal, SPRITEPALETTE, 256);
    DMANow(3, gooseTiles, &CHARBLOCK[4], gooseTilesLen / 2);

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
    if (BUTTON_PRESSED(BUTTON_A)) {
        goToTask();
    }
    if (tasks == 0) {
        goToWin();
    }
}

void goToPause() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_8BPP | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add pause tiles and map to meory
    DMANow(3, pauseScreenTiles, &CHARBLOCK[0], pauseScreenTilesLen / 2);
    DMANow(3, pauseScreenMap, &SCREENBLOCK[28], pauseScreenMapLen / 2);

    //Add color palette
    DMANow(3, pauseScreenPal, PALETTE, 256);

    //hideSprites();
    //DMANow(3, shadowOAM, OAM, 512);

    stopSound();
    playSoundA(menuSong, MENUSONGLEN, 1);

    state = PAUSE;
}

void pause() {
    if (BUTTON_PRESSED(BUTTON_START)) {
        stopSound();
        playSoundA(gardenSong, GARDENSONGLEN, 1);
        goToGame();
    }
}

void goToWin() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_8BPP | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;
    //Add win background tiles and map to memory
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[28], winScreenMapLen / 2);

    //Add color palette to memory
    DMANow(3, winScreenPal, PALETTE, 256);

    //Add game sprite palette and tiles to memory
    DMANow(3, buttonsPal, SPRITEPALETTE, 256);
    DMANow(3, buttonsTiles, &CHARBLOCK[4], buttonsTilesLen / 2);
    
    stopSound();
    playSoundA(menuSong, MENUSONGLEN, 1);

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    state = WIN;
}

void win() {
    shadowOAM[0].attr0 = 128 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
    shadowOAM[0].attr1 = 96 | ATTR1_LARGE;
    shadowOAM[0].attr2 = ATTR2_PALROW(2) | ATTR2_TILEID(8, 22);

    //Add shadowOAM to OAM
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_START)) {
        goToStart();
    }
}

void goToTask() {
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_DISPCTL = MODE0 | BG1_ENABLE | SPRITE_ENABLE;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);

    //Add task list tiles and map to memory
    DMANow(3, TaskListTiles, &CHARBLOCK[0], TaskListTilesLen / 2);
    DMANow(3, TaskListMap, &SCREENBLOCK[28], 512 * 2);

    //Add color palette to memory
    DMANow(3, TaskListPal, PALETTE, 256);

    //Add task list sprite palette and tiles to memory
    DMANow(3, taskSpritesPal, SPRITEPALETTE, 256);
    DMANow(3, taskSpritesTiles, &CHARBLOCK[4], taskSpritesTilesLen / 2);
    state = TASK;
}

void task() {
    drawTaskList();

    //Add shadowOAM to OAM
    waitForVBlank();
    DMANow(3, shadowOAM, OAM, 512);

    if (BUTTON_PRESSED(BUTTON_A)) {
        goToGame();
    }
}

void drawTaskList() {
    int count = 0;
    for (int i = 0; i < 6; i++) {
        for (int j = 0; j < 7; j++) {
            shadowOAM[count].attr0 = (30 + (i * 16)) | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
            shadowOAM[count].attr1 = (10 + (j * 32)) | ATTR1_MEDIUM;
            if ((4 - i) < tasks) {
                shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((j) * 4), (i * 2));
                if ((tasks == 1) && (i == 4)) {
                    shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((j) * 4), (i * 2 + 12));
                }
            } else {
                shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((j * 4), ((i * 2) + 12));
            }
            count++;
        }
    }
    if (tasks < 0) {
        shadowOAM[count].attr0 = 126 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[count].attr1 = 10 | ATTR1_LARGE;
        shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 24);
        count++;
        shadowOAM[count].attr0 = 126 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[count].attr1 = 74 | ATTR1_LARGE;
        shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 24);
    }
}