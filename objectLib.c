#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "gardenCollision.h"
#include "sound.h"
#include "writing.h"

int shadowCount;
int sprinklerOn;
int sprinklerTimer;
int hatIndex;
int keyIndex;


void initObjects() {

    // shadowCount = 14;
    sprinklerOn = 0;
    sprinklerTimer = 0;
    hatIndex = 2;
    keyIndex = 9;

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
    objects[1].permCol = 560;
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
    objects[2].worldCol = human.worldCol + 8;
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
    objects[3].worldRow = 196;
    objects[3].worldCol = 918;
    objects[3].permRow = 196;
    objects[3].permCol = 918;
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
    objects[4].permRow = 58;
    objects[4].permCol = 430;
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
    objects[5].permRow = 125;
    objects[5].permCol = 219;
    objects[5].level = 1;
    objects[5].shape = ATTR0_SQUARE;
    objects[5].size = ATTR1_TINY;
    objects[5].spriteCol = 31;
    objects[5].spriteRow = 3;

    //Thermos
    objects[6].type = THERMOS;
    objects[6].width = 8;
    objects[6].height = 16;
    //objects[6].index = 8;
    objects[6].worldRow = 128;
    objects[6].worldCol = 894;
    objects[6].permRow = 128;
    objects[6].permCol = 894;
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
    objects[7].permRow = 130;
    objects[7].permCol = 230;
    objects[7].level = 1;
    objects[7].shape = ATTR0_SQUARE;
    objects[7].size = ATTR1_TINY;
    objects[7].spriteCol = 29;
    objects[7].spriteRow = 1;

    //Jam
    objects[8].type = JAM;
    objects[8].width = 8;
    objects[8].height = 8;
    //objects[8].index = 10;
    objects[8].worldRow = 152;
    objects[8].worldCol = 894;
    objects[8].permRow = 152;
    objects[8].permCol = 894;
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
    objects[10].spriteRow = 2;

    //Back gate
    objects[11].type = BACKGATE;
    objects[11].width = 8;
    objects[11].height = 32;
    //objects[11].index = 13;
    objects[11].worldRow = 0;
    objects[11].worldCol = 670;
    objects[11].permRow = -8;
    objects[11].permCol = 670;
    objects[11].level = -8;
    objects[11].shape = ATTR0_TALL;
    objects[11].size = ATTR1_LARGE;
    objects[11].spriteCol = 24;
    objects[11].spriteRow = 3;

    //Bread
    objects[12].type = BREAD;
    objects[12].width = 16;
    objects[12].height = 8;
    //objects[12].index = 14;
    objects[12].worldRow = 162;
    objects[12].worldCol = 894;
    objects[12].permRow = 162;
    objects[12].permCol = 894;
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
    objects[13].worldRow = 240;
    objects[13].worldCol = 910;
    objects[13].permRow = 240;
    objects[13].permCol = 910;
    objects[13].level = 0;
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
            if (coll && (objects[i].type != FRONTGATE) && (objects[i].type != BACKGATE)) {
                drawCollision(&(objects[i]));
                if (BUTTON_PRESSED(BUTTON_R) && !goose.grabbing) {
                    if ((BUTTON_HELD(BUTTON_L)) && (objects[i].level == 0)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                        stolenObject = &(objects[i]);
                    }  else if ((goose.state == STAND) && (objects[i].level == 1)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                        stolenObject = &(objects[i]);
                    }
                }
            }
            if (i == hatIndex) { //update hat's location
                if (human.state == KNEELH) {
                    objects[i].worldRow = human.worldRow + 10;
                    objects[i].level = 0;
                } else {
                    objects[i].worldRow = human.worldRow - 2;
                    objects[i].level = 2;
                }
                objects[i].worldCol = human.worldCol + 8;
                if (objects[i].grabbed) {
                    hatIndex = 50;
                }
            } else if (i == keyIndex) { //update keys location
                if (human.state == KNEELH) {
                    objects[i].worldRow = human.worldRow + 58;
                    objects[i].level = 0;
                } else {
                    objects[i].worldRow = human.worldRow + 45;
                    objects[i].level = 1;
                }
                objects[i].worldCol = human.worldCol + 19;
                if (objects[i].grabbed) {
                    keyIndex = 51;
                }
            }
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - gooseHoff;
        } else { //If the object is currently grabbed
            if (BUTTON_PRESSED(BUTTON_R) && goose.grabbing) { //Drop the object
                objects[i].grabbed = 0;
                goose.grabbing = 0;
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].worldCol = goose.worldCol + goose.beakX;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
                if (!gardenCollisionBitmap[OFFSET(objects[i].worldCol, objects[i].worldRow, WORLDWIDTH)] ||
                        !gardenCollisionBitmap[OFFSET(objects[i].worldCol, (objects[i].worldRow + objects[i].height), WORLDWIDTH)] ||
                        !gardenCollisionBitmap[OFFSET((objects[i].worldCol + objects[i].width), objects[i].worldRow, WORLDWIDTH)] ||
                        !gardenCollisionBitmap[OFFSET((objects[i].worldCol + objects[i].width), (objects[i].worldRow + objects[i].height), WORLDWIDTH)]) {
                    objects[i].level = 1;
                } else {
                    objects[i].level = 0;
                }
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
                objects[i].worldCol = human.worldCol + 4;
                objects[i].worldRow = human.worldRow + 28;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;

            } else if (human.grabbing == 0) {
                objects[i].grabbed = 0;
                objects[i].worldRow = human.worldRow;
                objects[i].worldCol = human.worldCol;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
                if (!gardenCollisionBitmap[OFFSET(objects[i].worldCol, objects[i].worldRow, WORLDWIDTH)] ||
                        !gardenCollisionBitmap[OFFSET(objects[i].worldCol, (objects[i].worldRow + objects[i].height), WORLDWIDTH)] ||
                        !gardenCollisionBitmap[OFFSET((objects[i].worldCol + objects[i].width), objects[i].worldRow, WORLDWIDTH)] ||
                        !gardenCollisionBitmap[OFFSET((objects[i].worldCol + objects[i].width), (objects[i].worldRow + objects[i].height), WORLDWIDTH)]) {
                    objects[i].level = 1;
                } else {
                    objects[i].level = 0;
                }
            }
            
        }

        if ((objects[i].type == PEN) && (objects[i].grabbed)) {
            if (tasks >= 0) {
                playSoundB(writing, WRITINGLEN, 0);
            }
            tasks = -1;
        } else if (tasks == 4 && (objects[i].type == SPRINKLER) && (objects[i].grabbed)) {
            sprinklerOn = 1;
        } else if (tasks == 5 && human.grabbing) {
            tasks = 4;
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
    int objSB = (objects[1].worldCol / 256) + 28;
    if (sprinklerOn && ((objSB == sb) || (objSB == (sb + 1)))) {
        sprinklerTimer++;
        int sprinklerAniNum = sprinklerTimer % 12;
        int sprinklerWorldRow = objects[1].worldRow - 12;
        int sprinklerWorldCol = objects[1].worldCol - 12;
        int sprinklerScreenRow = sprinklerWorldRow - voff;
        int sprinklerScreenCol = sprinklerWorldCol - gooseHoff;
        if ((tasks == 4) && collision(sprinklerWorldCol, sprinklerWorldRow, 32, 32, human.worldCol, human.worldRow, 32, 64)) {
            tasks = 3;
        }
        shadowOAM[OBJECTCOUNT + 2].attr0 = (ROWMASK & sprinklerScreenRow) | ATTR0_REGULAR | ATTR0_SQUARE | ATTR0_4BPP;
        shadowOAM[OBJECTCOUNT + 2].attr1 = (COLMASK & sprinklerScreenCol) | ATTR1_MEDIUM;
        if (sprinklerAniNum < 6) {
            shadowOAM[OBJECTCOUNT + 2].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(24, 12);
        } else {
            shadowOAM[OBJECTCOUNT + 2].attr2 = ATTR2_PALROW(1) | ATTR2_TILEID(28,12);
        }
    } else {
        shadowOAM[OBJECTCOUNT + 2].attr0 = ATTR0_HIDE;
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