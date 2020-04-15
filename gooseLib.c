#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "tempCollision.h"


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

void updateGoose() {
    //Start each cycle as idle, changed if button is pressed
    goose.anistate = IDLE;

    //To bend down
    if (BUTTON_HELD(BUTTON_L)) {
        goose.state = DUCK;
    } /*else if (tempCollisionBitmap[OFFSET((goose.worldCol + goose.width - 5), (goose.worldRow + goose.height - 2), 512)] != (0x7FFF)
    && tempCollisionBitmap[OFFSET((goose.worldCol + goose.width - 5), (goose.worldRow + goose.height - 2), 512)] != (0x0000)) {
        goose.state = SWIM;
    } */else {
        goose.state = STAND;
        goose.beakY = 5;
    }

    //Arrow buttons and movement
    if (BUTTON_HELD(BUTTON_UP)) {
        if ((goose.worldRow > -4)
        && tempCollisionBitmap[OFFSET(goose.worldCol, (goose.worldRow - goose.rdel), WORLDWIDTH)] 
        && tempCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1), (goose.worldRow - goose.rdel), WORLDWIDTH)]) {
            goose.worldRow -= goose.rdel;
            goose.dir = BACK;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 10;
                goose.beakX = 12;
            } else {
                goose.beakX = 12;
            }
            if ((voff > 0) && (goose.screenRow < (SCREENHEIGHT / 2 - goose.height))) {
                voff--;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_DOWN)) {
        if ((goose.worldRow < (WORLDHEIGHT - goose.height))
        && tempCollisionBitmap[OFFSET(goose.worldCol, (goose.worldRow + goose.height - 1 + goose.rdel), WORLDWIDTH)] 
        && tempCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1), (goose.worldRow + goose.height - 1 + goose.rdel), WORLDWIDTH)]) {
            goose.worldRow += goose.rdel;
            goose.dir = FORWARD;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 17;
                goose.beakX = 9;
            } else {
                goose.beakX = 9;
            }
            if ((voff < (WORLDHEIGHT - SCREENHEIGHT)) && (goose.screenRow > (SCREENHEIGHT / 2 - goose.height))) {
                voff++;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_LEFT)) {
        if ((goose.worldCol > 1)
        && tempCollisionBitmap[OFFSET((goose.worldCol - goose.cdel), (goose.worldRow), WORLDWIDTH)] 
        && tempCollisionBitmap[OFFSET((goose.worldCol - goose.cdel), (goose.worldRow + goose.height - 1), WORLDWIDTH)]) {
            goose.worldCol -= goose.cdel;
            goose.dir = LEFT;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 14;
                goose.beakX = -1;
            } else {
                goose.beakX = 8;
            }
            if ((hoff > 0)) { // NEEDS TO BE ADJUSTED
                hoff--;
                gooseHoff--;
                overallHoff--;
            }
        }
    }
    if (BUTTON_HELD(BUTTON_RIGHT)) {
        if ((goose.worldCol < (WORLDWIDTH - goose.width))
        && tempCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1 + goose.cdel), (goose.worldRow), WORLDWIDTH)] 
        && tempCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1 + goose.cdel), (goose.worldRow + goose.height - 1), WORLDWIDTH)]) {
            if (tasks < 5 || goose.worldCol < 390) {
                goose.worldCol += goose.cdel;
                goose.dir = RIGHT;
                goose.anistate = WALK;
                if (goose.state == DUCK) {
                    goose.beakY = 14;
                    goose.beakX = 22;
                } else {
                    goose.beakX = 13;
                }
                if ((hoff < (WORLDWIDTH - SCREENWIDTH - 1)) && (overallHoff < (WORLDWIDTH - SCREENWIDTH - 1)) && (goose.screenCol > (SCREENWIDTH / 2))) {
                    hoff++;
                    gooseHoff++;
                    overallHoff++;
                }
            }
        }
    }

    //Reset goose position
    goose.screenRow = goose.worldRow - voff;
    goose.screenCol = goose.worldCol - gooseHoff;
}

void drawGoose() {
    shadowOAM[goose.index].attr0 = goose.screenRow | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    shadowOAM[goose.index].attr1 = goose.screenCol | ATTR1_MEDIUM;
    if (goose.state != SWIM) {
        //Changing animation state
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
            shadowOAM[goose.index].attr2 = ATTR2_TILEID((goose.state * 12), (4 * goose.dir)) | ATTR2_PALROW(0);
        } else {
            shadowOAM[goose.index].attr2 = ATTR2_TILEID((4 + (goose.state * 12) + (goose.aninum * 4)), (4 * goose.dir)) | ATTR2_PALROW(0);
        }
    } else {
        shadowOAM[goose.index].attr2 = ATTR2_TILEID((goose.dir * 8 + 4), (16)) | ATTR2_PALROW(0);
    }
}