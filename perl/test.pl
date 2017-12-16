#!/usr/bin/perl

use strict;
use LiteBrite qw(
    liteb_init
    liteb_clear
    liteb_setblock
    liteb_update
    liteb_exit
    liteb_getkey
    liteb_get_maxx
    liteb_get_maxy
    liteb_getcolors
);
    

liteb_init();
my %colors=liteb_getcolors();
liteb_clear($colors{blue});
liteb_setblock(10,10,$colors{green});
&LiteBrite::liteb_update();

while(1){
}
