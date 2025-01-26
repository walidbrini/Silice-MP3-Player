#include "tama_mini02_font.h"
#include "config.h"
#include "oled.h"
#include "display.h"
#include "std.h"

int cursor_x;
int cursor_y;
unsigned char front_color;
unsigned char back_color;

#ifdef HWFBUFFER
#define framebuffer ((volatile unsigned char *)DISPLAY)
#else
unsigned char framebuffer[128*128];
#endif

// Generate a 256-color RGB palette (8x8x4 = 256 colors)
unsigned char palette[256][3];

void generate_palette() {
    int index = 0;
    
    // Generate 256 colors (8 red levels x 8 green levels x 4 blue levels)
    for (int r = 0; r < 8; r++) {
        for (int g = 0; g < 8; g++) {
            for (int b = 0; b < 4; b++) {
                palette[index][0] = (r * 255) / 7;    // 8 levels (0-255)
                palette[index][1] = (g * 255) / 7;    // 8 levels (0-255)
                palette[index][2] = (b * 255) / 3;    // 4 levels (0-255)
                index++;
            }
        }
    }
}

volatile unsigned char *display_framebuffer()
{
    return framebuffer;
}

void display_set_cursor(int x, int y)
{
    cursor_x = x;
    cursor_y = y;
}

void display_set_front_back_color(unsigned char f, unsigned char b)
{
    front_color = f;
    back_color = b;
}

void display_putchar(int c)
{
    if (c == 10) {
        // next line
        cursor_x = 0;
        cursor_y += 8;
        if (cursor_y >= 128) {
            cursor_y = 0;
        }
        return;
    }
    if (c >= 32) {
        for (int j = 0; j < 8; j++) {
            for (int i = 0; i < 5; i++) {
                framebuffer[(cursor_y + j) + ((cursor_x+i)<<7)]
                    = (font[c-32][i] & (1<<j)) ? front_color : back_color;
            }
        }
    }
    cursor_x += 5;
    if (cursor_x >= 128) {
        cursor_x = 0;
        cursor_y += 8;
        if (cursor_y >= 128) {
            cursor_y = 0;
        }
    }
}

void display_refresh()
{
    #ifndef HWFBUFFER
    // Generate palette only once
    static int palette_generated = 0;
    if (!palette_generated) {
        generate_palette();
        palette_generated = 1;
    }

    unsigned char *ptr = framebuffer;
    for (int y = 0; y < 128; y++) {
        for (int x = 0; x < 128; x++) {
            // Get index directly from framebuffer - no need to divide by 4
            unsigned char index = *ptr;
            ptr++;
            
            // Look up RGB values in palette
            unsigned char r = palette[index][0];
            unsigned char g = palette[index][1];
            unsigned char b = palette[index][2];
            
            // Send to display
            oled_pix(r, g, b);
            oled_wait();
        }
    }
    #endif
}

void dual_putchar(int c)
{
    display_putchar(c);
    uart_putchar(c);
}