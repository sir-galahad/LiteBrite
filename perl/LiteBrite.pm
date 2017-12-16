require XSLoader;
require Exporter;

package LiteBrite;
XSLoader::load('LiteBrite');

@ISA = qw(Exporter);
@EXPORT_OK = qw(
    liteb_init
    liteb_clear
    liteb_update
    liteb_setblock
    liteb_get_maxx
    liteb_get_maxy
    liteb_getkey
    liteb_exit
    liteb_getcolors
);

sub liteb_getcolors{
    my %colors = (
	black => 0,
        bblack => 1,
	red => 2,
        bred => 3,
	green => 4,
        bgreen => 5,
	yellow => 6,
        byellow => 7,
	blue => 8,
        bblue => 9,
	purple => 10,
        bpurple => 11,
	cyan => 12,
        bcyan => 13,
	white => 14,
        bwhite => 15,
    );
    return %colors;
}

1;
