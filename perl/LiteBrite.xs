#define PERL_NO_GET_CONTEXT
#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"
#include <litebrite.h>

MODULE = LiteBrite PACKAGE = LiteBrite
PROTOTYPES: ENABLE
void
liteb_init();

void 
liteb_clear(int color);

void
liteb_update();

void 
liteb_setblock(int x, int y, int color);

int 
liteb_get_maxx();

int 
liteb_get_maxy();

void 
liteb_exit();
