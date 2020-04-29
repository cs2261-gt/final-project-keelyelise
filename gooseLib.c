#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "gardenCollision.h"
#include "sound.h"
#include "honk.h"

int honkTimer;
int gateOpen;


void initGoose() {
    honkTimer = 0;
    gateOpen = 0;

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
        if ((goose.worldRow > 0)
        && gardenCollisionBitmap[OFFSET((goose.worldCol + 7), (goose.worldRow - goose.rdel + 15), WORLDWIDTH)] 
        && gardenCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1 - 7), (goose.worldRow - goose.rdel + 15), WORLDWIDTH)]
        && gardenCollisionBitmap[OFFSET((goose.worldCol + 16), (goose.worldRow - goose.rdel + 15), WORLDWIDTH)]
        && !collision(goose.worldCol, goose.worldRow - 1, 32, 32, human.worldCol + 7, human.worldRow, 15, 64)) {
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
    } else if (BUTTON_HELD(BUTTON_DOWN)) {
        if ((goose.worldRow < (WORLDHEIGHT - goose.height))
        && gardenCollisionBitmap[OFFSET((goose.worldCol + 7), (goose.worldRow + goose.height - 1 + goose.rdel), WORLDWIDTH)]
        && gardenCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1 - 7), (goose.worldRow + goose.height - 1 + goose.rdel), WORLDWIDTH)]
        && gardenCollisionBitmap[OFFSET((goose.worldCol + 16), (goose.worldRow + goose.height - 1 + goose.rdel), WORLDWIDTH)]
        && !collision(goose.worldCol, goose.worldRow + 1, 32, 32, human.worldCol + 6, human.worldRow, 16, 64)) {
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
    } else if (BUTTON_HELD(BUTTON_LEFT)) {
        if ((goose.worldCol > 1)
        && gardenCollisionBitmap[OFFSET((goose.worldCol - goose.cdel + 9), (goose.worldRow + 15), WORLDWIDTH)] 
        && gardenCollisionBitmap[OFFSET((goose.worldCol - goose.cdel + 9), (goose.worldRow + goose.height - 1), WORLDWIDTH)]
        && !collision(goose.worldCol - 1, goose.worldRow, 32, 32, human.worldCol + 6, human.worldRow, 16, 64)) {
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
    } else if (BUTTON_HELD(BUTTON_RIGHT)) {
        if ((goose.worldCol < (WORLDWIDTH - goose.width))
        && gardenCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1 + goose.cdel - 9), (goose.worldRow + 15), WORLDWIDTH)] 
        && gardenCollisionBitmap[OFFSET((goose.worldCol + goose.width - 1 + goose.cdel - 9), (goose.worldRow + goose.height - 1), WORLDWIDTH)]
        && !collision(goose.worldCol + 1, goose.worldRow, 32, 32, human.worldCol + 6, human.worldRow, 16, 64)) {
            if (tasks < 5 || goose.worldCol < 390) {
                if ((tasks == 1) && (goose.worldRow <= 8) && (goose.worldCol >= 640) && ((stolenObject -> type) == KEYS) && (goose.grabbing)) {
                    gateOpen = 1;
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
                    if (goose.worldCol > 675) {
                        tasks = 0;
                    }
                } else if ((tasks == -1) && (goose.worldRow <= 8) && (goose.worldCol >= 640) && ((stolenObject -> type) == BREAD) && (goose.grabbing)) {
                    gateOpen = 1;
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
                    if (goose.worldCol > 675) {
                        tasks = 0;
                    }
                } else if ((goose.worldCol < 640) || (goose.worldRow > 7) || gateOpen) {
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
    }

    if (BUTTON_PRESSED(BUTTON_B) && (honkTimer == 0)) {
        honkTimer++;
        playSoundB(honk, HONKLEN - 20, 0);
    } else if (honkTimer >= 30) {
        honkTimer = 0;
    } else if (honkTimer > 0) {
        honkTimer++;
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
            if (anicounter > 3) {
                goose.aninum = (goose.aninum + 1) % 4;
                anicounter = 0;
            }
        }
        if (goose.anistate == IDLE) {
            shadowOAM[goose.index].attr2 = ATTR2_TILEID((goose.state * 12), (4 * goose.dir)) | ATTR2_PALROW(0);
        } else {
            if ((goose.aninum == 1) || (goose.aninum == 3)) {
                shadowOAM[goose.index].attr2 = ATTR2_TILEID((goose.state * 12), (4 * goose.dir)) | ATTR2_PALROW(0);
            } else if (goose.aninum == 0) {
                shadowOAM[goose.index].attr2 = ATTR2_TILEID((4 + (goose.state * 12)), (4 * goose.dir)) | ATTR2_PALROW(0);
            } else { 
                shadowOAM[goose.index].attr2 = ATTR2_TILEID((8 + (goose.state * 12)), (4 * goose.dir)) | ATTR2_PALROW(0);
            }
        }
    } else {
        shadowOAM[goose.index].attr2 = ATTR2_TILEID((goose.dir * 8 + 4), (16)) | ATTR2_PALROW(0);
    }
}