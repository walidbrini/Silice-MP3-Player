
#include "music.h"

// Arrays to store music and album information
extern char musicAlbums[MAX_FILES][MAX_FILENAME_LEN];
extern char musicFiles[MAX_FILES][MAX_FILENAME_LEN];
extern int albumCount ;
extern int musicFileCount ;

// Init SdCard
int initializeSDCard() {
    while (fl_attach_media(sdcard_readsector, sdcard_writesector) != FAT_INIT_OK) {
        // Keep trying to initialize SD card
    }
    return 1;
}

// Clear Audio Buffer
void clearAudioBuffer() {
    int *addr = (int *)(*AUDIO);
    while (addr == (int *)(*AUDIO)) {}
    for (int b = 0; b < 2; ++b) {
        addr = (int *)(*AUDIO);
        memset(addr, 0, 512);
        while (addr == (int *)(*AUDIO)) {}
    }
}

// List all albums in the music directory
void listAlbums() {
    initializeSDCard();
    FL_DIR dirStat;
    albumCount = 0;
    
    if (fl_opendir("/music", &dirStat)) {
        struct fs_dir_ent dirent;
        while (fl_readdir(&dirStat, &dirent) == 0 && albumCount < MAX_FILES) {
            if (dirent.is_dir && dirent.filename[0] != '.') {
                strncpy(musicAlbums[albumCount], dirent.filename, MAX_FILENAME_LEN - 1);
                musicAlbums[albumCount][MAX_FILENAME_LEN - 1] = '\0';
                ++albumCount;
            }
        }
        fl_closedir(&dirStat);
    }
}

// List all music files in the selected album
void listAlbumFiles(const char *albumName) {
    char path[MAX_PATH_LEN];
    strcpy(path, "/music/");
    strcat(path, albumName);
    
    initializeSDCard();
    FL_DIR dirStat;
    musicFileCount = 0;
    
    if (fl_opendir(path, &dirStat)) {
        struct fs_dir_ent dirent;
        while (fl_readdir(&dirStat, &dirent) == 0 && musicFileCount < MAX_FILES) {
            if (!dirent.is_dir) {
                strncpy(musicFiles[musicFileCount], dirent.filename, MAX_FILENAME_LEN - 1);
                musicFiles[musicFileCount][MAX_FILENAME_LEN - 1] = '\0';
                ++musicFileCount;
            }
        }
        fl_closedir(&dirStat);
    }
}

// Update the progressBar
void updateProgressBar(FL_FILE *file, long totalSize, int progressBarWidth) {
    long currentPosition = fl_ftell(file);
    int progress = (int)((currentPosition * progressBarWidth) / totalSize);

    display_set_cursor(0, 115);
    printf("[");

    for (int i = 0; i < progressBarWidth; i++) {
        printf(i < progress ? "=" : " ");
    }
    printf("]%d%%\n", (currentPosition * 100) / totalSize);
}

// Play music from a specified path
void playMusicFromPath(const char *musicPath) {
    // Initialize SD card
    initializeSDCard();

    // Open the music file
    FL_FILE *file = fl_fopen(musicPath, "rb");
    
    if (file == NULL) {
        printf("File not found: %s\n", musicPath);
        return;
    }
    // Start playing the music
    int *addr = (int *)(*AUDIO);
    while (1) {
      // read directly in hardware buffer
      int *addr = (int*)(*AUDIO);
      // (use 512 bytes reads to avoid extra copies inside fat_io_lib)
      int sz = fl_fread(addr,1,512,file);
      if (sz < 512) break; // reached end of file
      // wait for buffer swap
      while (addr == (int*)(*AUDIO)) { }
    }

    // Cleanup
    clearAudioBuffer();
    fl_fclose(file);
}


// Play music and show the correponding image file  
void playMusicFile(const char *albumName, const char *fileName) {
    char filePath[MAX_PATH_LEN];
    char imagePath[MAX_PATH_LEN];
    
    strcpy(filePath, "/music/");
    strcat(filePath, albumName);
    strcat(filePath, "/");
    strcat(filePath, fileName);
    
    strcpy(imagePath, "/image/");
    strcat(imagePath, albumName);
    strcat(imagePath, "/");
    strcat(imagePath, fileName);
    
    initializeSDCard();
    FL_FILE *file = fl_fopen(filePath, "rb");
    
    if (file == NULL) {
        printf("File not found.\n");
        display_refresh();
    } else {
        // Get file size for progress calculation
        fl_fseek(file, 0, SEEK_END);
        long totalSize = fl_ftell(file);
        fl_fseek(file, 0, SEEK_SET);

        // Initial display setup
        memset(display_framebuffer(), 0x00, 128 * 128);
        oled_clear(0);
        display_set_front_back_color(255, 0);
        
        FL_FILE *imageFile = fl_fopen(imagePath, "rb");
        if (imageFile != NULL) {
            fl_fread(display_framebuffer(), 1, 128 * 128, imageFile);
            fl_fclose(imageFile);
        }

        display_set_cursor(0, 10);
        printf("Track : %s\nAlbum : %s\n", fileName, albumName);
        display_refresh();
        
        int leds = 1;
        int dir = 0;
        int paused = 0;
        int lastLaunchState = 0;
        int lastBackState = 0;
        long lastPosition = 0;
        long lastDisplayUpdate = 0;  // Track last display update
        volatile int debounceDelay = 10000;
        const int progressBarWidth = 20;
        const long UPDATE_INTERVAL = totalSize / 100;  // Update every 1% progress
        const long SKIP_STEP = 1024 * 128;  // Amount to skip forward or backward (512 KB)

        // Initial status message
        display_set_cursor(0, 100); // Set the cursor for the status message
        printf("Status: Playing                \n");
        display_refresh();

        while (1) {
            // Check if BACK_BUTTON is pressed to break from the music
            int currentBack = BACK_BUTTON;
            if (currentBack && !lastBackState) {
                volatile int delay = debounceDelay;
                while (delay--) {}
                if (BACK_BUTTON) {
                    clearAudioBuffer();
                    fl_fclose(file);
                    return;  // Exit the function if BACK_BUTTON is pressed
                }
            }
            lastBackState = currentBack;

            // Forward button functionality
            int currentFwd = FWD_BUTTON;
            if (currentFwd) {
                volatile int delay = debounceDelay;
                while (delay--) {}
                if (FWD_BUTTON) {
                    long currentPosition = fl_ftell(file);
                    long newPosition = currentPosition + SKIP_STEP;
                    if (newPosition < totalSize) {
                        fl_fseek(file, newPosition, SEEK_SET);
                    } else {
                        fl_fseek(file, totalSize, SEEK_SET); // Avoid exceeding file size
                    }
                    display_set_cursor(0, 100); // Update the status location
                    printf("Status: Forwarded                 ");
                    updateProgressBar(file, totalSize, progressBarWidth);
                    display_refresh();
                }
            }

            // Backward button functionality
            int currentBwd = BWD_BUTTON;
            if (currentBwd) {
                volatile int delay = debounceDelay;
                while (delay--) {}
                if (BWD_BUTTON) {
                    long currentPosition = fl_ftell(file);
                    long newPosition = currentPosition - SKIP_STEP;
                    if (newPosition >= 0) {
                        fl_fseek(file, newPosition, SEEK_SET);
                    } else {
                        fl_fseek(file, 0, SEEK_SET); // Avoid going before the beginning
                    }
                    display_set_cursor(0, 100); // Update the status location
                    printf("Status: Rewound                ");
                    updateProgressBar(file, totalSize, progressBarWidth);
                    display_refresh();
                }
            }

            if (!paused) {
                int *addr = (int *)(*AUDIO);
                int size = fl_fread(addr, 1, 512, file);
                if (size < 512) break;

                // Only update display periodically to avoid disrupting audio
                long currentPosition = fl_ftell(file);
                if (currentPosition - lastDisplayUpdate > UPDATE_INTERVAL) {
                    updateProgressBar(file, totalSize, progressBarWidth);
                    display_refresh();
                    lastDisplayUpdate = currentPosition;
                    
                    // Update LEDs less frequently
                    if (leds == 128 || leds == 1) dir = 1 - dir;
                    leds = dir ? (leds << 1) : (leds >> 1);
                    *LEDS = leds;
                }

                // Check buttons while waiting for buffer
                while (addr == (int *)(*AUDIO)) {
                    int currentLaunch = LAUNCH_BUTTON;
                    
                    // Handle pause button
                    if (currentLaunch && !lastLaunchState) {
                        volatile int delay = debounceDelay;
                        while (delay--) {}
                        if (LAUNCH_BUTTON) {
                            while (LAUNCH_BUTTON) {}
                            delay = debounceDelay;
                            while (delay--) {}
                            
                            paused = 1;
                            lastPosition = fl_ftell(file);
                            clearAudioBuffer();
                            display_set_cursor(0, 100); // Update status to show "Paused"
                            printf("Status: Paused                ");
                            display_refresh();
                            break;
                        }
                    }
                    lastLaunchState = currentLaunch;
                }

                if (paused) continue;
            } else {
                // Handle pause/unpause
                int currentLaunch = LAUNCH_BUTTON;
                if (currentLaunch && !lastLaunchState) {
                    volatile int delay = debounceDelay;
                    while (delay--) {}
                    
                    if (LAUNCH_BUTTON) {
                        while (LAUNCH_BUTTON) {}
                        delay = debounceDelay;
                        while (delay--) {}
                        
                        paused = 0;
                        fl_fseek(file, lastPosition, SEEK_SET);
                        display_set_cursor(0, 100); // Update status to show "Playing"
                        printf("Status: Playing\n");
                        display_refresh();
                    }
                }
                lastLaunchState = currentLaunch;
            }
        }

cleanup:
        clearAudioBuffer();
        fl_fclose(file);
    }
}

// Display the album selection menu
void displayAlbumMenu(int selectedIndex, int* pulse) {
    memset(display_framebuffer(), 0x00, 128 * 128);
    display_set_cursor(0, 0);
    display_set_front_back_color(*pulse, 0);
    *pulse = (*pulse + 7)%255 ; 

    printf("    ===== Albums =====    \n\n");

    for (int i = 0; i < albumCount; ++i) {
        if (i == selectedIndex) {
            display_set_front_back_color(0, 255);
        } else {
            display_set_front_back_color(255, 0);
        }
        printf("%d> %s\n", i + 1, musicAlbums[i]);
    }

    display_refresh();
}

// Display the music selection menu for an album
void displayMusicMenu(const char *albumName, int selectedIndex) {
    memset(display_framebuffer(), 0x00, 128 * 128);
    display_set_cursor(0, 0);
    display_set_front_back_color(255, 0);
    printf("Album: %s\n\n", albumName);

    for (int i = 0; i < musicFileCount; ++i) {
        if (i == selectedIndex) {
            display_set_front_back_color(0, 255);
        } else {
            display_set_front_back_color(255, 0);
        }
        printf("%d> %s\n", i + 1, musicFiles[i]);
    }

    display_refresh();
}
