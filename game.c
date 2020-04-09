#include "game.h"
#include "myLib.h"
#include "tempCollision.h"

//Variables
GOOSE goose;
HUMAN human;
OBJECT objects[OBJECTCOUNT];
int tasks;
int cheat;
int voff;
int hoff;
int sb;
int anicounter;
int gooseHoff;
int overallHoff;


//Methods
void initGame() {
    initGoose();
    // initHuman();
    initObjects();
    tasks = 5;
    cheat = 0;
    voff = 0;
    hoff = 0;
    sb = 16;
    anicounter = 0;
    gooseHoff = 0;
    overallHoff = 0;
}

void updateGame() {
    updateGoose();
    // updateHuman();
    updateObjects();
    //Logic for extra wide map
    if (hoff > 256 && sb < 18) {
        hoff -= 256;
        sb++;
        REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(sb) | BG_SIZE_WIDE | BG_4BPP;
    } else if (hoff < 0 && sb > 16) {
        hoff += 256;
        sb--;
        REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(sb) | BG_SIZE_WIDE | BG_4BPP;
    }
    if (gooseHoff > 512) {
        gooseHoff -= 512;
    } else if (gooseHoff < 0) {
        gooseHoff += 512;
    }
}

void drawGame() {
    drawGoose();
    // drawHuman();
    drawObjects();
    REG_BG0VOFF = voff;
    REG_BG0HOFF = hoff;
}

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

void initHuman() {

}

void initObjects() {
    for (int i = 0; i < OBJECTCOUNT; i++) {
        objects[i].type = BLOCK;
        objects[i].width = 8;
        objects[i].height = 8;
        objects[i].index = i + 1;
    }
    objects[0].worldRow = 70;
    objects[0].worldCol = 230;
    objects[0].permRow = 70;
    objects[0].permCol = 230;
    objects[0].level = 0; //Blue block is on the ground
    objects[1].worldRow = 140;
    objects[1].worldCol = 340;
    objects[1].permRow = 140;
    objects[1].permCol = 340;
    objects[1].level = 1; //White block is higher up
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
        goose.beakY = 7;
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
                goose.beakY = 13;
                goose.beakX = 15;
            } else {
                goose.beakX = 15;
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
                goose.beakY = 20;
                goose.beakX = 12;
            } else {
                goose.beakX = 10;
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
                goose.beakY = 17;
                goose.beakX = 0;
            } else {
                goose.beakX = 9;
            }
            if ((overallHoff > 1) && (goose.screenCol < (SCREENWIDTH / 2))) {
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
            goose.worldCol += goose.cdel;
            goose.dir = RIGHT;
            goose.anistate = WALK;
            if (goose.state == DUCK) {
                goose.beakY = 17;
                goose.beakX = 29;
            } else {
                goose.beakX = 20;
            }
            if ((hoff < (WORLDWIDTH - SCREENWIDTH - 1)) && (overallHoff < (WORLDWIDTH - SCREENWIDTH - 1)) && (goose.screenCol > (SCREENWIDTH / 2))) {
                hoff++;
                gooseHoff++;
                overallHoff++;
            }
        }
    }

    //Reset goose position
    goose.screenRow = goose.worldRow - voff;
    goose.screenCol = goose.worldCol - gooseHoff;
}

void updateHuman() {

}

void updateObjects() {
    int beakwidth = 3; //For checking collision
    int beakHeight = 2; // with the beak
    for (int i = 0; i < OBJECTCOUNT; i++) {
        //If the object is not currently grabbed
        if (objects[i].grabbed == 0) {
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - hoff;
            if (BUTTON_HELD(BUTTON_R)) {
                if ((goose.state == DUCK) && (objects[i].level == 0)) { //If the object is on the ground and the goose has ducked
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 2), (goose.worldRow + goose.beakY - 2), 7, 6)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                } else if ((goose.state == STAND) && (objects[i].level == 1)) { //If the object is higher up and the goose is standing
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 2), (goose.worldRow + goose.beakY - 2), 7, 6)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                }
            }
        } else { //If the object is currently grabbed
            if (BUTTON_HELD(BUTTON_R)) { //Drop the object
                objects[i].grabbed = 0;
                goose.grabbing = 0;
            } else { //Reposition the object based on the goose's beak to carry
                if (goose.dir == LEFT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width + 3);
                } else if (goose.dir == RIGHT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                } else {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width / 2);
                }
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - hoff;
            }
            
        }
    }
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
            shadowOAM[goose.index].attr2 = ATTR2_TILEID((4 + (goose.state * 16)), (4 * goose.dir)) | ATTR2_PALROW(0);
        } else {
            shadowOAM[goose.index].attr2 = ATTR2_TILEID((8 + (goose.state * 16) + (goose.aninum * 4)), (4 * goose.dir)) | ATTR2_PALROW(0);
        }
    } else {
        shadowOAM[goose.index].attr2 = ATTR2_TILEID((goose.dir * 8 + 4), (16)) | ATTR2_PALROW(0);
    }
}

void drawHuman() {

}

void drawObjects() {
    for (int i = 0; i < OBJECTCOUNT; i++) {
        shadowOAM[objects[i].index].attr0 = objects[i].screenRow | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        shadowOAM[objects[i].index].attr1 = objects[i].screenCol | ATTR1_TINY;
        shadowOAM[objects[i].index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i, 20);
    }
}