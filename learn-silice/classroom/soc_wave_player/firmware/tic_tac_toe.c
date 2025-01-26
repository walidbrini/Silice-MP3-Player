
#include "tic_tac_toe.h"
#include "music.h"

// Game variables
int board[BOARD_SIZE][BOARD_SIZE];  // Tic-Tac-Toe board
int currentPlayer = PLAYER_X;        // Current player (Player X starts)
int gameOver = 0;         // Game state (1 = game over)
int selectedRow = 0;                 // Current cursor row position
int selectedCol = 0;                 // Current cursor column position
int needsRedraw = 1;  // Flag to indicate when the board needs rendering

// Function to introduce a delay in milliseconds
void delay_ms(int milliseconds) {
    // Simple delay loop (adjust the loop count for your platform)
    for (int i = 0; i < milliseconds; i++) {
        for (volatile int j = 0; j < 1000; j++) {
            // The inner loop creates a small time delay
        }
    }
}

// Function to initialize the board
void initBoard() {
    for (int i = 0; i < BOARD_SIZE; i++) {
        for (int j = 0; j < BOARD_SIZE; j++) {
            board[i][j] = EMPTY;
        }
    }
}

// Function to check if the game is over (win or draw)
int checkGameOver() {
    // Check rows and columns
    for (int i = 0; i < BOARD_SIZE; i++) {
        if (board[i][0] == board[i][1] && board[i][1] == board[i][2] && board[i][0] != EMPTY) {
            return (board[i][0] == PLAYER_X) ? 1 : 2;  // Player X or Player O wins
        }
        if (board[0][i] == board[1][i] && board[1][i] == board[2][i] && board[0][i] != EMPTY) {
            return (board[0][i] == PLAYER_X) ? 1 : 2;  // Player X or Player O wins
        }
    }

    // Check diagonals
    if (board[0][0] == board[1][1] && board[1][1] == board[2][2] && board[0][0] != EMPTY) {
        return (board[0][0] == PLAYER_X) ? 1 : 2;  // Player X or Player O wins
    }
    if (board[0][2] == board[1][1] && board[1][1] == board[2][0] && board[0][2] != EMPTY) {
        return (board[0][2] == PLAYER_X) ? 1 : 2;  // Player X or Player O wins
    }

    // Check for draw (no empty spots left)
    for (int i = 0; i < BOARD_SIZE; i++) {
        for (int j = 0; j < BOARD_SIZE; j++) {
            if (board[i][j] == EMPTY)
                return 0;  // Game continues
        }
    }
    return 3;  // Draw
}

// Function to clear the display
void clearDisplay() {
    memset(display_framebuffer(), 0x00, 128 * 128);  // Clear framebuffer
    oled_clear(0);  // Clear OLED display
    display_set_front_back_color(255, 0);
}

// Function to render the Tic-Tac-Toe board on the embedded display
void renderBoard() {
    if (!needsRedraw) return;  // Skip rendering if no changes
    needsRedraw = 0;  // Reset flag after rendering
    clearDisplay();  // Clear the display

    // Display dimensions
    #define DISPLAY_WIDTH 128
    #define DISPLAY_HEIGHT 128
    
    // Adjust cell dimensions and spacing
    const int CELL_WIDTH = 40;
    const int CELL_HEIGHT = 40;
    const int SYMBOL_WIDTH = 3;  // Width of X, O, or - characters
    const int VERTICAL_SPACING = 4;   // Space between rows
    const int HORIZONTAL_SPACING = 4;  // Space between columns
    
    // Calculate total board dimensions including spacing
    const int BOARD_PIXEL_WIDTH = (BOARD_SIZE * CELL_WIDTH) + ((BOARD_SIZE - 1) * HORIZONTAL_SPACING);
    const int BOARD_PIXEL_HEIGHT = (BOARD_SIZE * CELL_HEIGHT) + ((BOARD_SIZE - 1) * VERTICAL_SPACING);
    
    // Calculate starting position to center the board
    const int startX = (DISPLAY_WIDTH - BOARD_PIXEL_WIDTH) / 2;
    const int startY = (DISPLAY_HEIGHT - BOARD_PIXEL_HEIGHT) / 2;
    
    // Draw board cells and vertical lines
    for (int i = 0; i < BOARD_SIZE; i++) {
        int currentY = startY + (i * (CELL_HEIGHT + VERTICAL_SPACING));
        
        for (int j = 0; j < BOARD_SIZE; j++) {
            int currentX = startX + (j * (CELL_WIDTH + HORIZONTAL_SPACING));
            
            // Center the symbol within the cell
            int symbolX = currentX + ((CELL_WIDTH - SYMBOL_WIDTH) / 2);
            display_set_cursor(symbolX, currentY + (CELL_HEIGHT / 2));
            
            // Draw the cell content
            if (board[i][j] == PLAYER_X) {
                printf(" X ");
            } else if (board[i][j] == PLAYER_O) {
                printf(" O ");
            } else {
                if (i == selectedRow && j == selectedCol && currentPlayer == PLAYER_X) {
                    printf(" * ");
                } else {
                    printf(" - ");
                }
            }
            
            // Draw vertical dividers
            if (j < BOARD_SIZE - 1) {
                int dividerX = currentX + CELL_WIDTH + (HORIZONTAL_SPACING / 2);
                for (int k = 0; k < CELL_HEIGHT; k++) {
                    display_set_cursor(dividerX, currentY + k);
                    printf("|");
                }
            }
        }
        
        // Draw horizontal dividers after each row (except the last)
        if (i < BOARD_SIZE - 1) {
            int dividerY = currentY + CELL_HEIGHT + (VERTICAL_SPACING / 2);
            
            // Draw horizontal lines segment by segment
            for (int j = 0; j < BOARD_SIZE; j++) {
                int segmentStartX = startX + (j * (CELL_WIDTH + HORIZONTAL_SPACING));
                
                // Draw the horizontal line for this segment
                for (int k = 0; k < CELL_WIDTH; k++) {
                    display_set_cursor(segmentStartX + k, dividerY);
                    printf("-");
                }
                
                // Draw intersection points where vertical and horizontal lines meet
                if (j < BOARD_SIZE - 1) {
                    display_set_cursor(segmentStartX + CELL_WIDTH + (HORIZONTAL_SPACING / 2), dividerY);
                    printf("+");
                }
            }
        }
    }
    display_refresh();
}
// Function for the bot to make a move
void botMove() {
    int emptyCells[BOARD_SIZE * BOARD_SIZE][2];  // Store coordinates of empty cells
    int emptyCount = 0;
    
    // Find all empty cells
    for (int i = 0; i < BOARD_SIZE; i++) {
        for (int j = 0; j < BOARD_SIZE; j++) {
            if (board[i][j] == EMPTY) {
                emptyCells[emptyCount][0] = i;
                emptyCells[emptyCount][1] = j;
                emptyCount++;
            }
        }
    }
    
    if (emptyCount > 0) {
        // Generate a pseudo-random index using board state
        int hash = 0;
        for (int i = 0; i < BOARD_SIZE; i++) {
            for (int j = 0; j < BOARD_SIZE; j++) {
                hash = hash * 31 + board[i][j];  // Simple hash function
            }
        }
        
        // Use current game state as additional entropy
        static int moveCounter = 0;
        moveCounter++;
        hash = hash * 17 + moveCounter * 13;
        
        // Ensure positive value and get index within range
        hash = (hash < 0) ? -hash : hash;
        int selectedIndex = hash % emptyCount;
        
        // Make the move
        int row = emptyCells[selectedIndex][0];
        int col = emptyCells[selectedIndex][1];
        board[row][col] = PLAYER_O;
        needsRedraw = 1;
        return;
    }
}


// Function to handle player input
void handlePlayerInput() {
    // Handle button presses to move selection
    if (UP_BUTTON) {
        selectedRow = (selectedRow - 1 + BOARD_SIZE) % BOARD_SIZE;
        needsRedraw = 1;  // Board needs an update
    }
    if (DOWN_BUTTON) {
        selectedRow = (selectedRow + 1) % BOARD_SIZE;
        needsRedraw = 1;  // Board needs an update
    }
    if (BACK_BUTTON) {
        selectedCol = (selectedCol - 1 + BOARD_SIZE) % BOARD_SIZE;
        needsRedraw = 1;  // Board needs an update
    }
    if (LAUNCH_BUTTON) {
        selectedCol = (selectedCol + 1) % BOARD_SIZE;
        needsRedraw = 1;  // Board needs an update
    }

    // Handle placing "X" in selected spot
    if (FWD_BUTTON && board[selectedRow][selectedCol] == EMPTY) {
        board[selectedRow][selectedCol] = PLAYER_X;
        gameOver = checkGameOver();
        currentPlayer = PLAYER_O;  // Switch to bot's turn
        needsRedraw = 1;  // Board needs an update
    }
}

// Function to start the Tic-Tac-Toe game
void startTicTacToe() {
    initBoard();
    gameOver = 0;
    currentPlayer = PLAYER_X;

    while (!gameOver) {
        if (currentPlayer == PLAYER_X) {
            handlePlayerInput();  // Player's turn (using buttons)
        } else {
            botMove();  // Bot's turn
            currentPlayer = PLAYER_X;
        }
        renderBoard();  // Render the board only if needed
        gameOver = checkGameOver();  // Check if the game is over
    }

    display_set_cursor(0, 60);
    // Display the result
    if (gameOver == 1) {
        printf("===== Player X Wins! ===== ");  // Player X won
        playMusicFromPath("/Game/you_win.raw");
    } else if (gameOver == 2) {
        printf("===== Player O Wins!===== ");  // Player O won
        playMusicFromPath("/Game/you_lose.raw");
    } else if (gameOver == 3) {
        printf("=====  It's a Draw! ===== ");  // Draw
    }
    display_refresh();

    delay_ms(2000);  // Add a delay between turns (1 second)
}
