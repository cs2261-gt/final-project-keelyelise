#include "game.h"
#include "myLib.h"
#include "tempCollision.h"
#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"

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
OBJECT stolenObject;
OBJECT empty;


//Methods
void initGame() {
    initGoose();
    initHuman();
    initObjects();
    tasks = 1;
    cheat = 0;
    voff = 0;
    hoff = 0;
    sb = 16;
    anicounter = 0;
    gooseHoff = 0;
    overallHoff = 0;
}

void updateGame() {
    shadowCount = 14;
    updateGoose();
    updateHuman();
    updateObjects();
    //Logic for extra wide map
    if (hoff > 256 && sb < 18) {
        hoff -= 256;
        sb++;
        REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(sb) | BG_SIZE_WIDE | BG_8BPP;
    } else if (hoff <= 0 && sb > 16) {
        hoff += 256;
        sb--;
        REG_BG0CNT = BG_CHARBLOCK(1) | BG_SCREENBLOCK(sb) | BG_SIZE_WIDE | BG_8BPP;
    }
    if (gooseHoff > 512) {
        gooseHoff -= 512;
    } else if (gooseHoff < 0) {
        gooseHoff += 512;
    }
}

void drawGame() {
    drawGoose();
    drawHuman();
    drawObjects();
    REG_BG0VOFF = voff;
    REG_BG0HOFF = hoff;
}