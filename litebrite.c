
#include <ncurses.h>
#include "litebrite.h"

chtype lb_colors[16];
extern char ** environ;

void liteb_init()
{
    int x;
	int is_xterm = 0;

	setlocale(LC_ALL, "C");
	
	for(x=0;environ[x] != NULL;x++){
		if(!strcmp(environ[x],"TERM=xterm")){
			is_xterm = 1;
		}
	}

    initscr();
    start_color();
    cbreak();
    noecho();
    nonl();
    intrflush(stdscr, FALSE);
    keypad(stdscr,TRUE);
	nodelay(stdscr,TRUE);
    curs_set(0); 
    for(x=0;x<8;x++){
        init_pair(x,x,x);
    }
    init_pair(x,0,0);
	if(!is_xterm){
		lb_colors[0] = COLOR_PAIR(8) | ACS_BLOCK;
		lb_colors[1] = A_BOLD | COLOR_PAIR(8) | ACS_BLOCK;
	}else{
		lb_colors[0] = COLOR_PAIR(8) | ' ';
		lb_colors[1] = A_BOLD | COLOR_PAIR(8) | ' ' | A_REVERSE;
	}

    for(x=1;x<8;x++){
		if(!is_xterm){
			lb_colors[x*2] = COLOR_PAIR(x) | ACS_BLOCK;
			lb_colors[x*2+1] = A_BOLD | COLOR_PAIR(x) | ACS_BLOCK;
		}else{
			lb_colors[x*2] = COLOR_PAIR(x) | ' ';
			lb_colors[x*2+1] = A_BOLD | COLOR_PAIR(x) | ' ' | A_REVERSE;
		}
    }
}

void liteb_clear(int color)
{
    bkgdset(lb_colors[color]);
    erase();
}

void liteb_update()
{
    wnoutrefresh(stdscr);
    doupdate();
}

void liteb_setblock(int x, int y, int color)
{
    mvaddch(y,x,lb_colors[color]);
}

int liteb_get_maxx()
{
	return getmaxx(stdscr)-1;
}

int liteb_get_maxy()
{
	return getmaxy(stdscr)-1;
}
void liteb_exit()
{
    endwin();
}

int liteb_getkey(void)
{
	return getch();
}

