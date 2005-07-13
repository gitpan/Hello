#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

#include "ppport.h"

#include "const-c.inc"

MODULE = Hello		PACKAGE = Hello		

INCLUDE: const-xs.inc

long 
_testit(IN t, IN t1, OUT p, perror)
     SV* t;
     SV* t1;
     long p;
     SV* perror;
     PREINIT:
     	long pagecount;
    	PerlIO* hFile = (PerlIO *)SvIV(t);
    	long docs = 1;
     CODE:
     {
     	p = 10;
     	pagecount = 10;
     	RETVAL = pagecount;
     }
     OUTPUT:
     	p
     	perror
     	RETVAL

