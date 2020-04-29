#include "gooseLib.h"
#include "objectLib.h"
#include "humanLib.h"
#include "game.h"
#include "myLib.h"
#include "tempCollision.h"

int walkDir;
int hatTimer;
int aniTimer;
int aninum;
int stepTimer;
int savedDir;

void initHuman() {
    walkDir = -1;
    hatTimer = 0;
    aniTimer = 0;
    aninum = 0;
    stepTimer = 0;
    savedDir = FORWARDH;

    human.worldRow = 40;
    human.worldCol = 300;
    human.bubbleDel = 40;
    human.bubbleWidth = 112;
    human.bubbleHeight = 144;
    human.state = STANDH;
    human.anistate = IDLEH;
    human.index = 20;
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
    } else if (human.action == OPENFRONT) {
        openFrontGate();
    } else if (human.action == OPENBACK) {
        openBackGate();
    } else if (human.action == CHEAT) {
        performCheat();
    } else if (human.action == REPLACE) {
        replaceHat();
    }

    if (tasks == -1) {
        human.action = CHEAT;
    }
    
    human.screenRow = human.worldRow - voff;
    human.screenCol = human.worldCol - gooseHoff;
}

void drawHuman() {
    if (human.anistate == WALKH) {
        aniTimer = (aniTimer + 1) % 20;
        if (aniTimer == 0) {
            aninum = (aninum + 1) % 2;
        }
    }
    int humanSB = (human.worldCol / 256) + 28;
    if ((humanSB == sb) || (humanSB == (sb + 1))) {
        shadowOAM[human.index].attr0 = (ROWMASK & human.screenRow) | ATTR0_REGULAR | ATTR0_4BPP | ATTR0_TALL;
    } else {
        shadowOAM[human.index].attr0 = ATTR0_HIDE;
    }
    shadowOAM[human.index].attr1 = (COLMASK & human.screenCol) | ATTR1_LARGE;
    if (human.dir == FORWARDH) {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8) + (4 * aninum)), 16);
    } else if (human.dir == BACKH) {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8) + 16 + (4 * aninum)), 16);
    } else if (human.dir == LEFTH) {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8) + (4 * aninum)), 24);
    } else {
        shadowOAM[human.index].attr2 = ATTR2_PALROW(0) | ATTR2_TILEID(((human.state * 8) + 16 + (4 * aninum)), 24);
    }
}

void chase() {
    stepTimer++;
    human.anistate = WALKH;
    if (goose.grabbing) {
        if (stepTimer >= 2) {
            stepTimer = 0;
            if (goose.worldCol > human.worldCol) {
                human.worldCol++;
                human.dir = RIGHTH;
            }
            if (goose.worldCol < human.worldCol) {
                human.worldCol--;
                human.dir = LEFTH;
            }
            if (goose.worldRow > human.worldRow) {
                human.worldRow++;
                human.dir = FORWARDH;
            }
            if (goose.worldRow < human.worldRow) {
                human.worldRow--;
                human.dir = BACKH;
            }
        }
        if (collision(human.worldCol, human.worldRow, 32, 64, goose.worldCol, goose.worldRow, goose.width, goose.height)) {
            goose.grabbing = 0;
            human.grabbing = 1;
            human.action = RETURNOBJ;
        }
    } else {
        if (stolenObject.worldCol > human.worldCol) {
            human.worldCol++;
        }
        if (stolenObject.worldCol < human.worldCol) {
            human.worldCol--;
        }
        if (stolenObject.worldRow > human.worldRow) {
            human.worldRow++;
        }
        if (stolenObject.worldRow < human.worldRow) {
            human.worldRow--;
        }
        if (collision(human.worldCol, human.worldRow, 32, 64, stolenObject.worldCol, stolenObject.worldRow, stolenObject.width, stolenObject.height)) {
            human.grabbing = 1;
            human.action = RETURNOBJ;
        }
    }
}

void returnObject() {
    //if the human has the object and is returning it
    if (human.grabbing) {
        if (stolenObject.permCol > human.worldCol) {
            human.worldCol++;
        }
        if (stolenObject.permCol < human.worldCol) {
            human.worldCol--;
        }
        if (stolenObject.permRow > human.worldRow) {
            human.worldRow++;
        }
        if (stolenObject.permRow < human.worldRow) {
            human.worldRow--;
        }
        if ((human.worldCol == stolenObject.permCol) && (human.worldRow == stolenObject.permRow)) {
            human.grabbing = 0;
        }
    } else { //if the human has returned the object to where it belongs, return to gardening
        if (human.worldRow != 70) {
            if (70 > human.worldRow) {
                human.worldRow++;
                human.dir = FORWARDH;
            }
            if (70 < human.worldRow) {
                human.worldRow--;
                human.dir = BACKH;
            }
        } else {
            human.action = GARDENING;
        }
    }
}

void openFrontGate() {
    stepTimer++;
    human.anistate = WALKH;
    if (stepTimer >= 2) {
        stepTimer = 0;   
        if (human.worldCol > 422) {
            human.worldCol--;
            if (human.worldRow > 70) {
                human.worldRow -= 1;
            } else if (human.worldRow < 70) {
                human.worldRow +=1;
            }
        } else if (human.worldCol == 422 && human.worldRow != 70) {
            if (human.worldRow > 70) {
                human.worldRow -= 1;
            } else if (human.worldRow < 70) {
                human.worldRow +=1;
            }
        } else if (human.worldCol >= 422) {
            tasks = 4;
            objects[10].spriteCol = 28;
            objects[10].worldRow = 44;
            human.action = CHASE;
        }
    }
}

void openBackGate() {

}

void gardening() {
    //move the gardener to the gardening position
    if (human.worldCol != 440) {
        if (440 > human.worldCol) {
            human.worldCol++;
        }
        if (440 < human.worldCol) {
            human.worldCol--;
        }
        if (100 > human.worldRow) {
            human.worldRow++;
        }
        if (100 < human.worldRow) {
            human.worldRow--;
        }
    }
    //if the goose collides with the human's detection bubble and either the gardener is standing or the goose has honked
    if (collision((human.worldCol - human.bubbleDel), (human.worldRow - human.bubbleDel), human.bubbleWidth, human.bubbleHeight, goose.worldCol, goose.worldRow, goose.width, goose.height)) {
        if (human.state == STANDH || honkTimer > 0) {
            human.state = STANDH;
            //if the goose is holding something, the gardener chases the goose
            if (goose.grabbing) {
                human.workTimer = 0;
                if ((stolenObject.type == FERTILIZER) && (tasks == 5)) {
                    human.action = OPENFRONT;
                } else {
                    human.action = CHASE;
                }   
            } else { //else, the gardener stares at the goose
                human.anistate = IDLEH;
            }
            //face the direction of the goose
            if (goose.worldRow > human.worldRow) {
                human.dir = FORWARDH;
            } else if (goose.worldRow < human.worldRow) {
                human.dir = BACKH;
            } else if (goose.worldCol > human.worldCol) {
                human.dir = RIGHTH;
            } else {
                human.dir = LEFTH;
            }
        } else {
            //gardening animation logic
            human.anistate = WALKH;
            if (human.workTimer == 0) {
                human.state = STANDH;
                human.worldRow += (walkDir);
                if (walkDir > 0) {
                    human.dir = FORWARDH;
                } else {
                    human.dir = BACKH;
                }
                if (human.worldRow == 6) {
                    walkDir = 1;
                    human.dir = BACKH;
                    human.workTimer++;
                } else if (human.worldRow == 136) {
                    walkDir = -1;
                    human.dir = FORWARDH;
                    human.workTimer++;
                }
            } else {
                human.state = KNEELH;
                human.workTimer++;
                if (human.workTimer >= 250) {
                    human.workTimer = 0;
                }
            }
        }
    } else {
        //gardening animation logic
        human.anistate = WALKH;
        if (human.workTimer == 0) {
            human.state = STANDH;
            human.worldRow += (walkDir);
            if (walkDir > 0) {
                human.dir = FORWARDH;
                savedDir = FORWARDH;
            } else {
                human.dir = BACKH;
                savedDir = BACKH;
            }
            if (human.worldRow == 6) {
                walkDir = 1;
                human.dir = BACKH;
                savedDir = BACKH;
                human.workTimer++;
            } else if (human.worldRow == 136) {
                walkDir = -1;
                human.dir = FORWARDH;
                savedDir = FORWARDH;
                human.workTimer++;
            }
            if (hatIndex == 50) {
                if (tasks == 3) {
                    human.action = REPLACE;
                }
            }
        } else {
            human.state = KNEELH;
            human.dir = savedDir;
            human.workTimer++;
            if (human.workTimer >= 250) {
                human.workTimer = 0;
            }
        }
    }
}

void performCheat() {

}

void replaceHat() {
    human.state = STANDH;
    human.anistate = WALKH;
    human.dir = RIGHTH;
    if (human.worldCol < 870) {
        human.worldCol++;
        if (human.worldCol > 760) {
            if (human.worldRow > 180) {
                human.worldRow--;
            } else if (human.worldRow < 180) {
                human.worldRow++;
            }
        } else {
            if (human.worldRow > 136) {
                human.worldRow--;
            } else if (human.worldRow < 136) {
                human.worldRow++;
            }
        }
    }
    if ((human.worldCol == 870) && (human.worldRow == 180)) {
        hatIndex = 3;
        objects[hatIndex].worldRow = human.worldRow - 2;
        objects[hatIndex].worldCol = human.worldCol + 8;
        human.action = GARDENING;
    }
}