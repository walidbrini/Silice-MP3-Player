#ifndef TIC_TAC_TOE_H
#define TIC_TAC_TOE_H

// Standard system includes
#include <string.h>

#include "config.h"
#include "sdcard.h"
#include "std.h"

#include "oled.h"
#include "display.h"
#include "printf.h"
#include "fat_io_lib/src/fat_filelib.h"

// Define constants for the game
#define BOARD_SIZE 3
#define EMPTY 0
#define PLAYER_X 1
#define PLAYER_O 2

// Button definitions for controls
#define UP_BUTTON *BUTTONS & (1 << 3)
#define DOWN_BUTTON *BUTTONS & (1 << 4)
#define LAUNCH_BUTTON *BUTTONS & (1 << 6)
#define BACK_BUTTON *BUTTONS & (1 << 5)
#define FWD_BUTTON *BUTTONS & (1 << 2)
#define BWD_BUTTON *BUTTONS & (1 << 1)

// Function prototypes
void delay_ms(int milliseconds);
void initBoard();
int checkGameOver();
void clearDisplay();
void renderBoard();
void botMove();
void handlePlayerInput(); 
void startTicTacToe();

#endif // TIC_TAC_TOE_H
