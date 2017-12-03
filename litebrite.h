
#ifndef lb_h

#define lb_h
#include<stdio.h>
#include<ncurses.h>
#include<locale.h>
void liteb_init();
void liteb_clear(int color);
void liteb_update();
void liteb_setblock(int x, int y, int color);
void liteb_exit();

#endif
