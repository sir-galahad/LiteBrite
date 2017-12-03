#include "litebrite.h"

int main(int argc, char **argv)
{
    int x,y;
    liteb_init();
    for(y=0;y<=100;y++){
        liteb_clear(0);
        for(x=0;x<16;x++){
            liteb_setblock(y+x,4,x);
            liteb_setblock(y+x,5,x);
        }
        liteb_update();
        sleep(1);
    }
    liteb_exit();
}
