#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "tempCollision.h"
#include "sound.h"
#include "writing.h"

int shadowCount;
int sprinklerOn;


void initObjects() {

    // shadowCount = 14;
    // sprinklerOn = 0;

    //Fertilizer
    objects[0].type = FERTILIZER;
    objects[0].width = 32;
    objects[0].height = 16;
    //objects[0].index = 2;
    objects[0].worldRow = 170;
    objects[0].worldCol = 380;
    objects[0].permRow = 170;
    objects[0].permCol = 380;
    objects[0].level = 0;
    objects[0].shape = ATTR0_WIDE;
    objects[0].size = ATTR1_MEDIUM;
    objects[0].spriteCol = 24;
    objects[0].spriteRow = 0;

    //Sprinkler
    objects[1].type = SPRINKLER;
    objects[1].width = 8;
    objects[1].height = 8;
    //objects[1].index = 3;
    objects[1].worldRow = 130;
    objects[1].worldCol = 560;
    objects[1].permRow = 130;
    objects[1].permCol = 590;
    objects[1].level = 0;
    objects[1].shape = ATTR0_SQUARE;
    objects[1].size = ATTR1_TINY;
    objects[1].spriteCol = 28;
    objects[1].spriteRow = 1;

    //Hat
    objects[2].type = HAT;
    objects[2].width = 16;
    objects[2].height = 8;
    //objects[2].index = 4;
    objects[2].worldRow = human.worldRow - 1;
    // objects[2].worldCol = human.worldCol + 8;
    objects[2].worldCol = human.worldCol + 18;
    objects[2].permRow = human.worldRow - 1;
    objects[2].permCol = human.worldCol - 8;
    objects[2].level = 1;
    objects[2].shape = ATTR0_WIDE;
    objects[2].size = ATTR1_TINY;
    objects[2].spriteCol = 28;
    objects[2].spriteRow = 0;

    //Sun hat
    objects[3].type = SUNHAT;
    objects[3].width = 16;
    objects[3].height = 8;
    //objects[3].index = 5;
    objects[3].worldRow = 80;
    objects[3].worldCol = 880;
    objects[3].permRow = 80;
    objects[3].permCol = 880;
    objects[3].level = 1;
    objects[3].shape = ATTR0_WIDE;
    objects[3].size = ATTR1_TINY;
    objects[3].spriteCol = 30;
    objects[3].spriteRow = 0;

    //Carrot
    objects[4].type = CARROT;
    objects[4].width = 8;
    objects[4].height = 8;
    //objects[4].index = 6;
    objects[4].worldRow = 58;
    objects[4].worldCol = 430;
    objects[4].permRow = 120;
    objects[4].permCol = 500;
    objects[4].level = 0;
    objects[4].shape = ATTR0_WIDE;
    objects[4].size = ATTR1_TINY;
    objects[4].spriteCol = 30;
    objects[4].spriteRow = 1;

    //Sandwich
    objects[5].type = SANDWICH;
    objects[5].width = 8;
    objects[5].height = 8;
    //objects[5].index = 7;
    objects[5].worldRow = 125;
    objects[5].worldCol = 219;
    objects[5].permRow = 150;
    objects[5].permCol = 215;
    objects[5].level = 1;
    objects[5].shape = ATTR0_SQUARE;
    objects[5].size = ATTR1_TINY;
    objects[5].spriteCol = 27;
    objects[5].spriteRow = 2;

    //Thermos
    objects[6].type = THERMOS;
    objects[6].width = 8;
    objects[6].height = 16;
    //objects[6].index = 8;
    objects[6].worldRow = 100;
    objects[6].worldCol = 880;
    objects[6].permRow = 100;
    objects[6].permCol = 880;
    objects[6].level = 1;
    objects[6].shape = ATTR0_TALL;
    objects[6].size = ATTR1_TINY;
    objects[6].spriteCol = 28;
    objects[6].spriteRow = 2;

    //Apple
    objects[7].type = APPLE;
    objects[7].width = 8;
    objects[7].height = 8;
    //objects[7].index = 9;
    objects[7].worldRow = 130;
    objects[7].worldCol = 230;
    objects[7].permRow = 170;
    objects[7].permCol = 230;
    objects[7].level = 1;
    objects[7].shape = ATTR0_SQUARE;
    objects[7].size = ATTR1_TINY;
    objects[7].spriteCol = 27;
    objects[7].spriteRow = 3;

    //Jam
    objects[8].type = JAM;
    objects[8].width = 8;
    objects[8].height = 8;
    //objects[8].index = 10;
    objects[8].worldRow = 120;
    objects[8].worldCol = 880;
    objects[8].permRow = 120;
    objects[8].permCol = 880;
    objects[8].level = 1;
    objects[8].shape = ATTR0_SQUARE;
    objects[8].size = ATTR1_TINY;
    objects[8].spriteCol = 29;
    objects[8].spriteRow = 2;

    //Keys
    objects[9].type = KEYS;
    objects[9].width = 8;
    objects[9].height = 8;
    //objects[9].index = 11;
    objects[9].worldRow = human.worldRow + 40;
    objects[9].worldCol = human.worldCol + 19;
    objects[9].permRow = human.worldRow + 40;
    objects[9].permCol = human.worldCol + 19;
    objects[9].level = 1;
    objects[9].shape = ATTR0_SQUARE;
    objects[9].size = ATTR1_TINY;
    objects[9].spriteCol = 29;
    objects[9].spriteRow = 3;

    //Front gate
    objects[10].type = FRONTGATE;
    objects[10].width = 8;
    objects[10].height = 32;
    //objects[10].index = 12;
    objects[10].worldRow = 98;
    objects[10].worldCol = 411;
    objects[10].permRow = 98;
    objects[10].permCol = 411;
    objects[10].level = 0;
    objects[10].shape = ATTR0_TALL;
    objects[10].size = ATTR1_LARGE;
    objects[10].spriteCol = 24;
    objects[10].spriteRow = 4;

    //Back gate
    objects[11].type = BACKGATE;
    objects[11].width = 8;
    objects[11].height = 32;
    //objects[11].index = 13;
    objects[11].worldRow = 0;
    objects[11].worldCol = 670;
    objects[11].permRow = 0;
    objects[11].permCol = 670;
    objects[11].level = 0;
    objects[11].shape = ATTR0_TALL;
    objects[11].size = ATTR1_LARGE;
    objects[11].spriteCol = 24;
    objects[11].spriteRow = 5;

    //Bread
    objects[12].type = BREAD;
    objects[12].width = 16;
    objects[12].height = 8;
    //objects[12].index = 14;
    objects[12].worldRow = 140;
    objects[12].worldCol = 880;
    objects[12].permRow = 140;
    objects[12].permCol = 880;
    objects[12].level = 1;
    objects[12].shape = ATTR0_WIDE;
    objects[12].size = ATTR1_TINY;
    objects[12].spriteCol = 30;
    objects[12].spriteRow = 2;

    //Pen
    objects[13].type = PEN;
    objects[13].width = 8;
    objects[13].height = 8;
    //objects[13].index = 15;
    objects[13].worldRow = 160;
    objects[13].worldCol = 880;
    objects[13].permRow = 160;
    objects[13].permCol = 880;
    objects[13].level = 1;
    objects[13].shape = ATTR0_SQUARE;
    objects[13].size = ATTR1_TINY;
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
        beakWidth = 11; //For checking collision
        beakHeight = 7; // with the beak
    }
    for (int i = 0; i < OBJECTCOUNT; i++) {
        //If the object is not currently grabbed
        if ((objects[i].grabbed == 0)) {
            int coll = collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 5), (goose.worldRow + goose.beakY), beakWidth + 5, beakHeight);
            if (coll) {
                drawCollision(&(objects[i]));
                if (BUTTON_PRESSED(BUTTON_R)) {
                    if (!(human.state == STAND && objects[i].type == KEYS)) {
                        if ((BUTTON_HELD(BUTTON_L)) && (objects[i].level == 0)) {
                            goose.grabbing = 1;
                            objects[i].grabbed = 1;
                            stolenObject = objects[i];
                        }  else if ((goose.state == STAND) && (objects[i].level == 1)) {
                            goose.grabbing = 1;
                            objects[i].grabbed = 1;
                            stolenObject = objects[i];
                        }
                    }
                }
            }
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - gooseHoff;
        } else { //If the object is currently grabbed
            if (BUTTON_PRESSED(BUTTON_R)) { //Drop the object
                objects[i].grabbed = 0;
                goose.grabbing = 0;
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].worldCol = goose.worldCol + goose.beakX;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
            } else if (goose.grabbing) { //Reposition the object based on the goose's beak to carry
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
                // if (goose.dir == LEFT) {
                //     objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width + 3);
                // } else if (goose.dir == RIGHT) {
                //     objects[i].worldCol = goose.worldCol + goose.beakX;
                // } else {
                //     objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width / 2);
                // }
                objects[i].worldCol = human.worldCol + 20;
                objects[i].worldRow = human.worldRow + 32;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
            }
            
        }

        if ((objects[i].type == PEN) && (objects[i].grabbed)) {
            if (tasks >= 0) {
                playSoundB(writing, WRITINGLEN, 0);
            }
            tasks = -1;
        } else if (tasks == 4 && (objects[i].type == SPRINKLER) && (objects[i].grabbed)) {
            sprinklerOn = 1;
            tasks = 3;
        } else if (tasks == 5 && objects[i].type == FERTILIZER && objects[i].grabbed) {
            tasks = 4;
            objects[10].spriteCol = 28;
            objects[10].worldRow = 44;
        } else if (tasks == 3 && objects[i].type == HAT && objects[i].grabbed) {
            tasks = 2;
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
    for (int i = 0; i < OBJECTCOUNT; i++) {
        // if ((overallHoff > objects[i].hoff) && (overallHoff > hoff) && (objects[i].grabbed == 0)) {
        //     shadowOAM[objects[i].index].attr0 = ATTR0_HIDE;
        // } else {
        //     shadowOAM[objects[i].index].attr0 = (ROWMASK & objects[i].screenRow) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        // }
        int objSB = (objects[i].worldCol / 256) + 28;
        if ((objSB == sb) || (objSB == (sb + 1))) {
            if (gateOpen && (objects[i].type == BACKGATE)) {
                shadowOAM[i + 2].attr0 = ATTR0_HIDE;
            } else {
                shadowOAM[i + 2].attr0 = (ROWMASK & objects[i].screenRow) | ATTR0_REGULAR | ATTR0_4BPP | objects[i].shape;
            }
        } else {
            shadowOAM[i + 2].attr0 = ATTR0_HIDE;
        }
        shadowOAM[i + 2].attr1 = (COLMASK & objects[i].screenCol) | objects[i].size;
        shadowOAM[i + 2].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(objects[i].spriteCol, objects[i].spriteRow);
    }
}

void drawCollision(OBJECT* o) {
    // int row = (o -> worldRow) + ((o -> height) / 2 - 4);
    // int col = (o -> worldCol) + ((o -> width) / 2 - 4);
    // shadowOAM[shadowCount].attr0 = row | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
    // shadowOAM[shadowCount].attr1 = col | ATTR1_TINY;
    // shadowOAM[shadowCount].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(31, 3);
    // shadowCount++;
}