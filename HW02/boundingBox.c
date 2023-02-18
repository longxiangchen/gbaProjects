#include "gba.h"

extern int topBound, botBound, rightBound, leftBound;

int boxWidth, boxHeight, boxArea;

void boundingBox() {
    boxWidth = rightBound - leftBound - 2;
    boxHeight = botBound - topBound - 2;
    boxArea = botBound * rightBound;
    
    drawRect(leftBound+2, topBound+2, boxWidth, boxHeight, GRAY);
    drawRect(leftBound+2, topBound, boxWidth, 2, WHITE);
    drawRect(leftBound+2, botBound, boxWidth, 2, WHITE);
    drawRect(leftBound, topBound, 2, boxHeight + 4, WHITE);
    drawRect(rightBound, topBound, 2, boxHeight + 4, WHITE);
}
