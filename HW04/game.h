typedef struct {
    int x;
    int y;
    int oldX;
    int oldY;
    int dx;
    int dy;
    int width;
    int height;
    int lives;
    int dodge;
    int dodgeTimer;
    int dodgeCooldown;
} PLAYER;

typedef struct {
    int x;
    int y;
    int dx;
    int dy;
    int width;
    int height;
    int active;
    unsigned short color;
} BULLET; // object pooling for this one

typedef struct {
    int x;
    int y;
    int dy;
    int height;
    int width;
} VILLAIN;

typedef struct {
    int x;
    int y;
    int width;
    int height;
    unsigned short color;
} ESCAPE;

// number of bullets
#define BCOUNT 15

// variables
extern PLAYER player;
extern VILLAIN eggman;
extern ESCAPE escape;
extern BULLET bullets[BCOUNT];
extern int score;
extern int bulletDelay;
extern int bestTime;

#define NUMCOLORS 8
enum {BLACKID=(256-NUMCOLORS), GREYID, MAROONID, GAMEBGID, GOLDID, BROWNID, SALMONID, PINKID};
extern unsigned short colors[NUMCOLORS];

// function prototypes
void initGame();
void initPlayer();
void initBullets();
void initVillain();
void initEscape();
void drawEscape();
void updateGame();
void updatePlayer();
void updateVillain();
void drawGame();
void drawPlayer();
void drawVillain();
void updateBullet(BULLET *b);
void drawBullet(BULLET *b);
void newBullet();
