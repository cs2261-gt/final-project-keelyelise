/*

So far, the goose can pick up objects and move them around. I have begun implementing
human movement but have commented it out as it is not quite working properly. There are
quite a few bugs, and every time I fix something, a new one appears. Right now, I have
run into an issue where the objects won't move all the way to the left or top when the 
gooseis carrying them. Also, when one object is picked up, another one appears in its
place. This began happening when I tried to fix the objects jumping back to their original
locations when the goose placed them down. In addition, the objects are appearing in
multiple screenblocks when they should only be appearing in one. I am working on this
with Marie, but we haven't figured it out yet. Since the objects won't go into the top
left corner, the goose can't put the necessary objects onto the picnic blanket, but the
logic for this task exists. 

To play, the goose first needs to pick up the fertilizer bag (which, when the human is
working properly, will cause the human to see this happen and open the gate). After this,
the goose must pick up the sprinkler, which would turn it on. Then the goose must steal the
gardener's hat, making him wear his sun hat. Next, the goose should bring a carrot, apple,
sandwich, thermos, and jam to the picnic blanket. Lastly, the goose should steal the
gardener's keys and then leave out the back gate. When each task is completed, it is crossed
off on the task list.

I apologize for how buggy the game is. I promise that I have spent a lot of time on it this
week, but I just keep creating more bugs and messing up old progress I had made.

*/


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
    DMANow(3, startScreenPal, PALETTE, 256);

    //Initialize background
    REG_BG1CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(28) | BG_4BPP | BG_SIZE_SMALL;
    REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(16) | BG_8BPP | BG_SIZE_WIDE;

    //Setup sounds and interrupts
    setupSounds();
	setupInterrupts();

    goToStart();
}

void goToStart() {
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add start screen tiles and map to memory
    DMANow(3, startScreenTiles, &CHARBLOCK[0], startScreenTilesLen / 2);
    DMANow(3, startScreenMap, &SCREENBLOCK[28], 512 * 2);

    playSoundA(menuSong, MENUSONGLEN, 1);

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
        stopSound();
        playSoundA(gardenSong, GARDENSONGLEN, 1);
        goToGame();
    }
}

void goToGame() {
    REG_DISPCTL = MODE0 | BG0_ENABLE | SPRITE_ENABLE;

    hideSprites();
    DMANow(3, shadowOAM, OAM, 512);
    
    //Add game background tiles and map to memory
    DMANow(3, gardenTiles, &CHARBLOCK[1], gardenTilesLen / 2);
    DMANow(3, gardenMap, &SCREENBLOCK[16], 512 * 64);

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
    DMANow(3, pauseScreenMap, &SCREENBLOCK[28], 512 * 2);

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
    REG_DISPCTL = MODE0 | BG1_ENABLE;
    //Add win background tiles and map to memory
    DMANow(3, winScreenTiles, &CHARBLOCK[0], winScreenTilesLen / 2);
    DMANow(3, winScreenMap, &SCREENBLOCK[28], 512 * 2);

    //Add color palette to memory
    DMANow(3, winScreenPal, PALETTE, 256);

    state = WIN;
}

void win() {
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
    for (int i = 0; i < 5; i++) {
        for (int j = 0; j < 7; j++) {
            shadowOAM[count].attr0 = (30 + (i * 16)) | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
            shadowOAM[count].attr1 = (10 + (j * 32)) | ATTR1_MEDIUM;
            if ((4 - i) < tasks) {
                shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((j * 4), (i * 2));
            } else {
                shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((j * 4), ((i * 2) + 10));
            }
            count++;
        }
    }
    if (tasks < 0) {
        shadowOAM[count].attr0 = 110 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[count].attr1 = 10 | ATTR1_LARGE;
        shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(0, 20);
        count++;
        shadowOAM[count].attr0 = 110 | ATTR0_4BPP | ATTR0_REGULAR | ATTR0_WIDE;
        shadowOAM[count].attr1 = 74 | ATTR1_LARGE;
        shadowOAM[count].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(8, 20);
    }
}