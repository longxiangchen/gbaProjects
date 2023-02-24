// structs
typedef struct {
    int x;
    int y;
    int oldx;
    int oldy;
    int xVelocity;
    int yVelocity;
    int width;
    int height;
    int health;
    unsigned short color;
} PLAYER;

typedef struct {
    int x;
    int y;
    int oldX;
    int oldY;
    int yVelocity;
    int active;
    int height;
    int width;
    int type;
    unsigned short color;
    int erased;
} OBSTACLE;


// constants
#define OCOUNT 30

// variables
extern PLAYER player;
extern OBSTACLE obstacles[OCOUNT];
extern int score;
extern int time;
extern unsigned short healthIndicator;
extern int poweredDown;
extern int poweredUp;
extern int spawnDelay;
extern int highScore;

// function prototypes
// game
void initGame();
void updateGame();
void drawGame();

// player
void initPlayer();
void updatePlayer();
void drawPlayer();

// function prototypes for OBSTACLES
void initObstacles();
void updateObstacle(OBSTACLE* o);
void drawObstacle(OBSTACLE* o);
void newObstacle();

// mgba for debugging
void mgba_open();
void mgba_printf();