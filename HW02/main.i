# 1 "main.c"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "main.c"
# 1 "gba.h" 1




typedef signed char s8;
typedef unsigned char u8;
typedef signed short s16;
typedef unsigned short u16;
typedef signed int s32;
typedef unsigned int u32;
typedef signed long long s64;
typedef unsigned long long u64;






extern volatile unsigned short *videoBuffer;
# 36 "gba.h"
void waitForVBlank();


int collision(int x1, int y1, int width1, int height1, int x2, int y2, int width2, int height2);
# 56 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 73 "gba.h"
extern unsigned short oldButtons;
# 2 "main.c" 2
# 1 "print.h" 1
# 26 "print.h"
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 1 3 4
# 9 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 1 3 4
# 12 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 1 3 4







# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 1 3 4
# 28 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/_newlib_version.h" 1 3 4
# 29 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/features.h" 2 3 4
# 9 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 2 3 4
# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4

# 41 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int8_t;

typedef unsigned char __uint8_t;
# 55 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int16_t;

typedef short unsigned int __uint16_t;
# 77 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int32_t;

typedef long unsigned int __uint32_t;
# 103 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int64_t;

typedef long long unsigned int __uint64_t;
# 134 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef signed char __int_least8_t;

typedef unsigned char __uint_least8_t;
# 160 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef short int __int_least16_t;

typedef short unsigned int __uint_least16_t;
# 182 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long int __int_least32_t;

typedef long unsigned int __uint_least32_t;
# 200 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __int_least64_t;

typedef long long unsigned int __uint_least64_t;
# 214 "/opt/devkitpro/devkitARM/arm-none-eabi/include/machine/_default_types.h" 3 4
typedef long long int __intmax_t;







typedef long long unsigned int __uintmax_t;







typedef int __intptr_t;

typedef unsigned int __uintptr_t;
# 13 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 1 3 4
# 35 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 187 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_intsup.h" 3 4
       
       
       
       
       
       
       
# 14 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4
# 1 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 1 3 4
# 20 "/opt/devkitpro/devkitARM/arm-none-eabi/include/sys/_stdint.h" 3 4
typedef __int8_t int8_t ;



typedef __uint8_t uint8_t ;







typedef __int16_t int16_t ;



typedef __uint16_t uint16_t ;







typedef __int32_t int32_t ;



typedef __uint32_t uint32_t ;







typedef __int64_t int64_t ;



typedef __uint64_t uint64_t ;






typedef __intmax_t intmax_t;




typedef __uintmax_t uintmax_t;




typedef __intptr_t intptr_t;




typedef __uintptr_t uintptr_t;
# 15 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 2 3 4






typedef __int_least8_t int_least8_t;
typedef __uint_least8_t uint_least8_t;




typedef __int_least16_t int_least16_t;
typedef __uint_least16_t uint_least16_t;




typedef __int_least32_t int_least32_t;
typedef __uint_least32_t uint_least32_t;




typedef __int_least64_t int_least64_t;
typedef __uint_least64_t uint_least64_t;
# 51 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast8_t;
  typedef unsigned int uint_fast8_t;
# 61 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast16_t;
  typedef unsigned int uint_fast16_t;
# 71 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef int int_fast32_t;
  typedef unsigned int uint_fast32_t;
# 81 "/opt/devkitpro/devkitARM/arm-none-eabi/include/stdint.h" 3 4
  typedef long long int int_fast64_t;
  typedef long long unsigned int uint_fast64_t;
# 10 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdint.h" 2 3 4
# 27 "print.h" 2
# 36 "print.h"

# 36 "print.h"
void mgba_printf_level(int level, const char* ptr, ...);
void mgba_printf(const char* string, ...);
void mgba_break(void);
uint8_t mgba_open(void);
void mgba_close(void);
# 3 "main.c" 2
# 1 "/opt/devkitpro/devkitARM/lib/gcc/arm-none-eabi/9.1.0/include/stdbool.h" 1 3 4
# 4 "main.c" 2


unsigned short oldButtons;
unsigned short buttons;


void initialize();
void updateBallPosition();
void drawSquare();
void boundingBox();
void playerBox();
void draw();
void update();

# 17 "main.c" 3 4
_Bool 
# 17 "main.c"
    win = 
# 17 "main.c" 3 4
          0
# 17 "main.c"
               ;


extern int boxArea, rightBound, botBound;
extern int lives;
extern int time, boxHeight, boxWidth;
extern int ballSize, ballX, ballY, ball_Vx, ball_Vy;
extern int prevBallX, prevBallY;
extern int padding, screenWidth, screenHeight;
extern int prevPlayerX, prevPlayerY, playerX, playerY;
volatile u16* scanlineCounter = (u16*) 0x04000006;
extern 
# 28 "main.c" 3 4
      _Bool 
# 28 "main.c"
           erase;

enum STATE {START, INFO, GAME, LOSE, WIN} state;



# 33 "main.c" 3 4
_Bool 
# 33 "main.c"
    drawLine = 
# 33 "main.c" 3 4
               0
# 33 "main.c"
                    ;
int main() {
    mgba_open();
    initialize();

    while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        switch(state) {
            case START:
                if ((!(~(oldButtons) & ((1<<2))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<2))))) {
                    goToInfo();
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    goToGame();
                }
                break;
            case INFO:
                if ((!(~(oldButtons) & ((1<<2))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<2))))) {
                    goToStart();
                }
                if ((!(~(oldButtons) & ((1<<3))) && (~(*(volatile unsigned short *)0x04000130) & ((1<<3))))) {
                    goToGame();
                }
            case GAME:
                updateGame();
                waitForVBlank();
                drawGame();
                if (lives < 1) {
                    goToLose();
                }
                if (win) {
                    goToWin();
                }



                break;
            case LOSE:
                waitForVBlank();
                drawLose();
                break;
            case WIN:
                waitForVBlank();
                drawWin();
                break;
        }
        time++;
    }
    return 0;
}

void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | (1<<10);
    goToStart();
}

void updateGame() {
    updateBallPosition();
    updatePlayerBox();
}

void drawGame() {
    if (erase) {
        drawRect(50, 18, 240, 160, ((0&31) | (0&31) << 5 | (0&31) << 10));
        boundingBox();
        erase = 
# 100 "main.c" 3 4
               0
# 100 "main.c"
                    ;
    }
    drawBouncingBall();
    drawPlayerBox();
}

void drawLose() {
    drawString(35, 80, "YOU LOSE! TRY AGAIN NEXT TIME", ((31&31) | (31&31) << 5 | (31&31) << 10));
}

void goToGame() {
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    drawLives();
    boundingBox();
    state = GAME;
}
void goToLose() {
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = LOSE;
    drawLose();
}

void goToStart() {
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = START;
    drawStart();
}

void drawStart() {
    drawString(30, 30, "START", ((31&31) | (31&31) << 5 | (31&31) << 10));
}
void goToInfo() {
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = INFO;
    drawInfo();
}

void drawInfo() {
    drawString(30, 30, "INFO", ((31&31) | (31&31) << 5 | (31&31) << 10));
}

void goToWin() {
    fillScreen(((0&31) | (0&31) << 5 | (0&31) << 10));
    state = WIN;
    drawWin();
}

void drawWin() {
    drawString(15, 30, "CONGRATULATIONS! YOU'VE WON JEZZ BALL", ((31&31) | (31&31) << 5 | (31&31) << 10));
}
