#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "tempCollision.h"

int walkDir;
int hatTimer;

void initHuman() {
    walkDir = -1;
    hatTimer = 0;

    human.worldRow = 30;
    human.worldCol = 100;
    human.bubbleDel = 40;
    human.bubbleWidth = 112;
    human.bubbleHeight = 144;
    human.state = STANDH;
    human.anistate = IDLEH;
    human.index = 1;
    human.dir = FORWARDH;
    human.anicounter = 0;
    human.workTimer = 0;
    human.aninum = 0;
    human.action = GARDENING;
}

void updateHuman() {
    if (human.action == GARDENING) {
        gardening();
    } else if (human.action == CHASE) {
        chase();
    } else if (human.action == RETURNOBJ) {
        returnObject();
    } else if (human.action == SWEAT) {
        sweat();
    } else if (human.action == OPENFRONT) {
        openFrontGate();
    } else if (human.action == OPENBACK) {
        openBackGate();
    } else if (human.action == SPRINKLEROFF) {
        turnSprinklerOff();
    } else if (human.action == CHEAT) {
        performCheat();
    }

    if (tasks == -1) {
        human.action == CHEAT;
    } else if (tasks == 3) {
        human.action = SWEAT;
    } else if ((tasks == 4) && sprinklerOn) {
        human.action == SPRINKLEROFF;
        turnSprinklerOff();
    }
    
    human.screenRow = human.worldRow - voff;
    human.screenCol = human.worldCol - gooseHoff;
}

void drawHuman() {
    shadowOAM[human.index].attr0 = (ROWMASK & human.screenRow) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    shadowOAM[human.index].attr1 = (COLMASK & human.screenCol) | ATTR1_LARGE;
    if (human.dir == FORWARDH) {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID((human.state * 8), 16);
    } else if (human.dir == BACKH) {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8) + 16), 16);
    } else if (human.dir == LEFTH) {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8)), 24);
    } else {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8) + 16), 24);
    }
}

void chase() {
    // human.anistate = WALKH;
    // if (goose.grabbing) {
    //     if ((stolenObject.type == FERTILIZER) && (tasks == 5)) {
    //         human.action = OPENFRONT;
    //     } else {
    //         if (goose.worldCol > human.worldCol) {
    //             human.worldCol++;
    //         }
    //         if (goose.worldCol < human.worldCol) {
    //             human.worldCol--;
    //         }
    //         if (goose.worldRow > human.worldRow) {
    //             human.worldRow++;
    //         }
    //         if (goose.worldRow < human.worldRow) {
    //             human.worldRow--;
    //         }
    //     }
    // } else {
    //     if (stolenObject.worldCol > human.worldCol) {
    //         human.worldCol++;
    //     }
    //     if (stolenObject.worldCol < human.worldCol) {
    //         human.worldCol--;
    //     }
    //     if (stolenObject.worldRow > human.worldRow) {
    //         human.worldRow++;
    //     }
    //     if (stolenObject.worldRow < human.worldRow) {
    //         human.worldRow--;
    //     }
    // }
    // if (collision(human.worldCol, human.worldRow, 32, 64, goose.worldCol, goose.worldRow, goose.width, goose.height) && (goose.grabbing)) {
    //     goose.grabbing = 0;
    //     human.grabbing = 1;
    // } else if (collision(human.worldCol, human.worldRow, 32, 64, stolenObject.worldCol, stolenObject.worldRow, stolenObject.width, stolenObject.height)) {
    //     human.grabbing = 1;
    //     human.action = RETURNOBJ;
    // }       
}

void returnObject() {
    // if (human.grabbing) {
    //     if (stolenObject.permCol > human.worldCol) {
    //         human.worldCol++;
    //     }
    //     if (stolenObject.permCol < human.worldCol) {
    //         human.worldCol--;
    //     }
    //     if (stolenObject.permRow > human.worldRow) {
    //         human.worldRow++;
    //     }
    //     if (stolenObject.permRow < human.worldRow) {
    //         human.worldRow--;
    //     }
    //     if ((human.worldCol == stolenObject.permCol) && (human.worldRow == stolenObject.permRow)) {
    //         human.grabbing = 0;
    //         stolenObject.grabbed = 0;
    //         stolenObject = empty;
    //     }
    // } else if (tasks == 3) {
    //     human.action = SWEAT;
    // } else {
    //     human.action = GARDENING;
    // }
}

void sweat() {
    // if (human.worldCol < 850) {
    //     human.worldCol--;
    //     if (human.worldRow > 180) {
    //         human.worldRow -= 1;
    //     } else if (human.worldRow < 180) {
    //         human.worldRow +=1;
    //     }
    // }
    // if ((human.worldCol == 850) && (human.worldRow == 180)) {
    //     human.dir = FORWARDH;
    //     if (objects[2].grabbed) {
    //         hatTimer++;
    //         if (hatTimer > 40) {
    //             if (collision((human.worldCol - human.bubbleDel), (human.worldRow - human.bubbleDel), human.bubbleWidth, human.bubbleHeight, goose.worldCol, goose.worldRow, goose.width, goose.height)) {
    //                 human.action = CHASE;
    //             } else {
    //                 objects[3].worldCol = (human.worldCol / 2 - 4);
    //                 objects[3].worldRow = human.worldRow - 1;
    //                 human.action = GARDENING;
    //             }
    //         }
    //     } else {
    //         objects[2].worldCol = 850;
    //         objects[2].worldRow = 140;
    //     }

    // }
}

void openFrontGate() {
    // if (human.worldCol > 422) {
    //     human.worldCol--;
    //     if (human.worldRow > 88) {
    //         human.worldRow -= 1;
    //     } else if (human.worldRow < 88) {
    //         human.worldRow +=1;
    //     }
    // } else if (human.worldCol == 422 && human.worldRow != 88) {
    //     if (human.worldRow > 88) {
    //         human.worldRow -= 1;
    //     } else if (human.worldRow < 88) {
    //         human.worldRow +=1;
    //     }
    // } else if (human.worldCol >= 422) {
    //     tasks = 4;
    //     human.action = CHASE;
    // }
}

void openBackGate() {

}

void turnSprinklerOff() {
    // if (objects[1].worldCol > human.worldCol) {
    //     human.worldCol++;
    // }
    // if (objects[1].worldCol < human.worldCol) {
    //     human.worldCol--;
    // }
    // if (objects[1].worldRow > human.worldRow) {
    //     human.worldRow++;
    // }
    // if (objects[1].worldRow < human.worldRow) {
    //     human.worldRow--;
    // }
    // if ((human.worldRow == objects[1].worldRow) && (human.worldCol == objects[1].worldCol)) {
    //     sprinklerOn = 0;
    //     tasks = 3;
    // }
    // if (sprinklerOn == 0) {
    //     if (440 > human.worldCol) {
    //         human.worldCol++;
    //     }
    //     if (440 < human.worldCol) {
    //         human.worldCol--;
    //     }
    //     if (100 > human.worldRow) {
    //         human.worldRow++;
    //     }
    //     if (100 < human.worldRow) {
    //         human.worldRow--;
    //     }
    //     if (human.worldRow == 100 && human.worldCol == 440) {
    //         human.action = GARDENING;
    //     }
    // }
}

void gardening() {
    // if (human.worldCol != 440) {
    //     if (440 > human.worldCol) {
    //         human.worldCol++;
    //     }
    //     if (440 < human.worldCol) {
    //         human.worldCol--;
    //     }
    //     if (100 > human.worldRow) {
    //         human.worldRow++;
    //     }
    //     if (100 < human.worldRow) {
    //         human.worldRow--;
    //     }
    // }
    // if (collision((human.worldCol - human.bubbleDel), (human.worldRow - human.bubbleDel), human.bubbleWidth, human.bubbleHeight, goose.worldCol, goose.worldRow, goose.width, goose.height)) {
    // //|| collision((human.worldCol), (human.worldRow), 32, 64, goose.worldCol, goose.worldRow, goose.width, goose.height)) {
    //     if ((human.state == STAND) || (honkTimer > 0)) {
    //         human.state = STAND;
    //         if (goose.grabbing) {
    //             human.workTimer = 0;
    //             human.action = CHASE;
    //         } else {
    //             human.anistate = IDLEH;
    //         }
    //         if (goose.worldRow > human.worldRow) {
    //             human.dir = FORWARDH;
    //         } else if (goose.worldRow < human.worldRow) {
    //             human.dir = BACKH;
    //         } else if (goose.worldCol > human.worldCol) {
    //             human.dir = RIGHTH;
    //         } else {
    //             human.dir = LEFTH;
    //         }
    //     }
    // } else if (goose.grabbing && (honkTimer > 0)) {
    //     human.workTimer = 0;
    //     human.action = CHASE;
    // } else {
    //     if (human.workTimer == 0) {
    //         human.state = STANDH;
    //         human.worldRow += (walkDir);
    //         if (walkDir > 0) {
    //             human.dir = FORWARDH;
    //         } else {
    //             human.dir = BACKH;
    //         }
    //         if (human.worldRow == 0) {
    //             walkDir = 1;
    //             human.dir = BACKH;
    //             human.workTimer++;
    //         } else if (human.worldRow == 157) {
    //             walkDir = -1;
    //             human.dir = FORWARDH;
    //             human.workTimer++;
    //         }
    //     } else {
    //         human.state = KNEELH;
    //         human.workTimer++;
    //         if (human.workTimer >= 250) {
    //             human.workTimer = 0;
    //         }
    //     }
    // }
}

void performCheat() {

}