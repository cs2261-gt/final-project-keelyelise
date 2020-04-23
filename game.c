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
    tasks = 5;
    cheat = 0;
    voff = 0;
    hoff = 0;
    sb = 28;
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
    if (hoff > 256 && sb < 30) {
        hoff -= 256;
        sb += 1;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(sb) | BG_SIZE_WIDE | BG_8BPP;
    } else if (hoff <= 0 && sb > 28) {
        hoff += 256;
        sb -= 1;
        REG_BG0CNT = BG_CHARBLOCK(0) | BG_SCREENBLOCK(sb) | BG_SIZE_WIDE | BG_8BPP;
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