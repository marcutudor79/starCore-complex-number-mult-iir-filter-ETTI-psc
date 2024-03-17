;***********************************************************************
;
; StarCore C Compiler MSWin32 Version 308 Build 22
; Version date Mar  7 2008 10:59:36 (zro03-ws254)
;
; Compilation date :	Tue Dec 05 00:42:54 2023
; File Name :		D:\_code\dsp-complex-mult-ETTI-psc\optimized\cw/main.sl
; Invocation line: scc -r D:\_code\dsp-complex-mult-ETTI-psc\optimized\cw -g -ge -env C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler -be -arch sc140 -c -s -sc -mod -O2 -I . -I ..\src -I C:\Users\Tudor\Desktop -I- -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\include -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\src\rtlib\expanded -o 441F_MARCULESCU_Tudor_Data\C_for_SC_Simulator\ObjectCode\main.eln D:\_code\dsp-complex-mult-ETTI-psc\optimized\src\main.c
;
;***********************************************************************
     .FILE	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/main.c"
;%%%%%%%%%%%%%   Source Files:  %%%%%%%%%%%%%
;file 1 "D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/main.c"
;file 2 "D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/functions.h"
;file 3 "D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/constants.h"
;file 4 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/ansi_parms.h"
;file 5 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/cstddef"
;file 6 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/stddef.h"
;file 7 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/ioprim.h"
;file 8 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/cstdarg"
;file 9 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/cstdio"
;file 10 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/os_enum.h"
;file 11 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/ansi_prefix_StarCore.h"
;file 12 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/mslGlobals.h"
;file 13 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/msl_c_version.h"
;file 14 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/stdio.h"
;file 15 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/prototype.h"
;file 16 "D:/_build/eb22_3x00_sp8_pre4/_library/src/host/prototype.c"
;file 17 "D:/_build/eb22_3x00_sp8_pre4/_library/include/prototype.h"
;%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
     OPT BE
     IF !@DEF('.slld') 
     DEFINE .slld '0'                ; tell the assembler if the support for long long & double was enabled
     ENDIF 
;PRAGMA opt_mw_info 1
     NOTE "SCC Version 308 Build 22"
     NOTE "MW FrontEnd (mwfe:V.18) for the Enterprise Compiler ( V4.0 ),  compiled the Feb 28 2008 at 20:55:25"
     NOTE "Saxo Tools Linker Icode Optimizer V4.0, version of Mar  6 2008 18:43:18, internal Icode, icode-2-170[EB22SP8/EB22SP8] for SC"
     NOTE "StarCore LLT Version Engineering Build 22 SP8, Compiled on Mar  7 2008 10:59:36 (zro03-ws254) [Internal release version: MDCR_270.5-3_Fri Mar 7 10:49:00 EEDT 2008 ]"
     NOTE "Invocation line: scc -r D:\_code\dsp-complex-mult-ETTI-psc\optimized\cw -g -ge -env C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler -be -arch sc140 -c -s -sc -mod -O2 -I . -I ..\src -I C:\Users\Tudor\Desktop -I- -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\include -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\src\rtlib\expanded -o 441F_MARCULESCU_Tudor_Data\C_for_SC_Simulator\ObjectCode\main.eln D:\_code\dsp-complex-mult-ETTI-psc\optimized\src\main.c "


;PRAGMA dictionary v118 _i
;PRAGMA dictionary v119 _fp
;PRAGMA dictionary v120 _sc_im
;PRAGMA dictionary v121 _sc_re
;PRAGMA dictionary v122 _out
;PRAGMA dictionary v123 _in_aligned
;PRAGMA dictionary v124 _in

	SECTION	.data	LOCAL
	SECFLAGS ALLOC,WRITE,NOEXECINSTR
	ALIGN	1

	SECTYPE PROGBITS
v113	TYPE VARIABLE REF_BY_ADDR
	SIZE v113,68,1
    DCB      "Input: in_re[], in_im[], sc_re," 
    DCB      " sc_im.   Result out_re[], out_" 
    DCB      "im[]",10,0         
v117	TYPE VARIABLE REF_BY_ADDR
	SIZE v117,28,1
    DCB      10,"Nu s-a deschis  output.dat",0 
v112	TYPE VARIABLE REF_BY_ADDR
	SIZE v112,26,1
    DCB      10,"Nu s-a deschis input.dat",0 
v114	TYPE VARIABLE REF_BY_ADDR
	SIZE v114,24,1
    DCB      "%d, %d, %d, %d, %d, %d",10,0 
v115	TYPE VARIABLE REF_BY_ADDR
	SIZE v115,14,1
    DCB      "../output.dat",0   
v110	TYPE VARIABLE REF_BY_ADDR
	SIZE v110,13,1
    DCB      "../input.dat",0    
v116	TYPE VARIABLE REF_BY_ADDR
	SIZE v116,4,1
    DCB      "w+b",0             
v111	TYPE VARIABLE REF_BY_ADDR
	SIZE v111,4,1
    DCB      "r+b",0             

	ENDSEC


	SECTION .text LOCAL
	SECFLAGS ALLOC,NOWRITE,EXECINSTR
	SECTYPE PROGBITS
TextStart_main


;***********************************************************************
;
; Function _main, ; Stack frame size: 264 (0 from LLT)
;
; Calling Convention: 1
;
; Returned value  ret_main   passed in register d0 
;
;***********************************************************************

	GLOBAL	_main
	ALIGN	16
_main	TYPE	func OPT_SPEED
	SIZE _main,F_main_end-_main,16
;PRAGMA stack_effect _main,272
_mainOptimized_away_inline_blocks
DW1
F_main_blockstart
 [
    clr      d0                         ;[10,1]
    push     d6                         ;[6,1]
    push     d7                         ;[6,1]
 ]
DW_2
DW2
 [
    push     r6                         ;[6,1]
    push     r7                         ;[6,1]
 ]
DW_3
DW3
 [
    move.w   #264,r6                    ;[6,1]
    doensh3  #<17                       ;[10,1]
 ]
DW4
    nop                           ;[0,0] AGU stall
DW5
    adda     r6,sp                ;[6,1]
DW_6
DW6
    adda     #>-196,sp,r2         ;[10,1]
    LOOPSTART3                   
DW7
    move.l   d0,(r2)+             ;[10,1]
    LOOPEND3                     
DW8
 [
    clr      d2                         ;[12,1]
    doensh3  #<17                       ;[12,1]
    adda     #>-264,sp,r3               ;[12,1]
 ]
DW9
    nop                           ;[0,0] L_D_3
    LOOPSTART3                   
DW10
    move.l   d2,(r3)+             ;[12,1]
    LOOPEND3                     
DW11
 [
    clr      d3                         ;[15,1]
    doensh3  #<17                       ;[15,1]
    adda     #>-128,sp,r4               ;[15,1]
 ]
DW12
    nop                           ;[0,0] L_D_3
    LOOPSTART3                   
DW13
    move.l   d3,(r4)+             ;[15,1]
    LOOPEND3                     
DW14
    move.l   #v111,r1             ;[24,1]
DW15
    jsrd     _fopen               ;[24,1]
DW16
    move.l   #v110,r0             ;[24,1]
DW17
 [
    move.l   r0,(sp-60)                 ;[24,1]
    move.l   r0,(sp-8)                  ;[27,1]
 ]
DW18
 [
    move.w   #34,d4                     ;[27,1]
    move.w   #<2,d1                     ;[27,1]
 ]
DW19
    jsrd     _fread               ;[27,1]
DW20
 [
    move.l   d4,(sp-4)                  ;[27,1]
    adda     #>-196,sp,r0               ;[27,1]
 ]
DW21
    move.l   (sp-60),d5           ;[28,1]
DW22
    tsteq    d5                   ;[28,1]
DW23
    nop                           ;[0,0] TBIT stall
DW24
    IFT moveu.l  #v112,d6         ;[29,1]
DW25
    IFT jsrd     _printf          ;[29,1]
DW26
    IFT move.l   d6,(sp-4)        ;[29,1]
DW27
    jsrd     _fclose              ;[30,1]
DW28
    move.l   (sp-60),r0           ;[30,1]
DW29
 [
    adda     #>-194,sp,r2               ;[34,1]
    move.w   #32,d1                     ;[37,1]
 ]
DW30
 [
    move.w   (r2),d0                    ;[34,1]
    adda     #>2,r2,r1                  ;[37,1]
 ]
DW31
 [
    move.w   (sp-196),d7                ;[33,1]
    move.w   d0,(sp-52)                 ;[34,1]
 ]
DW32
 [
    move.l   r1,(sp-56)                 ;[37,1]
    move.l   d1,(sp-4)                  ;[37,1]
 ]
DW33
    jsrd     _memcpy              ;[37,1]
DW34
    adda     #>-264,sp,r0         ;[37,1]
DW35
 [
    move.w   (sp-52),d0                 ;[40,1]
    move.w   #<32,d2                    ;[40,1]
 ]
DW36
 [
    move.w   d0,(sp-6)                  ;[40,1]
    move.w   d7,(sp-4)                  ;[40,1]
 ]
DW37
 [
    move.w   d2,(sp-2)                  ;[40,1]
    move.l   (sp-56),r1                 ;[40,1]
 ]
DW38
    jsrd     _complex_mult        ;[40,1]
DW39
    adda     #>-128,sp,r0         ;[40,1]
DW40
    moveu.l  #v113,d3             ;[43,1]
DW41
    jsrd     _printf              ;[43,1]
DW42
    move.l   d3,(sp-4)            ;[43,1]
DW43
 [
    move.w   #<32,d4                    ;[0,1]
    adda     #>-126,sp,r0               ;[47,1]
 ]
DW44
 [
    adda     #>-128,sp,r1               ;[47,1]
    adda     #>-190,sp,r2               ;[47,1]
 ]
DW45
 [
    move.l   (sp-56),r3                 ;[47,1]
    move.l   d4,(sp-44)                 ;[0,1]
 ]
DW46
 [
    move.l   r0,(sp-40)                 ;[47,1]
    move.l   r1,(sp-48)                 ;[47,1]
 ]
DW47
 [
    move.l   r2,(sp-32)                 ;[47,1]
    move.l   r3,(sp-36)                 ;[47,1]
 ]
    FALIGN                       
L5
DW48
 [
    move.w   (r3),d0                    ;[47,1]
    move.w   (r1),d1                    ;[47,1]
 ]
DW49
 [
    move.w   (r2),r4                    ;[47,1]
    move.w   (r0),d2                    ;[47,1]
 ]
DW50
 [
    move.w   (sp-52),d3                 ;[47,1]
    moveu.l  #v114,d5                   ;[47,1]
 ]
DW51
 [
    move.l   d2,(sp-28)                 ;[47,1]
    move.l   d1,(sp-24)                 ;[47,1]
 ]
DW52
 [
    move.l   d3,(sp-20)                 ;[47,1]
    move.l   d7,(sp-16)                 ;[47,1]
 ]
DW53
 [
    move.l   r4,(sp-12)                 ;[47,1]
    move.l   d0,(sp-8)                  ;[47,1]
 ]
DW54
    jsrd     _printf              ;[47,1]
DW55
    move.l   d5,(sp-4)            ;[47,1]
DW56
 [
    move.l   (sp-36),r3                 ;[47,1]
    move.l   (sp-32),r2                 ;[47,1]
 ]
DW57
 [
    move.l   (sp-48),r1                 ;[47,1]
    move.l   (sp-40),r0                 ;[47,1]
 ]
DW58
 [
    move.l   (sp-44),d4                 ;[45,1]
    adda     #<2,r3                     ;[47,1]
 ]
DW59
 [
    deceq    d4                         ;[45,1]
    adda     #<2,r2                     ;[47,1]
    adda     #<2,r1                     ;[47,1]
 ]
DW60
 [
    adda     #<2,r0                     ;[47,1]
    move.l   r3,(sp-36)                 ;[47,1]
 ]
DW61
 [
    move.l   r2,(sp-32)                 ;[47,1]
    move.l   r1,(sp-48)                 ;[47,1]
 ]
DW62
    bfd      <L5                  ;[45,1]
DW63
 [
    move.l   r0,(sp-40)                 ;[47,1]
    move.l   d4,(sp-44)                 ;[45,1]
 ]
DW64
    move.l   #v116,r1             ;[51,1]
DW65
    jsrd     _fopen               ;[51,1]
DW66
    move.l   #v115,r0             ;[51,1]
DW67
 [
    move.l   r0,(sp-60)                 ;[51,1]
    move.l   r0,(sp-8)                  ;[54,1]
 ]
DW68
 [
    move.w   #32,d6                     ;[54,1]
    move.w   #<2,d1                     ;[54,1]
 ]
DW69
    jsrd     _fwrite              ;[54,1]
DW70
 [
    move.l   d6,(sp-4)                  ;[54,1]
    adda     #>-128,sp,r0               ;[54,1]
 ]
DW71
    move.l   (sp-60),d7           ;[55,1]
DW72
    tsteq    d7                   ;[55,1]
DW73
    nop                           ;[0,0] TBIT stall
DW74
    IFT moveu.l  #v117,d8         ;[56,1]
DW75
    IFT jsrd     _printf          ;[56,1]
DW76
    IFT move.l   d8,(sp-4)        ;[56,1]
DW77
    jsrd     _fclose              ;[57,1]
DW78
    move.l   d7,r0                ;[57,1]
DW79
 [
    clr      d0                         ;[60,1]
    move.w   #264,r7                    ;[60,1]
 ]
DW80
    nop                           ;[0,0] AGU stall
DW81
    suba     r7,sp                ;[60,1]
DW_82
DW82
 [
    pop      r6                         ;[60,1]
    pop      r7                         ;[60,1]
 ]
DW_83
DW83
 [
    pop      d6                         ;[60,1]
    pop      d7                         ;[60,1]
 ]
DW_84
DW84
    rts                           ;[60,1]
F_main_blockend
DW85

	GLOBAL	F_main_end
F_main_end
FuncEnd_main

TextEnd_main
	ENDSEC

	section	.debug_info debug 
	dcl	DebugInfoEnd_main-DebugInfoStart_main	;Debug Info section length
DebugInfoStart_main:
	dcw	$2
	dcl	DebugAbbrevStart_main
	dcb	$4
A1_main:
		;Tag DW_TAG_compile_unit
	dcb	$1
	dcb	$1	;Attribute DW_AT_language
	dcl	TextStart_main	;Attribute DW_AT_low_pc
	dcl	TextEnd_main	;Attribute DW_AT_high_pc
	dcl	DebugLineStart_main-4	;Attribute DW_AT_stmt_list
	dcl	DebugMacroStart_main	;Attribute DW_AT_macro_info
	dcb	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/main.c",0		;Attribute DW_AT_name
	dcb	"StarCore C Compiler MSWin32 Version 308 Build 22",0		;Attribute DW_AT_producer
	dcb	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/cw",0		;Attribute DW_AT_comp_dir
	dcl	DebugFlowGraphStart_main	;Attribute DW_AT_flow_graph
	dcl	DebugFlowBlocksStart_main	;Attribute DW_AT_flow_blocks
	dcl	DebugVarsReadWriteStart_main	;Attribute DW_AT_vars_rwdi
n1_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"int",0		;Attribute DW_AT_name
n2_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$1	;Attribute DW_AT_byte_size
	dcb	$6	;Attribute DW_AT_encoding
	dcb	"char",0		;Attribute DW_AT_name
n3_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$1	;Attribute DW_AT_byte_size
	dcb	$8	;Attribute DW_AT_encoding
	dcb	"unsigned char",0		;Attribute DW_AT_name
n4_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned int",0		;Attribute DW_AT_name
n5_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned long",0		;Attribute DW_AT_name
n6_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$4	;Attribute DW_AT_encoding
	dcb	"float",0		;Attribute DW_AT_name
n7_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$4	;Attribute DW_AT_encoding
	dcb	"double",0		;Attribute DW_AT_name
n8_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$4	;Attribute DW_AT_encoding
	dcb	"long double",0		;Attribute DW_AT_name
n9_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$0	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"void",0		;Attribute DW_AT_name
n10_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"label array",0		;Attribute DW_AT_name
n13_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$2	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"short",0		;Attribute DW_AT_name
n14_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$2	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned short",0		;Attribute DW_AT_name
n15_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"long",0		;Attribute DW_AT_name
n16_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"long long",0		;Attribute DW_AT_name
n17_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned long long",0		;Attribute DW_AT_name
n20_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$2	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"word16",0		;Attribute DW_AT_name
n21_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"word32",0		;Attribute DW_AT_name
n22_main:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"word64",0		;Attribute DW_AT_name
n27_main:
		;Tag DW_TAG_pointer_type
	dcb	$3
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n3_main-DebugInfoStart_main+4	;Attribute DW_AT_type
t1_main:
		;Tag DW_TAG_structure_type
	dcb	$4
	dcl	$18	;Attribute DW_AT_byte_size
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$0
	dcb	"_cnt",0		;Attribute DW_AT_name
	dcl	n1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$4
	dcb	"_flag",0		;Attribute DW_AT_name
	dcl	n1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$8
	dcb	"_file",0		;Attribute DW_AT_name
	dcl	n1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$c
	dcb	"_bufsiz",0		;Attribute DW_AT_name
	dcl	n1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$10
	dcb	"_buffer",0		;Attribute DW_AT_name
	dcl	n27_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$14
	dcb	"_ptr",0		;Attribute DW_AT_name
	dcl	n27_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;End of List
t2_main:
		;Tag DW_TAG_structure_type
	dcb	$4
	dcl	$8	;Attribute DW_AT_byte_size
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$0
	dcb	"msb",0		;Attribute DW_AT_name
	dcl	n15_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$4
	dcb	"lsb",0		;Attribute DW_AT_name
	dcl	n5_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;End of List
n29_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$3	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$2	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
t3_main:
		;Tag DW_TAG_structure_type
	dcb	$8
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	"Word40",0		;Attribute DW_AT_name
		;Tag DW_TAG_member
	dcb	$5
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$0
	dcb	"body",0		;Attribute DW_AT_name
	dcl	n5_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$3	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$4
	dcb	"gap",0		;Attribute DW_AT_name
	dcl	n29_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$5
	dcl	$1	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$7
	dcb	"ext",0		;Attribute DW_AT_name
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;End of List
n30_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$18	;Attribute DW_AT_byte_size
	dcl	t1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"FILE",0		;Attribute DW_AT_name
n31_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$2	;Attribute DW_AT_byte_size
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Word16",0		;Attribute DW_AT_name
n32_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n4_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"size_t",0		;Attribute DW_AT_name
n33_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n15_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Word32",0		;Attribute DW_AT_name
n34_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$2	;Attribute DW_AT_byte_size
	dcl	n14_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"UWord16",0		;Attribute DW_AT_name
n35_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n5_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"UWord32",0		;Attribute DW_AT_name
n36_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$8	;Attribute DW_AT_byte_size
	dcl	t2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Word64",0		;Attribute DW_AT_name
n37_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$8	;Attribute DW_AT_byte_size
	dcl	t3_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Word40",0		;Attribute DW_AT_name
n38_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$1	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Word8",0		;Attribute DW_AT_name
n39_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n15_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Vector_Type32",0		;Attribute DW_AT_name
n40_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$2	;Attribute DW_AT_byte_size
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Vector_Component16",0		;Attribute DW_AT_name
n41_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$1	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Vector_Component8",0		;Attribute DW_AT_name
n42_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$1	;Attribute DW_AT_byte_size
	dcl	n3_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Vector_ComponentU8",0		;Attribute DW_AT_name
n43_main:
		;Tag DW_TAG_typedef
	dcb	$9
	dcl	$8	;Attribute DW_AT_byte_size
	dcl	t3_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"Vector_Type40",0		;Attribute DW_AT_name
n23_main:
		;Tag DW_TAG_pointer_type
	dcb	$3
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n9_main-DebugInfoStart_main+4	;Attribute DW_AT_type
n138_main:
		;Tag DW_TAG_pointer_type
	dcb	$3
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
n140_main:
		;Tag DW_TAG_pointer_type
	dcb	$3
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	t1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
n150_main:
		;Tag DW_TAG_pointer_type
	dcb	$3
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
n160_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$d	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$c	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
n161_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$3	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
n162_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$1a	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$19	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
n163_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$44	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$c3	;Attribute DW_AT_upper_bound
	dcb	$0
	dcb	$0	;End of List
n164_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$18	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$17	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
n165_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$e	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$d	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
n167_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$1c	;Attribute DW_AT_byte_size
	dcl	n2_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$1b	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
n169_main:
		;Tag DW_TAG_array_type
	dcb	$6
	dcl	$44	;Attribute DW_AT_byte_size
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$7
	dcb	$21	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
lmain_module0_main:
		;Tag DW_TAG_subprogram
	dcb	$a
	dcl	_main	;Attribute DW_AT_low_pc
	dcl	F_main_end	;Attribute DW_AT_high_pc
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$6	;Attribute DW_AT_decl_line
	dcl	n1_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	"main",0		;Attribute DW_AT_name
	dcb	$1	;Attribute DW_AT_external
	dcw	$108	;Attribute DW_AT_sp_offset
	dcl	Frame_base__main_main	;Attribute DW_AT_frame_base
	dcw	Call_0_end_main-Call_0_beg_main	;Attribute DW_AT_calling
Call_0_beg_main:
	dcb	$e2
	dcl	_fopen	;Calling Name
	dcb	$e1
	dcl	DW15	;Calling Address
	dcb	$e2
	dcl	_fread	;Calling Name
	dcb	$e1
	dcl	DW19	;Calling Address
	dcb	$e2
	dcl	_printf	;Calling Name
	dcb	$e1
	dcl	DW25	;Calling Address
	dcb	$e2
	dcl	_fclose	;Calling Name
	dcb	$e1
	dcl	DW27	;Calling Address
	dcb	$e2
	dcl	_memcpy	;Calling Name
	dcb	$e1
	dcl	DW33	;Calling Address
	dcb	$e2
	dcl	_complex_mult	;Calling Name
	dcb	$e1
	dcl	DW38	;Calling Address
	dcb	$e2
	dcl	_printf	;Calling Name
	dcb	$e1
	dcl	DW41	;Calling Address
	dcb	$e2
	dcl	_printf	;Calling Name
	dcb	$e1
	dcl	DW54	;Calling Address
	dcb	$e2
	dcl	_fopen	;Calling Name
	dcb	$e1
	dcl	DW65	;Calling Address
	dcb	$e2
	dcl	_fwrite	;Calling Name
	dcb	$e1
	dcl	DW69	;Calling Address
	dcb	$e2
	dcl	_printf	;Calling Name
	dcb	$e1
	dcl	DW75	;Calling Address
	dcb	$e2
	dcl	_fclose	;Calling Name
	dcb	$e1
	dcl	DW77	;Calling Address
	dcb	$e3
	dcl	DW84	;Return Address
Call_0_end_main:
	dcl	_main_glb_ref_end_main-_main_glb_ref_start_main	;Attribute DW_AT_global_ref_list
_main_glb_ref_start_main:
_main_glb_ref_end_main:
	dcl	sibling_0_main-DebugInfoStart_main+4	;Attribute DW_AT_sibling
amain__main_v118:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$15	;Attribute DW_AT_decl_line
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_main_optimized_away	;Attribute DW_AT_location
	dcb	"i",0		;Attribute DW_AT_name
amain__main_v119:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$14	;Attribute DW_AT_decl_line
	dcl	n140_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_mainv119_2	;Attribute DW_AT_location
	dcb	"fp",0		;Attribute DW_AT_name
amain__main_v120:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$13	;Attribute DW_AT_decl_line
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_mainv120_3	;Attribute DW_AT_location
	dcb	"sc_im",0		;Attribute DW_AT_name
amain__main_v121:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$12	;Attribute DW_AT_decl_line
	dcl	n13_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_mainv121_4	;Attribute DW_AT_location
	dcb	"sc_re",0		;Attribute DW_AT_name
amain__main_v122:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$f	;Attribute DW_AT_decl_line
	dcl	n169_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_mainv122_5	;Attribute DW_AT_location
	dcb	"out",0		;Attribute DW_AT_name
amain__main_v123:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$c	;Attribute DW_AT_decl_line
	dcl	n169_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_mainv123_6	;Attribute DW_AT_location
	dcb	"in_aligned",0		;Attribute DW_AT_name
amain__main_v124:
		;Tag DW_TAG_variable
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$a	;Attribute DW_AT_decl_line
	dcl	n169_main-DebugInfoStart_main+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_mainv124_7	;Attribute DW_AT_location
	dcb	"in",0		;Attribute DW_AT_name
	dcb	$0	;End of List
sibling_0_main:
	dcb	$0	;Null Entry
DebugInfoEnd_main:
	endsec

	section	.debug_macinfo debug 
DebugMacroStart_main:
	dcl	$0
DebugMacroEnd_main:
	endsec

	section	.debug_abbrev debug
DebugAbbrevStart_main:
		;DW_TAG_compile_unit
	dcb	$1	;Code
	dcb	$11	;Tag
	dcb	$1
	dcb	$13	;Attrib DW_AT_language
	dcb	$b	;Form DW_FORM_data1
	dcb	$11	;Attrib DW_AT_low_pc
	dcb	$1	;Form DW_FORM_addr
	dcb	$12	;Attrib DW_AT_high_pc
	dcb	$1	;Form DW_FORM_addr
	dcb	$10	;Attrib DW_AT_stmt_list
	dcb	$6	;Form DW_FORM_data4
	dcb	$43	;Attrib DW_AT_macro_info
	dcb	$6	;Form DW_FORM_data4
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$25	;Attrib DW_AT_producer
	dcb	$8	;Form DW_FORM_string
	dcb	$1b	;Attrib DW_AT_comp_dir
	dcb	$8	;Form DW_FORM_string
	dcb	$83	;Attrib DW_AT_flow_graph
	dcb	$40
	dcb	$1	;Form DW_FORM_addr
	dcb	$84	;Attrib DW_AT_flow_blocks
	dcb	$40
	dcb	$1	;Form DW_FORM_addr
	dcb	$8a	;Attrib DW_AT_vars_rwdi
	dcb	$40
	dcb	$1	;Form DW_FORM_addr
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_base_type
	dcb	$2	;Code
	dcb	$24	;Tag
	dcb	$0
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$3e	;Attrib DW_AT_encoding
	dcb	$b	;Form DW_FORM_data1
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_pointer_type
	dcb	$3	;Code
	dcb	$f	;Tag
	dcb	$0
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_structure_type
	dcb	$4	;Code
	dcb	$13	;Tag
	dcb	$1
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_member
	dcb	$5	;Code
	dcb	$d	;Tag
	dcb	$0
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$38	;Attrib DW_AT_data_member_location
	dcb	$9	;Form DW_FORM_block
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_array_type
	dcb	$6	;Code
	dcb	$1	;Tag
	dcb	$1
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_subrange_type
	dcb	$7	;Code
	dcb	$21	;Tag
	dcb	$0
	dcb	$2f	;Attrib DW_AT_upper_bound
	dcb	$d	;Form DW_FORM_sdata
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_structure_type
	dcb	$8	;Code
	dcb	$13	;Tag
	dcb	$1
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_typedef
	dcb	$9	;Code
	dcb	$16	;Tag
	dcb	$0
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_subprogram
	dcb	$a	;Code
	dcb	$2e	;Tag
	dcb	$1
	dcb	$11	;Attrib DW_AT_low_pc
	dcb	$1	;Form DW_FORM_addr
	dcb	$12	;Attrib DW_AT_high_pc
	dcb	$1	;Form DW_FORM_addr
	dcb	$3a	;Attrib DW_AT_decl_file
	dcb	$5	;Form DW_FORM_data2
	dcb	$3b	;Attrib DW_AT_decl_line
	dcb	$5	;Form DW_FORM_data2
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$3f	;Attrib DW_AT_external
	dcb	$c	;Form DW_FORM_flag
	dcb	$82	;Attrib DW_AT_sp_offset
	dcb	$40
	dcb	$5	;Form DW_FORM_data2
	dcb	$40	;Attrib DW_AT_frame_base
	dcb	$6	;Form DW_FORM_data4
	dcb	$81	;Attrib DW_AT_calling
	dcb	$40
	dcb	$3	;Form DW_FORM_block2
	dcb	$a0	;Attrib DW_AT_global_ref_list
	dcb	$40
	dcb	$4	;Form DW_FORM_block4
	dcb	$1	;Attrib DW_AT_sibling
	dcb	$13	;Form DW_FORM_ref4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_variable
	dcb	$b	;Code
	dcb	$34	;Tag
	dcb	$0
	dcb	$3a	;Attrib DW_AT_decl_file
	dcb	$5	;Form DW_FORM_data2
	dcb	$3b	;Attrib DW_AT_decl_line
	dcb	$5	;Form DW_FORM_data2
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$3f	;Attrib DW_AT_external
	dcb	$c	;Form DW_FORM_flag
	dcb	$3c	;Attrib DW_AT_declaration
	dcb	$c	;Form DW_FORM_flag
	dcb	$2	;Attrib DW_AT_location
	dcb	$6	;Form DW_FORM_data4
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$0
	dcb	$0	;Form 
	dcb	$0
	endsec



	section	.debug_line debug
	dcl	DebugLineEnd_main-DebugLineStart_main
DebugLineStart_main:
	dcw	$2
	dcl	DebugLinePrologEnd_main-DebugLinePrologStart_main
DebugLinePrologStart_main:
	dcb	$2
	dcb	$1
	dcb	$fffffff4
	dcb	$19
	dcb	$e
	dcb	$0
	dcb	$1
	dcb	$1
	dcb	$1
	dcb	$1
	dcb	$0
	dcb	$0
	dcb	$0
	dcb	$1
	dcb	$0
	dcb	$0
	dcb	$0
	dcb	$1
	dcb	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/src",0		;Include directories list
	dcb	"C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include",0	
	dcb	"D:/_build/eb22_3x00_sp8_pre4/_library/src/host",0	
	dcb	"D:/_build/eb22_3x00_sp8_pre4/_library/include",0	
	dcb	$0
	dcb	"main.c",0		;File names list
	dcb	$1	;Index in Include directories list
	dcb	$e4	;Last modification time: 1701729764
	dcb	$ab
	dcb	$b9
	dcb	$ab
	dcb	$6
	dcb	$b8	;File length: 1464
	dcb	$b
	dcb	"functions.h",0	
	dcb	$1	;Index in Include directories list
	dcb	$90	;Last modification time: 1700410128
	dcb	$e6
	dcb	$e8
	dcb	$aa
	dcb	$6
	dcb	$54	;File length: 84
	dcb	"constants.h",0	
	dcb	$1	;Index in Include directories list
	dcb	$e8	;Last modification time: 1701723240
	dcb	$f8
	dcb	$b8
	dcb	$ab
	dcb	$6
	dcb	$3f	;File length: 63
	dcb	"ansi_parms.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$88	;Last modification time: 1208175624
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$a2	;File length: 10146
	dcb	$4f
	dcb	"cstddef",0	
	dcb	$2	;Index in Include directories list
	dcb	$88	;Last modification time: 1208175624
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$91	;File length: 785
	dcb	$6
	dcb	"stddef.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$8a	;Last modification time: 1208175626
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$81	;File length: 385
	dcb	$3
	dcb	"ioprim.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$88	;Last modification time: 1208175624
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$fb	;File length: 10875
	dcb	$54
	dcb	"cstdarg",0	
	dcb	$2	;Index in Include directories list
	dcb	$88	;Last modification time: 1208175624
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$84	;File length: 1668
	dcb	$d
	dcb	"cstdio",0	
	dcb	$2	;Index in Include directories list
	dcb	$88	;Last modification time: 1208175624
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$e3	;File length: 6371
	dcb	$31
	dcb	"os_enum.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$8a	;Last modification time: 1208175626
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$bc	;File length: 1212
	dcb	$9
	dcb	"ansi_prefix_StarCore.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$88	;Last modification time: 1208175624
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$fb	;File length: 4987
	dcb	$26
	dcb	"mslGlobals.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$8a	;Last modification time: 1208175626
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$ba	;File length: 186
	dcb	$1
	dcb	"msl_c_version.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$8a	;Last modification time: 1208175626
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$ad	;File length: 1325
	dcb	$a
	dcb	"stdio.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$8a	;Last modification time: 1208175626
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$dd	;File length: 1373
	dcb	$a
	dcb	"prototype.h",0	
	dcb	$2	;Index in Include directories list
	dcb	$8a	;Last modification time: 1208175626
	dcb	$98
	dcb	$8d
	dcb	$c0
	dcb	$4
	dcb	$c1	;File length: 54337
	dcb	$a8
	dcb	$3
	dcb	"prototype.c",0	
	dcb	$3	;Index in Include directories list
	dcb	$0	;Last modification time: 0
	dcb	$0	;File length: 0
	dcb	"prototype.h",0	
	dcb	$4	;Index in Include directories list
	dcb	$0	;Last modification time: 0
	dcb	$0	;File length: 0
	dcb	$0
DebugLinePrologEnd_main:

__dbg_ln__main_start:
	dcb	$0
	dcb	$5
	dcb	$2	;DW_LNE_set_address
	dcl	_main
	dcb	$4	;DW_LNS_set_file
	dcb	$1
	dcb	$7	;DW_LNS_set_basic_block
	dcb	35	;line+=9 to 10, addr=DW1
	dcb	22	;line+=-4 to 6, addr=DW1
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 6, addr=DW1
	dcb	26+25*(DW2-DW1)/2	;line+=0 to 6, addr=DW2
	dcb	26+25*(DW3-DW2)/2	;line+=0 to 6, addr=DW3
	dcb	30	;line+=4 to 10, addr=DW3
	dcb	$b	;DW_LNS_negate_eos
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW5-DW3	;addr=DW5
	dcb	$16	;special opcode: line+=-4 to 6
	dcb	$b	;DW_LNS_negate_eos
	dcb	30+25*(DW6-DW5)/2	;line+=4 to 10, addr=DW6
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	26+25*(DW7-DW6)/2	;line+=0 to 10, addr=DW7
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	28+25*(DW8-DW7)/2	;line+=2 to 12, addr=DW8
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 12, addr=DW8
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW10-DW8	;addr=DW10
	dcb	$1a	;special opcode: line+=0 to 12
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	29+25*(DW11-DW10)/2	;line+=3 to 15, addr=DW11
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 15, addr=DW11
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW13-DW11	;addr=DW13
	dcb	$1a	;special opcode: line+=0 to 15
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	35+25*(DW14-DW13)/2	;line+=9 to 24, addr=DW14
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW15-DW14)/2	;line+=0 to 24, addr=DW15
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW16-DW15)/2	;line+=0 to 24, addr=DW16
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW17-DW16)/2	;line+=0 to 24, addr=DW17
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	29	;line+=3 to 27, addr=DW17
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW18-DW17)/2	;line+=0 to 27, addr=DW18
	dcb	26+25*(DW19-DW18)/2	;line+=0 to 27, addr=DW19
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW20-DW19)/2	;line+=0 to 27, addr=DW20
	dcb	$b	;DW_LNS_negate_eos
	dcb	26	;line+=0 to 27, addr=DW20
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	27+25*(DW21-DW20)/2	;line+=1 to 28, addr=DW21
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW22-DW21)/2	;line+=0 to 28, addr=DW22
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW24-DW22	;addr=DW24
	dcb	$1b	;special opcode: line+=1 to 29
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW25-DW24)/2	;line+=0 to 29, addr=DW25
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW26-DW25)/2	;line+=0 to 29, addr=DW26
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	27+25*(DW27-DW26)/2	;line+=1 to 30, addr=DW27
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW28-DW27)/2	;line+=0 to 30, addr=DW28
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	30+25*(DW29-DW28)/2	;line+=4 to 34, addr=DW29
	dcb	29	;line+=3 to 37, addr=DW29
	dcb	$6	;DW_LNS_negate_stmt
	dcb	23+25*(DW30-DW29)/2	;line+=-3 to 34, addr=DW30
	dcb	29	;line+=3 to 37, addr=DW30
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	22+25*(DW31-DW30)/2	;line+=-4 to 33, addr=DW31
	dcb	$6	;DW_LNS_negate_stmt
	dcb	27	;line+=1 to 34, addr=DW31
	dcb	$b	;DW_LNS_negate_eos
	dcb	29+25*(DW32-DW31)/2	;line+=3 to 37, addr=DW32
	dcb	26+25*(DW33-DW32)/2	;line+=0 to 37, addr=DW33
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW34-DW33)/2	;line+=0 to 37, addr=DW34
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	29+25*(DW35-DW34)/2	;line+=3 to 40, addr=DW35
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 40, addr=DW35
	dcb	26+25*(DW36-DW35)/2	;line+=0 to 40, addr=DW36
	dcb	26+25*(DW37-DW36)/2	;line+=0 to 40, addr=DW37
	dcb	26+25*(DW38-DW37)/2	;line+=0 to 40, addr=DW38
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW39-DW38)/2	;line+=0 to 40, addr=DW39
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	29+25*(DW40-DW39)/2	;line+=3 to 43, addr=DW40
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW41-DW40)/2	;line+=0 to 43, addr=DW41
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW42-DW41)/2	;line+=0 to 43, addr=DW42
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	30+25*(DW43-DW42)/2	;line+=4 to 47, addr=DW43
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW44-DW43)/2	;line+=0 to 47, addr=DW44
	dcb	26+25*(DW45-DW44)/2	;line+=0 to 47, addr=DW45
	dcb	26+25*(DW46-DW45)/2	;line+=0 to 47, addr=DW46
	dcb	26+25*(DW47-DW46)/2	;line+=0 to 47, addr=DW47
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW48-DW47	;addr=DW48
	dcb	$1a	;special opcode: line+=0 to 47
	dcb	26+25*(DW49-DW48)/2	;line+=0 to 47, addr=DW49
	dcb	26+25*(DW50-DW49)/2	;line+=0 to 47, addr=DW50
	dcb	26+25*(DW51-DW50)/2	;line+=0 to 47, addr=DW51
	dcb	26+25*(DW52-DW51)/2	;line+=0 to 47, addr=DW52
	dcb	26+25*(DW53-DW52)/2	;line+=0 to 47, addr=DW53
	dcb	26+25*(DW54-DW53)/2	;line+=0 to 47, addr=DW54
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW55-DW54)/2	;line+=0 to 47, addr=DW55
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW56-DW55)/2	;line+=0 to 47, addr=DW56
	dcb	26+25*(DW57-DW56)/2	;line+=0 to 47, addr=DW57
	dcb	$6	;DW_LNS_negate_stmt
	dcb	24+25*(DW58-DW57)/2	;line+=-2 to 45, addr=DW58
	dcb	$6	;DW_LNS_negate_stmt
	dcb	28	;line+=2 to 47, addr=DW58
	dcb	24+25*(DW59-DW58)/2	;line+=-2 to 45, addr=DW59
	dcb	28	;line+=2 to 47, addr=DW59
	dcb	26+25*(DW60-DW59)/2	;line+=0 to 47, addr=DW60
	dcb	26+25*(DW61-DW60)/2	;line+=0 to 47, addr=DW61
	dcb	24+25*(DW62-DW61)/2	;line+=-2 to 45, addr=DW62
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	28+25*(DW63-DW62)/2	;line+=2 to 47, addr=DW63
	dcb	24	;line+=-2 to 45, addr=DW63
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	32+25*(DW64-DW63)/2	;line+=6 to 51, addr=DW64
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW65-DW64)/2	;line+=0 to 51, addr=DW65
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW66-DW65)/2	;line+=0 to 51, addr=DW66
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW67-DW66)/2	;line+=0 to 51, addr=DW67
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	29	;line+=3 to 54, addr=DW67
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW68-DW67)/2	;line+=0 to 54, addr=DW68
	dcb	26+25*(DW69-DW68)/2	;line+=0 to 54, addr=DW69
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW70-DW69)/2	;line+=0 to 54, addr=DW70
	dcb	$b	;DW_LNS_negate_eos
	dcb	26	;line+=0 to 54, addr=DW70
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	27+25*(DW71-DW70)/2	;line+=1 to 55, addr=DW71
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW72-DW71)/2	;line+=0 to 55, addr=DW72
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW74-DW72	;addr=DW74
	dcb	$1b	;special opcode: line+=1 to 56
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW75-DW74)/2	;line+=0 to 56, addr=DW75
	dcb	$b	;DW_LNS_negate_eos
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW76-DW75)/2	;line+=0 to 56, addr=DW76
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	27+25*(DW77-DW76)/2	;line+=1 to 57, addr=DW77
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	26+25*(DW78-DW77)/2	;line+=0 to 57, addr=DW78
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$a	;DW_LNS_negate_delay_slot
	dcb	29+25*(DW79-DW78)/2	;line+=3 to 60, addr=DW79
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 60, addr=DW79
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW81-DW79	;addr=DW81
	dcb	$1a	;special opcode: line+=0 to 60
	dcb	26+25*(DW82-DW81)/2	;line+=0 to 60, addr=DW82
	dcb	26+25*(DW83-DW82)/2	;line+=0 to 60, addr=DW83
	dcb	$b	;DW_LNS_negate_eos
	dcb	26+25*(DW84-DW83)/2	;line+=0 to 60, addr=DW84
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	FuncEnd_main-DW84	;addr=FuncEnd_main
	dcb	$3	;DW_LNS_advance_line
	dcb	$44	;Reset line number: line-=60 to 0
	dcb	$0
	dcb	$1
	dcb	$1	;DW_LNE_end_sequence

__dbg_ln__main_end:
;PRAGMA remove_block __dbg_ln__main_start,__dbg_ln__main_end-__dbg_ln__main_start,_main
DebugLineEnd_main:
	endsec

	section	.debug_pubnames debug
	dcl	DebugPubNamesEnd_main-DebugPubNamesStart_main	;Public Names section length
DebugPubNamesStart_main:
	dcw	$2	;DWARF version
	dcl	DebugInfoStart_main-4	;Compilation unit info start
	dcl	DebugInfoEnd_main-DebugInfoStart_main	;Compilation unit info length
	dcl	$0
DebugPubNamesEnd_main:
	endsec

	section	.debug_aranges debug
	dcl	DebugAddressRangesEnd_main-DebugAddressRangesStart_main	;Address Ranges section length
DebugAddressRangesStart_main:
	dcw	$2	;DWARF version
	dcl	DebugInfoStart_main-4	;Compilation unit info start
	dcb	$4	;Size of Address
	dcb	$0	;Size of Segment Descriptor
	dcl	$0
	dcl	TextStart_main	;Compilation unit D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/main.c start
	dcl	TextEnd_main-TextStart_main	;Compilation unit D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/main.c length
	dcl	$0
	dcl	$0
DebugAddressRangesEnd_main:
	endsec

	section	.debug_loc debug
Loc_main_optimized_away:
	dcl	$0	;Optimized away
	dcl	$0	;List end
Frame_base__main_main:
	dcl	_main	;Start Address
	dcl	DW2	;End Address
	dcw	Loc_0_end_main-*-2	;Location
Loc_0_beg_main:
	dcb	$50	;DW_OP_reg0, Sp
Loc_0_end_main:
	dcl	DW2	;Start Address
	dcl	DW3	;End Address
	dcw	Loc_1_end_main-*-2	;Location
Loc_1_beg_main:
	dcb	$70	;DW_OP_breg0, Sp
	dcb	$78	;-8
Loc_1_end_main:
	dcl	DW3	;Start Address
	dcl	DW6	;End Address
	dcw	Loc_2_end_main-*-2	;Location
Loc_2_beg_main:
	dcb	$70	;DW_OP_breg0, Sp
	dcb	$70	;-16
Loc_2_end_main:
	dcl	DW6	;Start Address
	dcl	DW82	;End Address
	dcw	Loc_3_end_main-*-2	;Location
Loc_3_beg_main:
	dcb	$70	;DW_OP_breg0, Sp
	dcb	$e8	;-280
	dcb	$7d
Loc_3_end_main:
	dcl	DW82	;Start Address
	dcl	DW83	;End Address
	dcw	Loc_4_end_main-*-2	;Location
Loc_4_beg_main:
	dcb	$70	;DW_OP_breg0, Sp
	dcb	$70	;-16
Loc_4_end_main:
	dcl	DW83	;Start Address
	dcl	DW84	;End Address
	dcw	Loc_5_end_main-*-2	;Location
Loc_5_beg_main:
	dcb	$70	;DW_OP_breg0, Sp
	dcb	$78	;-8
Loc_5_end_main:
	dcl	DW84	;Start Address
	dcl	F_main_end	;End Address
	dcw	Loc_6_end_main-*-2	;Location
Loc_6_beg_main:
	dcb	$50	;DW_OP_reg0, Sp
Loc_6_end_main:
	dcl	$0	;List end
	dcl	$0
Loc_mainv119_2:			;v119
	dcl	DW72	;Start Address
	dcl	DW79	;End Address
	dcw	Loc_7_end_main-*-2	;Location
Loc_7_beg_main:
	dcb	$58	;DW_OP_reg8, d7
Loc_7_end_main:
	dcl	DW68	;Start Address
	dcl	DW72	;End Address
	dcw	Loc_8_end_main-*-2	;Location
Loc_8_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$dc	;220
	dcb	$1
Loc_8_end_main:
	dcl	DW66	;Start Address
	dcl	DW68	;End Address
	dcw	Loc_9_end_main-*-2	;Location
Loc_9_beg_main:
	dcb	$61	;DW_OP_reg17, r0
Loc_9_end_main:
	dcl	DW23	;Start Address
	dcl	DW29	;End Address
	dcw	Loc_10_end_main-*-2	;Location
Loc_10_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$dc	;220
	dcb	$1
Loc_10_end_main:
	dcl	DW22	;Start Address
	dcl	DW23	;End Address
	dcw	Loc_11_end_main-*-2	;Location
Loc_11_beg_main:
	dcb	$56	;DW_OP_reg6, d5
Loc_11_end_main:
	dcl	DW18	;Start Address
	dcl	DW22	;End Address
	dcw	Loc_12_end_main-*-2	;Location
Loc_12_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$dc	;220
	dcb	$1
Loc_12_end_main:
	dcl	DW16	;Start Address
	dcl	DW18	;End Address
	dcw	Loc_13_end_main-*-2	;Location
Loc_13_beg_main:
	dcb	$61	;DW_OP_reg17, r0
Loc_13_end_main:
	dcl	$0	;List End
	dcl	$0
Loc_mainv120_3:			;v120
	dcl	DW53	;Start Address
	dcl	DW64	;End Address
	dcw	Loc_14_end_main-*-2	;Location
Loc_14_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$e4	;228
	dcb	$1
Loc_14_end_main:
	dcl	DW51	;Start Address
	dcl	DW53	;End Address
	dcw	Loc_15_end_main-*-2	;Location
Loc_15_beg_main:
	dcb	$54	;DW_OP_reg4, d3
Loc_15_end_main:
	dcl	DW37	;Start Address
	dcl	DW51	;End Address
	dcw	Loc_16_end_main-*-2	;Location
Loc_16_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$e4	;228
	dcb	$1
Loc_16_end_main:
	dcl	DW32	;Start Address
	dcl	DW36	;End Address
	dcw	Loc_17_end_main-*-2	;Location
Loc_17_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$e4	;228
	dcb	$1
Loc_17_end_main:
	dcl	DW36	;Start Address
	dcl	DW37	;End Address
	dcw	Loc_18_end_main-*-2	;Location
Loc_18_beg_main:
	dcb	$51	;DW_OP_reg1, d0
Loc_18_end_main:
	dcl	DW31	;Start Address
	dcl	DW32	;End Address
	dcw	Loc_19_end_main-*-2	;Location
Loc_19_beg_main:
	dcb	$51	;DW_OP_reg1, d0
Loc_19_end_main:
	dcl	$0	;List End
	dcl	$0
Loc_mainv121_4:			;v121
	dcl	DW32	;Start Address
	dcl	DW64	;End Address
	dcw	Loc_20_end_main-*-2	;Location
Loc_20_beg_main:
	dcb	$58	;DW_OP_reg8, d7
Loc_20_end_main:
	dcl	$0	;List End
	dcl	$0
Loc_mainv122_5:			;v122
	dcl	DW3	;Start Address
	dcl	DW79	;End Address
	dcw	Loc_21_end_main-*-2	;Location
Loc_21_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$98	;152
	dcb	$1
Loc_21_end_main:
	dcl	$0	;List End
	dcl	$0
Loc_mainv123_6:			;v123
	dcl	DW3	;Start Address
	dcl	DW79	;End Address
	dcw	Loc_22_end_main-*-2	;Location
Loc_22_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$10	;16
Loc_22_end_main:
	dcl	$0	;List End
	dcl	$0
Loc_mainv124_7:			;v124
	dcl	DW3	;Start Address
	dcl	DW79	;End Address
	dcw	Loc_23_end_main-*-2	;Location
Loc_23_beg_main:
	dcb	$91	;DW_OP_fbreg
	dcb	$d4	;84
	dcb	$0
Loc_23_end_main:
	dcl	$0	;List End
	dcl	$0
	endsec


	section	.debug_frame debug
DebugFrameStart_main:
	dcl	CommonInfoEntryStandardEnd_main-CommonInfoEntryStandardStart_main	;Standard CIE
CommonInfoEntryStandardStart_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryStandardEnd_main:
	dcl	CommonInfoEntryNonStandardEnd_cc3_main-CommonInfoEntryNonStandardStart_cc3_main	;NonStandard_cc3 CIE
CommonInfoEntryNonStandardStart_cc3_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc3_main:
	dcl	CommonInfoEntryNonStandardEnd_cc4_main-CommonInfoEntryNonStandardStart_cc4_main	;NonStandard_cc4 CIE
CommonInfoEntryNonStandardStart_cc4_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc4_main:
	dcl	CommonInfoEntryNonStandardEnd_cc5_main-CommonInfoEntryNonStandardStart_cc5_main	;NonStandard_cc5 CIE
CommonInfoEntryNonStandardStart_cc5_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc5_main:
	dcl	CommonInfoEntryNonStandardEnd_cc6_main-CommonInfoEntryNonStandardStart_cc6_main	;NonStandard_cc6 CIE
CommonInfoEntryNonStandardStart_cc6_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc6_main:
	dcl	CommonInfoEntryNonStandardEnd_cc7_main-CommonInfoEntryNonStandardStart_cc7_main	;NonStandard_cc7 CIE
CommonInfoEntryNonStandardStart_cc7_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$8	;DW_CFA_same_value
	dcb	$3	;Reg #3
	dcb	$8	;DW_CFA_same_value
	dcb	$4	;Reg #4
	dcb	$8	;DW_CFA_same_value
	dcb	$5	;Reg #5
	dcb	$8	;DW_CFA_same_value
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc7_main:
	dcl	CommonInfoEntryNonStandardEnd_cc8_main-CommonInfoEntryNonStandardStart_cc8_main	;NonStandard_cc8 CIE
CommonInfoEntryNonStandardStart_cc8_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$8	;DW_CFA_same_value
	dcb	$3	;Reg #3
	dcb	$8	;DW_CFA_same_value
	dcb	$4	;Reg #4
	dcb	$8	;DW_CFA_same_value
	dcb	$5	;Reg #5
	dcb	$8	;DW_CFA_same_value
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc8_main:
	dcl	CommonInfoEntryNonStandardEnd_cc9_main-CommonInfoEntryNonStandardStart_cc9_main	;NonStandard_cc9 CIE
CommonInfoEntryNonStandardStart_cc9_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$8	;DW_CFA_same_value
	dcb	$3	;Reg #3
	dcb	$8	;DW_CFA_same_value
	dcb	$4	;Reg #4
	dcb	$8	;DW_CFA_same_value
	dcb	$5	;Reg #5
	dcb	$8	;DW_CFA_same_value
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc9_main:
	dcl	CommonInfoEntryNonStandardEnd_cc10_main-CommonInfoEntryNonStandardStart_cc10_main	;NonStandard_cc10 CIE
CommonInfoEntryNonStandardStart_cc10_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$8	;DW_CFA_same_value
	dcb	$3	;Reg #3
	dcb	$8	;DW_CFA_same_value
	dcb	$4	;Reg #4
	dcb	$8	;DW_CFA_same_value
	dcb	$5	;Reg #5
	dcb	$8	;DW_CFA_same_value
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc10_main:
	dcl	CommonInfoEntryNonStandardEnd_cc11_main-CommonInfoEntryNonStandardStart_cc11_main	;NonStandard_cc11 CIE
CommonInfoEntryNonStandardStart_cc11_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc11_main:
	dcl	CommonInfoEntryNonStandardEnd_cc12_main-CommonInfoEntryNonStandardStart_cc12_main	;NonStandard_cc12 CIE
CommonInfoEntryNonStandardStart_cc12_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc12_main:
	dcl	CommonInfoEntryNonStandardEnd_cc13_main-CommonInfoEntryNonStandardStart_cc13_main	;NonStandard_cc13 CIE
CommonInfoEntryNonStandardStart_cc13_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$7	;DW_CFA_undefined
	dcb	$7	;Reg #7
	dcb	$7	;DW_CFA_undefined
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$7	;DW_CFA_undefined
	dcb	$17	;Reg #23
	dcb	$7	;DW_CFA_undefined
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc13_main:
	dcl	CommonInfoEntryNonStandardEnd_cc14_main-CommonInfoEntryNonStandardStart_cc14_main	;NonStandard_cc14 CIE
CommonInfoEntryNonStandardStart_cc14_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$7	;DW_CFA_undefined
	dcb	$2	;Reg #2
	dcb	$7	;DW_CFA_undefined
	dcb	$3	;Reg #3
	dcb	$7	;DW_CFA_undefined
	dcb	$4	;Reg #4
	dcb	$7	;DW_CFA_undefined
	dcb	$5	;Reg #5
	dcb	$7	;DW_CFA_undefined
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$7	;DW_CFA_undefined
	dcb	$12	;Reg #18
	dcb	$7	;DW_CFA_undefined
	dcb	$13	;Reg #19
	dcb	$7	;DW_CFA_undefined
	dcb	$14	;Reg #20
	dcb	$7	;DW_CFA_undefined
	dcb	$15	;Reg #21
	dcb	$7	;DW_CFA_undefined
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc14_main:
	dcl	CommonInfoEntryNonStandardEnd_cc15_main-CommonInfoEntryNonStandardStart_cc15_main	;NonStandard_cc15 CIE
CommonInfoEntryNonStandardStart_cc15_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$7	;DW_CFA_undefined
	dcb	$1	;Reg #1
	dcb	$8	;DW_CFA_same_value
	dcb	$2	;Reg #2
	dcb	$8	;DW_CFA_same_value
	dcb	$3	;Reg #3
	dcb	$8	;DW_CFA_same_value
	dcb	$4	;Reg #4
	dcb	$8	;DW_CFA_same_value
	dcb	$5	;Reg #5
	dcb	$8	;DW_CFA_same_value
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$7	;DW_CFA_undefined
	dcb	$9	;Reg #9
	dcb	$7	;DW_CFA_undefined
	dcb	$a	;Reg #10
	dcb	$7	;DW_CFA_undefined
	dcb	$b	;Reg #11
	dcb	$7	;DW_CFA_undefined
	dcb	$c	;Reg #12
	dcb	$7	;DW_CFA_undefined
	dcb	$d	;Reg #13
	dcb	$7	;DW_CFA_undefined
	dcb	$e	;Reg #14
	dcb	$7	;DW_CFA_undefined
	dcb	$f	;Reg #15
	dcb	$7	;DW_CFA_undefined
	dcb	$10	;Reg #16
	dcb	$7	;DW_CFA_undefined
	dcb	$11	;Reg #17
	dcb	$8	;DW_CFA_same_value
	dcb	$12	;Reg #18
	dcb	$8	;DW_CFA_same_value
	dcb	$13	;Reg #19
	dcb	$8	;DW_CFA_same_value
	dcb	$14	;Reg #20
	dcb	$8	;DW_CFA_same_value
	dcb	$15	;Reg #21
	dcb	$8	;DW_CFA_same_value
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$7	;DW_CFA_undefined
	dcb	$19	;Reg #25
	dcb	$7	;DW_CFA_undefined
	dcb	$1a	;Reg #26
	dcb	$7	;DW_CFA_undefined
	dcb	$1b	;Reg #27
	dcb	$7	;DW_CFA_undefined
	dcb	$1c	;Reg #28
	dcb	$7	;DW_CFA_undefined
	dcb	$1d	;Reg #29
	dcb	$7	;DW_CFA_undefined
	dcb	$1e	;Reg #30
	dcb	$7	;DW_CFA_undefined
	dcb	$1f	;Reg #31
	dcb	$7	;DW_CFA_undefined
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc15_main:
	dcl	CommonInfoEntryNonStandardEnd_cc16_main-CommonInfoEntryNonStandardStart_cc16_main	;NonStandard_cc16 CIE
CommonInfoEntryNonStandardStart_cc16_main:
	dcl	$ffffffff	;CIE_id
	dcb	$1	;version
	dcb	$0	;augmentation
	dcb	$2	;code_alignment_factor
	dcb	$4	;data_alignment_factor
	dcb	$0	;return address (irrelevant)
	dcb	$c	;DW_CFA_def_cfa
	dcb	$0	;SP register, # 0
	dcb	$0	;SP offset
	dcb	$8	;DW_CFA_same_value
	dcb	$1	;Reg #1
	dcb	$8	;DW_CFA_same_value
	dcb	$2	;Reg #2
	dcb	$8	;DW_CFA_same_value
	dcb	$3	;Reg #3
	dcb	$8	;DW_CFA_same_value
	dcb	$4	;Reg #4
	dcb	$8	;DW_CFA_same_value
	dcb	$5	;Reg #5
	dcb	$8	;DW_CFA_same_value
	dcb	$6	;Reg #6
	dcb	$8	;DW_CFA_same_value
	dcb	$7	;Reg #7
	dcb	$8	;DW_CFA_same_value
	dcb	$8	;Reg #8
	dcb	$8	;DW_CFA_same_value
	dcb	$9	;Reg #9
	dcb	$8	;DW_CFA_same_value
	dcb	$a	;Reg #10
	dcb	$8	;DW_CFA_same_value
	dcb	$b	;Reg #11
	dcb	$8	;DW_CFA_same_value
	dcb	$c	;Reg #12
	dcb	$8	;DW_CFA_same_value
	dcb	$d	;Reg #13
	dcb	$8	;DW_CFA_same_value
	dcb	$e	;Reg #14
	dcb	$8	;DW_CFA_same_value
	dcb	$f	;Reg #15
	dcb	$8	;DW_CFA_same_value
	dcb	$10	;Reg #16
	dcb	$8	;DW_CFA_same_value
	dcb	$11	;Reg #17
	dcb	$8	;DW_CFA_same_value
	dcb	$12	;Reg #18
	dcb	$8	;DW_CFA_same_value
	dcb	$13	;Reg #19
	dcb	$8	;DW_CFA_same_value
	dcb	$14	;Reg #20
	dcb	$8	;DW_CFA_same_value
	dcb	$15	;Reg #21
	dcb	$8	;DW_CFA_same_value
	dcb	$16	;Reg #22
	dcb	$8	;DW_CFA_same_value
	dcb	$17	;Reg #23
	dcb	$8	;DW_CFA_same_value
	dcb	$18	;Reg #24
	dcb	$8	;DW_CFA_same_value
	dcb	$19	;Reg #25
	dcb	$8	;DW_CFA_same_value
	dcb	$1a	;Reg #26
	dcb	$8	;DW_CFA_same_value
	dcb	$1b	;Reg #27
	dcb	$8	;DW_CFA_same_value
	dcb	$1c	;Reg #28
	dcb	$8	;DW_CFA_same_value
	dcb	$1d	;Reg #29
	dcb	$8	;DW_CFA_same_value
	dcb	$1e	;Reg #30
	dcb	$8	;DW_CFA_same_value
	dcb	$1f	;Reg #31
	dcb	$8	;DW_CFA_same_value
	dcb	$20	;Reg #32
	dcb	$7	;DW_CFA_undefined
	dcb	$0	;Reg #0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
CommonInfoEntryNonStandardEnd_cc16_main:
	dcl	_DE__main_main_End-_DE__main_main_Start
_DE__main_main_Start:
	dcl	CommonInfoEntryStandardStart_main-4	;CIE_ptr std
	dcl	_main	;initial_location
	dcl	F_main_end-_main	;address_range
	dcb	$3	;DW_CFA_advance_loc2: (DW2-DW1)/2
	dcw	(DW2-DW1)/2
	dcb	$87	;DW_CFA_offset, Reg #7
	dcb	$0	;Offset from CFA
	dcb	$88	;DW_CFA_offset, Reg #8
	dcb	$1	;Offset from CFA
	dcb	$e	;DW_CFA_def_cfa_offset: 2
	dcb	$2
	dcb	$3	;DW_CFA_advance_loc2: (DW3-DW2)/2
	dcw	(DW3-DW2)/2
	dcb	$97	;DW_CFA_offset, Reg #23
	dcb	$2	;Offset from CFA
	dcb	$98	;DW_CFA_offset, Reg #24
	dcb	$3	;Offset from CFA
	dcb	$e	;DW_CFA_def_cfa_offset: 4
	dcb	$4
	dcb	$3	;DW_CFA_advance_loc2: (DW6-DW3)/2
	dcw	(DW6-DW3)/2
	dcb	$e	;DW_CFA_def_cfa_offset: 4 + 66
	dcb	$46
	dcb	$3	;DW_CFA_advance_loc2: (DW82-DW6)/2
	dcw	(DW82-DW6)/2
	dcb	$e	;DW_CFA_def_cfa_offset: 70 + -66
	dcb	$4
	dcb	$3	;DW_CFA_advance_loc2: (DW83-DW82)/2
	dcw	(DW83-DW82)/2
	dcb	$d7	;DW_CFA_restore, Reg #23
	dcb	$d8	;DW_CFA_restore, Reg #24
	dcb	$e	;DW_CFA_def_cfa_offset: 2
	dcb	$2
	dcb	$3	;DW_CFA_advance_loc2: (DW84-DW83)/2
	dcw	(DW84-DW83)/2
	dcb	$c7	;DW_CFA_restore, Reg #7
	dcb	$c8	;DW_CFA_restore, Reg #8
	dcb	$e	;DW_CFA_def_cfa_offset: 0
	dcb	$0
	dcb	$0	;DW_CFA_nop
	dcb	$0	;DW_CFA_nop
_DE__main_main_End:
	endsec


	section	.debug_flow_graph debug
DebugFlowGraphStart_main:
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW1",0	
	dcb	"DW6",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"DW7",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW7",0	
	dcb	"DW7",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"DW7",0	
	dcb	"DW8",0	
	dcb	$7	;DW_FG_PRED
	dcb	$2	;Number Of Strings
	dcb	"DW1",0	
	dcb	"DW7",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW8",0	
	dcb	"DW9",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"DW10",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW7",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW10",0	
	dcb	"DW10",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"DW10",0	
	dcb	"DW11",0	
	dcb	$7	;DW_FG_PRED
	dcb	$2	;Number Of Strings
	dcb	"DW8",0	
	dcb	"DW10",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW11",0	
	dcb	"DW12",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"DW13",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW10",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW13",0	
	dcb	"DW13",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"DW13",0	
	dcb	"DW14",0	
	dcb	$7	;DW_FG_PRED
	dcb	$2	;Number Of Strings
	dcb	"DW11",0	
	dcb	"DW13",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW14",0	
	dcb	"DW16",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_fopen",0	
	dcb	"DW17",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW13",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW17",0	
	dcb	"DW20",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_fread",0	
	dcb	"DW21",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW14",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW21",0	
	dcb	"DW26",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_printf",0	
	dcb	"DW27",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW17",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW27",0	
	dcb	"DW28",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_fclose",0	
	dcb	"DW29",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW21",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW29",0	
	dcb	"DW34",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_memcpy",0	
	dcb	"DW35",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW27",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW35",0	
	dcb	"DW39",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_complex_mult",0	
	dcb	"DW40",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW29",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW40",0	
	dcb	"DW42",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_printf",0	
	dcb	"DW43",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW35",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW43",0	
	dcb	"DW47",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"DW48",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW40",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW48",0	
	dcb	"DW55",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_printf",0	
	dcb	"DW56",0	
	dcb	$7	;DW_FG_PRED
	dcb	$2	;Number Of Strings
	dcb	"DW43",0	
	dcb	"DW56",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW56",0	
	dcb	"DW63",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"DW48",0	
	dcb	"DW64",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW48",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW64",0	
	dcb	"DW66",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_fopen",0	
	dcb	"DW67",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW56",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW67",0	
	dcb	"DW70",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_fwrite",0	
	dcb	"DW71",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW64",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW71",0	
	dcb	"DW76",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_printf",0	
	dcb	"DW77",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW67",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW77",0	
	dcb	"DW78",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"_fclose",0	
	dcb	"DW79",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW71",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW79",0	
	dcb	"DW84",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"@NONE@",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW77",0	
	dcb	$8

	endsec

	section	.debug_flow_blocks debug
DebugFlowBlocksStart_main:
	dcb	$8	;DW_FG_END

	endsec

	section	.debug_vars_read_write debug
DebugVarsReadWriteStart_main:
	dcb	$2	;DW_RWDI_ROUTINE
	dcb	"_main",0	
	dcb	$8

	endsec
