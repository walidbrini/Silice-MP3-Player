#include <string.h>
#include "config.h"
#include "sdcard.h"
#include "std.h"
#include "oled.h"
#include "display.h"
#include "printf.h"
#include "fat_io_lib/src/fat_filelib.h"
#include "tic_tac_toe.h"
#include "music.h"

#define UP_BUTTON *BUTTONS & (1 << 3)
#define DOWN_BUTTON *BUTTONS & (1 << 4)
#define LAUNCH_BUTTON *BUTTONS & (1 << 6)
#define BACK_BUTTON *BUTTONS & (1 << 5)
#define FWD_BUTTON *BUTTONS & (1 << 2)
#define BWD_BUTTON *BUTTONS & (1 << 1)

// Define the variables here (only once)
char musicAlbums[MAX_FILES][MAX_FILENAME_LEN];
char musicFiles[MAX_FILES][MAX_FILENAME_LEN];
int albumCount = 0;
int musicFileCount = 0;

// Welcome screen function remains the same
void welcome_screen() {
    FL_FILE *imageFile = fl_fopen("/Startup/Startup_image.raw", "rb");
    if (imageFile == NULL) {
        printf("Startup image not found.\n");
        display_refresh();
    } else {
        display_refresh();
        fl_fread(display_framebuffer(), 1, 128*128, imageFile);
        display_refresh();
        fl_fclose(imageFile);
    }

    FL_FILE *musicFile = fl_fopen("/Startup/Startup_music.raw", "rb");
    if (musicFile == NULL) {
        printf("file not found.\n");
        display_refresh();
    } else {
        display_set_front_back_color(0,255);
        display_refresh();
        display_set_front_back_color(255,0);
        display_refresh();
        
        int leds = 1;
        int dir = 0;
        
        while (1) {
            int *addr = (int*)(*AUDIO);
            int sz = fl_fread(addr, 1, 512, musicFile);
            if (sz < 512) break;
            while (addr == (int*)(*AUDIO)) {}
        }
        
        clearAudioBuffer();
        fl_fclose(musicFile);
    }
}

// Check if EasterEgg is pressed 
void checkEasterEgg() {
  if (UP_BUTTON && DOWN_BUTTON) {
    startTicTacToe();
  }
}

void main() {
    f_putchar = display_putchar;

    oled_init();
    oled_fullscreen();
    memset(display_framebuffer(), 0x00, 128 * 128);
    display_refresh();

    display_set_cursor(0, 0);
    display_set_front_back_color(255, 0);
    printf("Initializing... ");
    display_refresh();

    sdcard_init();
    fl_init();
    initializeSDCard();
    printf("done.\n");
    display_refresh();

    welcome_screen();
    listAlbums();

    if (albumCount == 0) {
        printf("No albums found.\n");
        display_refresh();
        return;
    }

    int selectedAlbumIndex = 0;
    int selectedMusicIndex = 0;
    int inAlbumView = 1;  // true when viewing albums, false when viewing songs
    int pulse = 0 ; 
    while (1) {
        checkEasterEgg() ; 
        if (inAlbumView) {
            displayAlbumMenu(selectedAlbumIndex, &pulse);

            if (DOWN_BUTTON) {
                selectedAlbumIndex = (selectedAlbumIndex + 1) % albumCount;
            }
            if (UP_BUTTON) {
                selectedAlbumIndex = (selectedAlbumIndex - 1 + albumCount) % albumCount;
            }
            if (LAUNCH_BUTTON) {
                while (LAUNCH_BUTTON) {}
                listAlbumFiles(musicAlbums[selectedAlbumIndex]);
                if (musicFileCount > 0) {
                    selectedMusicIndex = 0;
                    inAlbumView = 0;
                }
            }
        } else {
            displayMusicMenu(musicAlbums[selectedAlbumIndex], selectedMusicIndex);

            if (DOWN_BUTTON) {
                selectedMusicIndex = (selectedMusicIndex + 1) % musicFileCount;
            }
            if (UP_BUTTON) {
                selectedMusicIndex = (selectedMusicIndex - 1 + musicFileCount) % musicFileCount;
            }
            if (LAUNCH_BUTTON) {
                while (LAUNCH_BUTTON) {}
                playMusicFile(musicAlbums[selectedAlbumIndex], musicFiles[selectedMusicIndex]);
            }
            if (BACK_BUTTON) {
                while (BACK_BUTTON) {}
                inAlbumView = 1;
            }
        }
    }
}