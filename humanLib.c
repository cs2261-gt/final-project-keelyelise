#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "tempCollision.h"


void initHuman() {
    // human.worldRow = 30;
    // human.worldCol = 100;
    // human.bubbleDel = -40;
    // human.bubbleWidth = 112;
    // human.bubbleHeight = 144;
    // human.state = STANDH;
    // human.anistate = IDLEH;
    // human.index = 1;
    // human.dir = FORWARDH;
}

void updateHuman() {
    // human.screenRow = human.worldRow - voff;
    // human.screenCol = human.screenCol - hoff;
}

void drawHuman() {
    // shadowOAM[human.index].attr0 = human.screenRow | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    // shadowOAM[human.index].attr1 = human.screenCol | ATTR1_LARGE;
    // shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 12) + (human.anistate * 4)), 32);
}