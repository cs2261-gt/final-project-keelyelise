#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "tempCollision.h"


void initObjects() {
    for (int i = 0; i < OBJECTCOUNT; i++) {
        objects[i].type = BLOCK;
        objects[i].width = 8;
        objects[i].height = 8;
        objects[i].index = i + 2;
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
        if (objects[i].grabbed == 0) {
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - hoff;
            if (BUTTON_HELD(BUTTON_R)) {
                if ((BUTTON_HELD(BUTTON_L)) && (objects[i].level == 0)) { //If the object is on the ground and the goose has ducked
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX - 5), (goose.worldRow + goose.beakY), beakWidth + 5, beakHeight)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                } else if ((goose.state == STAND) && (objects[i].level == 1)) { //If the object is higher up and the goose is standing
                    if (collision(objects[i].worldCol, objects[i].worldRow, objects[i].width, objects[i].height, (goose.worldCol + goose.beakX), (goose.worldRow + goose.beakY), beakWidth, beakHeight)) {
                        goose.grabbing = 1;
                        objects[i].grabbed = 1;
                    }
                }
            }
            objects[i].screenRow = objects[i].worldRow - voff;
            objects[i].screenCol = objects[i].worldCol - hoff;
        } else { //If the object is currently grabbed
            if (BUTTON_HELD(BUTTON_R)) { //Drop the object
                objects[i].grabbed = 0;
                goose.grabbing = 0;
            } else { //Reposition the object based on the goose's beak to carry
                objects[i].hoff = gooseHoff;
                if (goose.dir == LEFT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width + 3);
                } else if (goose.dir == RIGHT) {
                    objects[i].worldCol = goose.worldCol + goose.beakX;
                } else {
                    objects[i].worldCol = goose.worldCol + goose.beakX - (objects[i].width / 2);
                }
                objects[i].worldRow = goose.worldRow + goose.beakY;
                objects[i].screenRow = objects[i].worldRow - voff;
                objects[i].screenCol = objects[i].worldCol - objects[i].hoff;
            }
            
        }
    }
}


void drawObjects() {
    for (int i = 0; i < OBJECTCOUNT; i++) {
        if ((overallHoff > objects[i].hoff) && (overallHoff > hoff) && (objects[i].grabbed == 0)) {
            shadowOAM[objects[i].index].attr0 =ATTR0_HIDE;
        } else {
            shadowOAM[objects[i].index].attr0 = objects[i].screenRow | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_SQUARE;
        }
        shadowOAM[objects[i].index].attr1 = objects[i].screenCol | ATTR1_TINY;
        shadowOAM[objects[i].index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(i, 20);
    }
}