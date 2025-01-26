#ifndef MUSIC_H
#define MUSIC_H

#include <string.h>

#include "config.h"
#include "sdcard.h"
#include "std.h"

#include "oled.h"
#include "display.h"
#include "printf.h"
#include "fat_io_lib/src/fat_filelib.h"

#include "tic_tac_toe.h"

// Define constants
#define MAX_FILES 10
#define MAX_FILENAME_LEN 100
#define MAX_PATH_LEN 256

// Function prototypes
int initializeSDCard();
void clearAudioBuffer();
void listAlbums();
void listAlbumFiles(const char *albumName);
void updateProgressBar(FL_FILE *file, long totalSize, int progressBarWidth);
void playMusicFile(const char *albumName, const char *fileName);
void displayAlbumMenu(int selectedIndex, int *pulse);
void displayMusicMenu(const char *albumName, int selectedIndex);
void playMusicFromPath(const char *musicPath);

#endif // MUSIC_H
