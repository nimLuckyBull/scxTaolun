/* Generated by Nim Compiler v0.11.0 */
/*   (c) 2015 Andreas Rumpf */
/* The generated code is subject to the original license. */
/* Compiled for: Windows, i386, gcc */
/* Command for C compiler:
   gcc.exe -c  -w  -IC:\Nim\lib -o d:\nim\2015-7-30\nimcache\stdlib_parseutils.o d:\nim\2015-7-30\nimcache\stdlib_parseutils.c */
#define NIM_INTBITS 32
#include "nimbase.h"
static N_INLINE(void, nimFrame)(TFrame* s);
N_NOINLINE(void, stackoverflow_20001)(void);
static N_INLINE(void, popFrame)(void);
extern TFrame* frameptr_17042;

static N_INLINE(void, nimFrame)(TFrame* s) {
	NI LOC1;
	LOC1 = 0;
	{
		if (!(frameptr_17042 == NIM_NIL)) goto LA4;
		LOC1 = ((NI) 0);
	}
	goto LA2;
	LA4: ;
	{
		LOC1 = ((NI) ((NI16)((*frameptr_17042).calldepth + ((NI16) 1))));
	}
	LA2: ;
	(*s).calldepth = ((NI16) (LOC1));
	(*s).prev = frameptr_17042;
	frameptr_17042 = s;
	{
		if (!((*s).calldepth == ((NI16) 2000))) goto LA9;
		stackoverflow_20001();
	}
	LA9: ;
}

static N_INLINE(void, popFrame)(void) {
	frameptr_17042 = (*frameptr_17042).prev;
}
NIM_EXTERNC N_NOINLINE(void, stdlib_parseutilsInit)(void) {
	nimfr("parseutils", "parseutils.nim")
	popFrame();
}

NIM_EXTERNC N_NOINLINE(void, stdlib_parseutilsDatInit)(void) {
}

