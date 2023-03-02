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
#define BCOUNT 80

// variables
extern PLAYER player;
extern VILLAIN eggman;
extern ESCAPE escape;
extern BULLET bullets[BCOUNT];
extern int score;
extern int time;
extern int highScore;

#define NUMCOLORS 8
enum {BLACKID=(256-NUMCOLORS), GREYID, MAROONID, GAMEBGID, GOLDID, BROWNID, SALMONID, PINKID};
extern unsigned short colors[NUMCOLORS];