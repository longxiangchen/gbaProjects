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
# 40 "gba.h"
void waitForVBlank();
# 59 "gba.h"
void drawRect(int x, int y, int width, int height, volatile unsigned short color);
void fillScreen(volatile unsigned short color);
# 76 "gba.h"
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
void update();
void draw();
void drawDiglett();

int x, y, dFrame, skipFrames, frameLim;

# 15 "main.c" 3 4
_Bool 
# 15 "main.c"
    isLooping = 
# 15 "main.c" 3 4
                0
# 15 "main.c"
                     ;

# 16 "main.c" 3 4
_Bool 
# 16 "main.c"
    toggleDirection = 
# 16 "main.c" 3 4
                      1
# 16 "main.c"
                          ;

int main() {
    mgba_open();
    mgba_printf("Debugging");

    initialize();
    dFrame = 1;
    while(1) {
        oldButtons = buttons;
        buttons = (*(volatile unsigned short *)0x04000130);

        update();
        if (isLooping) {
            drawRect(x, y, 100, 50, ((31) | (31) << 5 | (31) << 10));
            if (skipFrames == frameLim) {
                if (toggleDirection) {
                    if (dFrame == 9) {
                        dFrame = 1;
                    } else {
                    dFrame++;
                    }
                } else {
                    if (dFrame == 1) {
                        dFrame = 9;
                    } else {
                        dFrame--;
                    }
                }
                skipFrames = 0;
            }
            skipFrames++;
        }
        waitForVBlank();
        draw();
    }
}

void initialize() {
    (*(volatile unsigned short *)0x4000000) = ((3) & 7) | ((1 << (8 + (2 % 4))));

    oldButtons = 0;
    buttons = 0;
    frameLim = 30;
    fillScreen(((31) | (31) << 5 | (31) << 10));
}

void update() {

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<0))) && !(~oldButtons & ((1<<0))))) {
        drawRect(x, y, 100, 50, ((31) | (31) << 5 | (31) << 10));
        mgba_printf("next frame");
        if (dFrame == 9) {
            dFrame = 1;
        } else {
            dFrame++;
        }
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<1))) && !(~oldButtons & ((1<<1))))) {
        drawRect(x, y, 100, 50, ((31) | (31) << 5 | (31) << 10));
        mgba_printf("previous frame");
        if (dFrame == 1) {
            dFrame = 9;
        } else {
            dFrame--;
        }
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<4))) && !(~oldButtons & ((1<<4))))) {
        drawRect(x, y, 100, 50, ((31) | (31) << 5 | (31) << 10));
        dFrame = 9;
    }
    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<5))) && !(~oldButtons & ((1<<5))))) {
        drawRect(x, y, 100, 50, ((31) | (31) << 5 | (31) << 10));
        dFrame = 1;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<2))) && !(~oldButtons & ((1<<2))))) {
        toggleDirection = !toggleDirection;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<3))) && !(~oldButtons & ((1<<3))))) {
        mgba_printf("STARTED");
        isLooping = !isLooping;
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<6))) && !(~oldButtons & ((1<<6))))) {
        if (frameLim > 10) {
            frameLim -= 5;
        }
    }

    if (((~(*(volatile unsigned short *)0x04000130) & ((1<<7))) && !(~oldButtons & ((1<<7))))) {
        if (frameLim < 60) {
            frameLim += 5;
        }
    }
}

void draw() {
    int x = 90;
    int y = 90;
    drawDiglett(x, y, 1);
    drawDiglett(x + 30, y, 2);
    drawDiglett(x + 60, y, 3);
    drawDiglett(x + 90, y, 4);
    drawDiglett(x, y + 50, 5);
    drawDiglett(x + 30, y + 50, 6);
    drawDiglett(x + 60, y + 50, 8);

    drawDiglett(30, 30, dFrame);
}

void drawExclamation(int x, int y) {
    drawRect(x + 12, y + 4, 6, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x + 11, y + 5, 1, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x + 10, y + 6, 1, 4, ((0) | (0) << 5 | (0) << 10));
    drawRect(x + 18, y + 5, 1, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x + 19, y + 6, 1, 4, ((0) | (0) << 5 | (0) << 10));
    drawRect(x+11, y+10, 1, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x+12, y+11, 2, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x+13, y+12, 1, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x+14, y+11, 1, 1, ((0) | (0) << 5 | (0) << 10));
    drawRect(x+15, y+10, 4, 1, ((0) | (0) << 5 | (0) << 10));

    drawRect(x + 14, y + 5, 1, 2, ((31) | (0) << 5 | (0) << 10));
    drawRect(x +14, y+8, 1, 1, ((31) | (0) << 5 | (0) << 10));
}
void drawDiglett(int x, int y, int frame) {
    if (frame == 3) {
        drawExclamation(x, y);
    } else if (frame == 4) {
        drawExclamation(x, y - 3);

        drawRect(x + 13, y + 15, 6, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 11, y + 16, 9, 1, ((21) | (13) << 5 | (4) << 10));
    } else if (frame == 5) {

        drawExclamation(x, y - 5);

        drawRect(x + 13, y + 13, 6, 1, ((21) | (13) << 5 | (4) << 10));
     drawRect(x + 11, y + 14, 9, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 9, y + 15, 14, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 9, y + 15, 13, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 8, y + 16, 16, 1, ((21) | (13) << 5 | (4) << 10));
    } else if (frame == 6) {
        drawExclamation(x, y - 7);


        drawRect(x + 13, y + 9, 6, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 11, y + 10, 9, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 10, y + 11, 12, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 9, y + 12, 14, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 8, y + 13, 16, 6, ((21) | (13) << 5 | (4) << 10));

        drawRect(x + 15, y + 13, 1, 1, ((31) | (31) << 5 | (31) << 10));
        drawRect(x + 12, y + 13, 1, 1, ((31) | (31) << 5 | (31) << 10));
        drawRect(x + 15, y + 14, 1, 2, ((0) | (0) << 5 | (0) << 10));
        drawRect(x + 12, y + 14, 1, 2, ((0) | (0) << 5 | (0) << 10));
    } else if (frame == 7) {
        drawExclamation(x, y - 8);

        drawRect(x + 13, y + 7, 6, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 11, y + 8, 9, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 10, y + 9, 12, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 9, y + 10, 14, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 8, y + 11, 16, 8, ((21) | (13) << 5 | (4) << 10));

        drawRect(x + 15, y + 11, 1, 1, ((31) | (31) << 5 | (31) << 10));
        drawRect(x + 12, y + 11, 1, 1, ((31) | (31) << 5 | (31) << 10));
        drawRect(x + 15, y + 12, 1, 2, ((0) | (0) << 5 | (0) << 10));
        drawRect(x + 12, y + 12, 1, 2, ((0) | (0) << 5 | (0) << 10));
    } else if (frame == 8) {
        drawExclamation(x, y - 10);

        drawRect(x + 13, y + 4, 6, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 11, y + 5, 9, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 10, y + 6, 12, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 9, y + 7, 14, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 8, y + 8, 16, 11, ((21) | (13) << 5 | (4) << 10));

        drawRect(x + 15, y + 8, 1, 1, ((31) | (31) << 5 | (31) << 10));
        drawRect(x + 12, y + 8, 1, 1, ((31) | (31) << 5 | (31) << 10));
        drawRect(x + 15, y + 9, 1, 2, ((0) | (0) << 5 | (0) << 10));
        drawRect(x + 12, y + 9, 1, 2, ((0) | (0) << 5 | (0) << 10));


        drawRect(x + 10, y + 14, 6, 3, ((28) | (10) << 5 | (11) << 10));

    } else if (frame == 9) {
        drawExclamation(x, y - 16);
        drawRect(x + 13, y, 6, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 11, y + 1, 9, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 10, y + 2, 12, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 9, y + 3, 14, 1, ((21) | (13) << 5 | (4) << 10));
        drawRect(x + 8, y + 4, 16, 15, ((21) | (13) << 5 | (4) << 10));


  drawRect(x + 15, y + 4, 1, 1, ((31) | (31) << 5 | (31) << 10));
  drawRect(x + 12, y + 4, 1, 1, ((31) | (31) << 5 | (31) << 10));
  drawRect(x + 15, y + 5, 1, 2, ((0) | (0) << 5 | (0) << 10));
  drawRect(x + 12, y + 5, 1, 2, ((0) | (0) << 5 | (0) << 10));


  drawRect(x + 10, y + 10, 6, 3, ((28) | (10) << 5 | (11) << 10));
  drawRect(x + 4, y + 17, 24, 2, ((15) | (15) << 5 | (15) << 10));
    }
    drawRect(x + 4, y + 17, 24, 2, ((15) | (15) << 5 | (15) << 10));
}
