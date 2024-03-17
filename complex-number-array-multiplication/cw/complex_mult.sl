;***********************************************************************
;
; StarCore C Compiler MSWin32 Version 308 Build 22
; Version date Mar  7 2008 10:59:36 (zro03-ws254)
;
; Compilation date :	Tue Dec 05 00:42:24 2023
; File Name :		D:\_code\dsp-complex-mult-ETTI-psc\optimized\cw/complex_mult.sl
; Invocation line: scc -r D:\_code\dsp-complex-mult-ETTI-psc\optimized\cw -g -ge -env C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler -be -arch sc140 -c -s -sc -mod -O2 -I . -I ..\src -I C:\Users\Tudor\Desktop -I- -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\include -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\src\rtlib\expanded -o 441F_MARCULESCU_Tudor_Data\C_for_SC_Simulator\ObjectCode\complex_mult.eln D:\_code\dsp-complex-mult-ETTI-psc\optimized\src\complex_mult.c
;
;***********************************************************************
     .FILE	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/complex_mult.c"
;%%%%%%%%%%%%%   Source Files:  %%%%%%%%%%%%%
;file 1 "D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/complex_mult.c"
;file 2 "C:/Program Files (x86)/Freescale/CodeWarrior for StarCore 3.2/StarCore_Support/compiler/include/prototype.h"
;file 3 "D:/_build/eb22_3x00_sp8_pre4/_library/src/host/prototype.c"
;file 4 "D:/_build/eb22_3x00_sp8_pre4/_library/include/prototype.h"
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
     NOTE "Invocation line: scc -r D:\_code\dsp-complex-mult-ETTI-psc\optimized\cw -g -ge -env C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler -be -arch sc140 -c -s -sc -mod -O2 -I . -I ..\src -I C:\Users\Tudor\Desktop -I- -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\include -I C:\Program Files (x86)\Freescale\CodeWarrior for StarCore 3.2\StarCore_Support\compiler\src\rtlib\expanded -o 441F_MARCULESCU_Tudor_Data\C_for_SC_Simulator\ObjectCode\complex_mult.eln D:\_code\dsp-complex-mult-ETTI-psc\optimized\src\complex_mult.c "


;PRAGMA dictionary v106 _out
;PRAGMA dictionary v107 _in
;PRAGMA dictionary v108 _m
;PRAGMA dictionary v109 _sc_re
;PRAGMA dictionary v110 _sc_im
;PRAGMA dictionary v111 _i
;PRAGMA dictionary v112 _shResult4
;PRAGMA dictionary v113 _shResult3
;PRAGMA dictionary v114 _shResult2
;PRAGMA dictionary v115 _shResult1


	SECTION .text LOCAL
	SECFLAGS ALLOC,NOWRITE,EXECINSTR
	SECTYPE PROGBITS
TextStart_complex_mult


;***********************************************************************
;
; Function _complex_mult, ; Stack frame size: 0 (0 from LLT)
;
; Calling Convention: 1
;
; Parameter out   passed in register r0 
; Parameter in   passed in register r1 
; Parameter m   passed in caller stack with offset -10 (-10 in callee)
; Parameter sc_re   passed in caller stack with offset -12 (-12 in callee)
; Parameter sc_im   passed in caller stack with offset -14 (-14 in callee)
;
;***********************************************************************

	GLOBAL	_complex_mult
	ALIGN	16
_complex_mult	TYPE	func OPT_SPEED
	SIZE _complex_mult,F_complex_mult_end-_complex_mult,16
;PRAGMA stack_effect _complex_mult,0
_complex_multOptimized_away_inline_blocks
DW1
F_complex_mult_blockstart
 [
    push     d6                         ;[8,1]
    push     d7                         ;[8,1]
 ]
DW_2
DW2
 [
    move.w   (sp-18),d0                 ;[21,1]
    move.f   (sp-20),d4                 ;[0,1] B1
 ]
DW3
 [
    tstgt    d0                         ;[21,1]
    inc      d0                         ;[0,1] B1
 ]
DW4
 [
    asr      d0,d1                      ;[0,1] B1
    move.f   (sp-22),d6                 ;[0,1] B1
    bf       <L1                        ;[21,1]
 ]
DW5
 [
    dosetup3 L7                         ;[0,1]
    doen3    d1                         ;[0,1]
 ]
    FALIGN                       
    LOOPSTART3                   
L7
DW6
    move.2f  (r1)+,d2:d3          ;[27,1]
DW7
 [
    mpy      d2,d6,d8                   ;[37,1]
    mpy      d3,d6,d7                   ;[30,1]
    mpy      d2,d4,d5                   ;[27,1]
 ]
DW8
 [
    and      #-65536,d8,d8              ;[34,1]
    and      #-65536,d7,d7              ;[41,1]
 ]
DW9
 [
    mac      d3,d4,d8                   ;[34,1]
    sub      d7,d5,d10                  ;[41,1]
 ]
DW10
    tfr      d8,d11               ;[41,1]
DW11
 [
    and      #-65536,d10,d10            ;[43,1]
    and      #-65536,d11,d11            ;[44,1]
    moves.2f d10:d11,(r0)               ;[41,1]
 ]
DW12
 [
    asr      d10,d12                    ;[43,1]
    asr      d11,d13                    ;[44,1]
 ]
DW13
    moves.2f d12:d13,(r0)+        ;[41,1]
    LOOPEND3                     
L6
L1
DW14
 [
    pop      d6                         ;[46,1]
    pop      d7                         ;[46,1]
 ]
DW_15
DW15
    rts                           ;[46,1]
F_complex_mult_blockend
DW16

	GLOBAL	F_complex_mult_end
F_complex_mult_end
FuncEnd_complex_mult

TextEnd_complex_mult
	ENDSEC

	section	.debug_info debug 
	dcl	DebugInfoEnd_complex_mult-DebugInfoStart_complex_mult	;Debug Info section length
DebugInfoStart_complex_mult:
	dcw	$2
	dcl	DebugAbbrevStart_complex_mult
	dcb	$4
A1_complex_mult:
		;Tag DW_TAG_compile_unit
	dcb	$1
	dcb	$1	;Attribute DW_AT_language
	dcl	TextStart_complex_mult	;Attribute DW_AT_low_pc
	dcl	TextEnd_complex_mult	;Attribute DW_AT_high_pc
	dcl	DebugLineStart_complex_mult-4	;Attribute DW_AT_stmt_list
	dcl	DebugMacroStart_complex_mult	;Attribute DW_AT_macro_info
	dcb	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/complex_mult.c",0		;Attribute DW_AT_name
	dcb	"StarCore C Compiler MSWin32 Version 308 Build 22",0		;Attribute DW_AT_producer
	dcb	"D:/_code/dsp-complex-mult-ETTI-psc/optimized/cw",0		;Attribute DW_AT_comp_dir
	dcl	DebugFlowGraphStart_complex_mult	;Attribute DW_AT_flow_graph
	dcl	DebugFlowBlocksStart_complex_mult	;Attribute DW_AT_flow_blocks
	dcl	DebugVarsReadWriteStart_complex_mult	;Attribute DW_AT_vars_rwdi
n1_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"int",0		;Attribute DW_AT_name
n2_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$1	;Attribute DW_AT_byte_size
	dcb	$6	;Attribute DW_AT_encoding
	dcb	"char",0		;Attribute DW_AT_name
n3_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$1	;Attribute DW_AT_byte_size
	dcb	$8	;Attribute DW_AT_encoding
	dcb	"unsigned char",0		;Attribute DW_AT_name
n4_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned int",0		;Attribute DW_AT_name
n5_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned long",0		;Attribute DW_AT_name
n6_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$4	;Attribute DW_AT_encoding
	dcb	"float",0		;Attribute DW_AT_name
n7_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$4	;Attribute DW_AT_encoding
	dcb	"double",0		;Attribute DW_AT_name
n8_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$4	;Attribute DW_AT_encoding
	dcb	"long double",0		;Attribute DW_AT_name
n9_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$0	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"void",0		;Attribute DW_AT_name
n10_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"label array",0		;Attribute DW_AT_name
n13_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$2	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"short",0		;Attribute DW_AT_name
n14_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$2	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned short",0		;Attribute DW_AT_name
n15_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"long",0		;Attribute DW_AT_name
n16_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_encoding
	dcb	"long long",0		;Attribute DW_AT_name
n17_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$7	;Attribute DW_AT_encoding
	dcb	"unsigned long long",0		;Attribute DW_AT_name
n20_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$2	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"word16",0		;Attribute DW_AT_name
n21_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"word32",0		;Attribute DW_AT_name
n22_complex_mult:
		;Tag DW_TAG_base_type
	dcb	$2
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	$0	;Attribute DW_AT_encoding
	dcb	"word64",0		;Attribute DW_AT_name
t1_complex_mult:
		;Tag DW_TAG_structure_type
	dcb	$3
	dcl	$8	;Attribute DW_AT_byte_size
		;Tag DW_TAG_member
	dcb	$4
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$0
	dcb	"msb",0		;Attribute DW_AT_name
	dcl	n15_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$4
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$4
	dcb	"lsb",0		;Attribute DW_AT_name
	dcl	n5_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;End of List
n27_complex_mult:
		;Tag DW_TAG_array_type
	dcb	$5
	dcl	$3	;Attribute DW_AT_byte_size
	dcl	n2_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
		;Tag DW_TAG_subrange_type
	dcb	$6
	dcb	$2	;Attribute DW_AT_upper_bound
	dcb	$0	;End of List
t2_complex_mult:
		;Tag DW_TAG_structure_type
	dcb	$7
	dcl	$8	;Attribute DW_AT_byte_size
	dcb	"Word40",0		;Attribute DW_AT_name
		;Tag DW_TAG_member
	dcb	$4
	dcl	$4	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$0
	dcb	"body",0		;Attribute DW_AT_name
	dcl	n5_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$4
	dcl	$3	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$4
	dcb	"gap",0		;Attribute DW_AT_name
	dcl	n27_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
		;Tag DW_TAG_member
	dcb	$4
	dcl	$1	;Attribute DW_AT_byte_size
	dcb	$5	;Attribute DW_AT_data_member_location
	dcb	$c
	dcl	$7
	dcb	"ext",0		;Attribute DW_AT_name
	dcl	n2_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;End of List
n28_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$2	;Attribute DW_AT_byte_size
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Word16",0		;Attribute DW_AT_name
n29_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n15_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Word32",0		;Attribute DW_AT_name
n30_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$2	;Attribute DW_AT_byte_size
	dcl	n14_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"UWord16",0		;Attribute DW_AT_name
n31_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n5_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"UWord32",0		;Attribute DW_AT_name
n32_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$8	;Attribute DW_AT_byte_size
	dcl	t1_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Word64",0		;Attribute DW_AT_name
n33_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$8	;Attribute DW_AT_byte_size
	dcl	t2_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Word40",0		;Attribute DW_AT_name
n34_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$1	;Attribute DW_AT_byte_size
	dcl	n2_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Word8",0		;Attribute DW_AT_name
n35_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n15_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Vector_Type32",0		;Attribute DW_AT_name
n36_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$2	;Attribute DW_AT_byte_size
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Vector_Component16",0		;Attribute DW_AT_name
n37_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$1	;Attribute DW_AT_byte_size
	dcl	n2_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Vector_Component8",0		;Attribute DW_AT_name
n38_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$1	;Attribute DW_AT_byte_size
	dcl	n3_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Vector_ComponentU8",0		;Attribute DW_AT_name
n39_complex_mult:
		;Tag DW_TAG_typedef
	dcb	$8
	dcl	$8	;Attribute DW_AT_byte_size
	dcl	t2_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"Vector_Type40",0		;Attribute DW_AT_name
n23_complex_mult:
		;Tag DW_TAG_pointer_type
	dcb	$9
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n9_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
n134_complex_mult:
		;Tag DW_TAG_pointer_type
	dcb	$9
	dcl	$4	;Attribute DW_AT_byte_size
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
lcomplex_mult_module0_complex_mult:
		;Tag DW_TAG_subprogram
	dcb	$a
	dcl	_complex_mult	;Attribute DW_AT_low_pc
	dcl	F_complex_mult_end	;Attribute DW_AT_high_pc
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$8	;Attribute DW_AT_decl_line
	dcl	n9_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	"complex_mult",0		;Attribute DW_AT_name
	dcb	$1	;Attribute DW_AT_external
	dcw	$0	;Attribute DW_AT_sp_offset
	dcl	Frame_base__complex_mult_complex_mult	;Attribute DW_AT_frame_base
	dcw	Call_0_end_complex_mult-Call_0_beg_complex_mult	;Attribute DW_AT_calling
Call_0_beg_complex_mult:
	dcb	$e3
	dcl	DW15	;Return Address
Call_0_end_complex_mult:
	dcl	_complex_mult_glb_ref_end_complex_mult-_complex_mult_glb_ref_start_complex_mult	;Attribute DW_AT_global_ref_list
_complex_mult_glb_ref_start_complex_mult:
_complex_mult_glb_ref_end_complex_mult:
	dcl	sibling_0_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_sibling
acomplex_mult__complex_mult_v106:
		;Tag DW_TAG_formal_parameter
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$8	;Attribute DW_AT_decl_line
	dcl	n134_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv106_0	;Attribute DW_AT_location
	dcb	"out",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v107:
		;Tag DW_TAG_formal_parameter
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$8	;Attribute DW_AT_decl_line
	dcl	n134_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv107_1	;Attribute DW_AT_location
	dcb	"in",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v108:
		;Tag DW_TAG_formal_parameter
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$8	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv108_2	;Attribute DW_AT_location
	dcb	"m",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v109:
		;Tag DW_TAG_formal_parameter
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$8	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv109_3	;Attribute DW_AT_location
	dcb	"sc_re",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v110:
		;Tag DW_TAG_formal_parameter
	dcb	$b
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$8	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv110_4	;Attribute DW_AT_location
	dcb	"sc_im",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v111:
		;Tag DW_TAG_variable
	dcb	$c
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$13	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_mult_optimized_away	;Attribute DW_AT_location
	dcb	"i",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v112:
		;Tag DW_TAG_variable
	dcb	$c
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$12	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv112_6	;Attribute DW_AT_location
	dcb	"shResult4",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v113:
		;Tag DW_TAG_variable
	dcb	$c
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$11	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_mult_optimized_away	;Attribute DW_AT_location
	dcb	"shResult3",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v114:
		;Tag DW_TAG_variable
	dcb	$c
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$10	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv114_8	;Attribute DW_AT_location
	dcb	"shResult2",0		;Attribute DW_AT_name
acomplex_mult__complex_mult_v115:
		;Tag DW_TAG_variable
	dcb	$c
	dcw	$1	;Attribute DW_AT_decl_file
	dcw	$f	;Attribute DW_AT_decl_line
	dcl	n13_complex_mult-DebugInfoStart_complex_mult+4	;Attribute DW_AT_type
	dcb	$0	;Attribute DW_AT_external
	dcb	$0	;Attribute DW_AT_declaration
	dcl	Loc_complex_multv115_9	;Attribute DW_AT_location
	dcb	"shResult1",0		;Attribute DW_AT_name
	dcb	$0	;End of List
sibling_0_complex_mult:
	dcb	$0	;Null Entry
DebugInfoEnd_complex_mult:
	endsec

	section	.debug_macinfo debug 
DebugMacroStart_complex_mult:
	dcl	$0
DebugMacroEnd_complex_mult:
	endsec

	section	.debug_abbrev debug
DebugAbbrevStart_complex_mult:
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
		;DW_TAG_structure_type
	dcb	$3	;Code
	dcb	$13	;Tag
	dcb	$1
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_member
	dcb	$4	;Code
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
	dcb	$5	;Code
	dcb	$1	;Tag
	dcb	$1
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_subrange_type
	dcb	$6	;Code
	dcb	$21	;Tag
	dcb	$0
	dcb	$2f	;Attrib DW_AT_upper_bound
	dcb	$d	;Form DW_FORM_sdata
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_structure_type
	dcb	$7	;Code
	dcb	$13	;Tag
	dcb	$1
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$3	;Attrib DW_AT_name
	dcb	$8	;Form DW_FORM_string
	dcb	$0
	dcb	$0	;Form 
		;DW_TAG_typedef
	dcb	$8	;Code
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
		;DW_TAG_pointer_type
	dcb	$9	;Code
	dcb	$f	;Tag
	dcb	$0
	dcb	$b	;Attrib DW_AT_byte_size
	dcb	$6	;Form DW_FORM_data4
	dcb	$49	;Attrib DW_AT_type
	dcb	$13	;Form DW_FORM_ref4
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
		;DW_TAG_formal_parameter
	dcb	$b	;Code
	dcb	$5	;Tag
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
		;DW_TAG_variable
	dcb	$c	;Code
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
	dcl	DebugLineEnd_complex_mult-DebugLineStart_complex_mult
DebugLineStart_complex_mult:
	dcw	$2
	dcl	DebugLinePrologEnd_complex_mult-DebugLinePrologStart_complex_mult
DebugLinePrologStart_complex_mult:
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
	dcb	"complex_mult.c",0		;File names list
	dcb	$1	;Index in Include directories list
	dcb	$ce	;Last modification time: 1701729742
	dcb	$ab
	dcb	$b9
	dcb	$ab
	dcb	$6
	dcb	$b3	;File length: 1331
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
DebugLinePrologEnd_complex_mult:

__dbg_ln__complex_mult_start:
	dcb	$0
	dcb	$5
	dcb	$2	;DW_LNE_set_address
	dcl	_complex_mult
	dcb	$4	;DW_LNS_set_file
	dcb	$1
	dcb	$7	;DW_LNS_set_basic_block
	dcb	33	;line+=7 to 8, addr=DW1
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 8, addr=DW1
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$3	;DW_LNS_advance_line
	dcb	$d	;line+=13 to 21
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW2-DW1	;addr=DW2
	dcb	$1	;DW_LNS_copy
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26+25*(DW3-DW2)/2	;line+=0 to 21, addr=DW3
	dcb	$b	;DW_LNS_negate_eos
	dcb	26+25*(DW4-DW3)/2	;line+=0 to 21, addr=DW4
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	DW6-DW4	;addr=DW6
	dcb	$20	;special opcode: line+=6 to 27
	dcb	$b	;DW_LNS_negate_eos
	dcb	36+25*(DW7-DW6)/2	;line+=10 to 37, addr=DW7
	dcb	19	;line+=-7 to 30, addr=DW7
	dcb	$6	;DW_LNS_negate_stmt
	dcb	23	;line+=-3 to 27, addr=DW7
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	33+25*(DW8-DW7)/2	;line+=7 to 34, addr=DW8
	dcb	33	;line+=7 to 41, addr=DW8
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	19+25*(DW9-DW8)/2	;line+=-7 to 34, addr=DW9
	dcb	$b	;DW_LNS_negate_eos
	dcb	33	;line+=7 to 41, addr=DW9
	dcb	26+25*(DW10-DW9)/2	;line+=0 to 41, addr=DW10
	dcb	$6	;DW_LNS_negate_stmt
	dcb	28+25*(DW11-DW10)/2	;line+=2 to 43, addr=DW11
	dcb	27	;line+=1 to 44, addr=DW11
	dcb	$6	;DW_LNS_negate_stmt
	dcb	23	;line+=-3 to 41, addr=DW11
	dcb	$b	;DW_LNS_negate_eos
	dcb	28+25*(DW12-DW11)/2	;line+=2 to 43, addr=DW12
	dcb	27	;line+=1 to 44, addr=DW12
	dcb	23+25*(DW13-DW12)/2	;line+=-3 to 41, addr=DW13
	dcb	$7	;DW_LNS_set_basic_block
	dcb	$b	;DW_LNS_negate_eos
	dcb	$6	;DW_LNS_negate_stmt
	dcb	31+25*(DW14-DW13)/2	;line+=5 to 46, addr=DW14
	dcb	$6	;DW_LNS_negate_stmt
	dcb	26	;line+=0 to 46, addr=DW14
	dcb	$b	;DW_LNS_negate_eos
	dcb	26+25*(DW15-DW14)/2	;line+=0 to 46, addr=DW15
	dcb	$9	;DW_LNS_fixed_advance_pc
	dcw	FuncEnd_complex_mult-DW15	;addr=FuncEnd_complex_mult
	dcb	$3	;DW_LNS_advance_line
	dcb	$52	;Reset line number: line-=46 to 0
	dcb	$0
	dcb	$1
	dcb	$1	;DW_LNE_end_sequence

__dbg_ln__complex_mult_end:
;PRAGMA remove_block __dbg_ln__complex_mult_start,__dbg_ln__complex_mult_end-__dbg_ln__complex_mult_start,_complex_mult
DebugLineEnd_complex_mult:
	endsec

	section	.debug_pubnames debug
	dcl	DebugPubNamesEnd_complex_mult-DebugPubNamesStart_complex_mult	;Public Names section length
DebugPubNamesStart_complex_mult:
	dcw	$2	;DWARF version
	dcl	DebugInfoStart_complex_mult-4	;Compilation unit info start
	dcl	DebugInfoEnd_complex_mult-DebugInfoStart_complex_mult	;Compilation unit info length
	dcl	$0
DebugPubNamesEnd_complex_mult:
	endsec

	section	.debug_aranges debug
	dcl	DebugAddressRangesEnd_complex_mult-DebugAddressRangesStart_complex_mult	;Address Ranges section length
DebugAddressRangesStart_complex_mult:
	dcw	$2	;DWARF version
	dcl	DebugInfoStart_complex_mult-4	;Compilation unit info start
	dcb	$4	;Size of Address
	dcb	$0	;Size of Segment Descriptor
	dcl	$0
	dcl	TextStart_complex_mult	;Compilation unit D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/complex_mult.c start
	dcl	TextEnd_complex_mult-TextStart_complex_mult	;Compilation unit D:/_code/dsp-complex-mult-ETTI-psc/optimized/src/complex_mult.c length
	dcl	$0
	dcl	$0
DebugAddressRangesEnd_complex_mult:
	endsec

	section	.debug_loc debug
Loc_complex_mult_optimized_away:
	dcl	$0	;Optimized away
	dcl	$0	;List end
Frame_base__complex_mult_complex_mult:
	dcl	_complex_mult	;Start Address
	dcl	DW2	;End Address
	dcw	Loc_0_end_complex_mult-*-2	;Location
Loc_0_beg_complex_mult:
	dcb	$50	;DW_OP_reg0, Sp
Loc_0_end_complex_mult:
	dcl	DW2	;Start Address
	dcl	DW15	;End Address
	dcw	Loc_1_end_complex_mult-*-2	;Location
Loc_1_beg_complex_mult:
	dcb	$70	;DW_OP_breg0, Sp
	dcb	$78	;-8
Loc_1_end_complex_mult:
	dcl	DW15	;Start Address
	dcl	F_complex_mult_end	;End Address
	dcw	Loc_2_end_complex_mult-*-2	;Location
Loc_2_beg_complex_mult:
	dcb	$50	;DW_OP_reg0, Sp
Loc_2_end_complex_mult:
	dcl	$0	;List end
	dcl	$0
Loc_complex_multv106_0:			;v106
	dcl	_complex_mult	;Start Address
	dcl	DW4	;End Address
	dcw	Loc_3_end_complex_mult-*-2	;Location
Loc_3_beg_complex_mult:
	dcb	$91	;DW_OP_fbreg
	dcb	$70	;-16
Loc_3_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv107_1:			;v107
	dcl	_complex_mult	;Start Address
	dcl	DW4	;End Address
	dcw	Loc_4_end_complex_mult-*-2	;Location
Loc_4_beg_complex_mult:
	dcb	$91	;DW_OP_fbreg
	dcb	$74	;-12
Loc_4_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv108_2:			;v108
	dcl	DW3	;Start Address
	dcl	DW4	;End Address
	dcw	Loc_5_end_complex_mult-*-2	;Location
Loc_5_beg_complex_mult:
	dcb	$51	;DW_OP_reg1, d0
Loc_5_end_complex_mult:
	dcl	DW1	;Start Address
	dcl	DW3	;End Address
	dcw	Loc_6_end_complex_mult-*-2	;Location
Loc_6_beg_complex_mult:
	dcb	$91	;DW_OP_fbreg
	dcb	$76	;-10
Loc_6_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv109_3:			;v109
	dcl	DW3	;Start Address
	dcl	DW14	;End Address
	dcw	Loc_7_end_complex_mult-*-2	;Location
Loc_7_beg_complex_mult:
	dcb	$55	;DW_OP_reg5, d4
Loc_7_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv110_4:			;v110
	dcl	DW5	;Start Address
	dcl	DW14	;End Address
	dcw	Loc_8_end_complex_mult-*-2	;Location
Loc_8_beg_complex_mult:
	dcb	$57	;DW_OP_reg7, d6
Loc_8_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv112_6:			;v112
	dcl	DW8	;Start Address
	dcl	DW10	;End Address
	dcw	Loc_9_end_complex_mult-*-2	;Location
Loc_9_beg_complex_mult:
	dcb	$59	;DW_OP_reg9, d8
Loc_9_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv114_8:			;v114
	dcl	DW8	;Start Address
	dcl	DW10	;End Address
	dcw	Loc_10_end_complex_mult-*-2	;Location
Loc_10_beg_complex_mult:
	dcb	$58	;DW_OP_reg8, d7
Loc_10_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
Loc_complex_multv115_9:			;v115
	dcl	DW8	;Start Address
	dcl	DW10	;End Address
	dcw	Loc_11_end_complex_mult-*-2	;Location
Loc_11_beg_complex_mult:
	dcb	$56	;DW_OP_reg6, d5
Loc_11_end_complex_mult:
	dcl	$0	;List End
	dcl	$0
	endsec


	section	.debug_frame debug
DebugFrameStart_complex_mult:
	dcl	CommonInfoEntryStandardEnd_complex_mult-CommonInfoEntryStandardStart_complex_mult	;Standard CIE
CommonInfoEntryStandardStart_complex_mult:
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
CommonInfoEntryStandardEnd_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc3_complex_mult-CommonInfoEntryNonStandardStart_cc3_complex_mult	;NonStandard_cc3 CIE
CommonInfoEntryNonStandardStart_cc3_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc3_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc4_complex_mult-CommonInfoEntryNonStandardStart_cc4_complex_mult	;NonStandard_cc4 CIE
CommonInfoEntryNonStandardStart_cc4_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc4_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc5_complex_mult-CommonInfoEntryNonStandardStart_cc5_complex_mult	;NonStandard_cc5 CIE
CommonInfoEntryNonStandardStart_cc5_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc5_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc6_complex_mult-CommonInfoEntryNonStandardStart_cc6_complex_mult	;NonStandard_cc6 CIE
CommonInfoEntryNonStandardStart_cc6_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc6_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc7_complex_mult-CommonInfoEntryNonStandardStart_cc7_complex_mult	;NonStandard_cc7 CIE
CommonInfoEntryNonStandardStart_cc7_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc7_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc8_complex_mult-CommonInfoEntryNonStandardStart_cc8_complex_mult	;NonStandard_cc8 CIE
CommonInfoEntryNonStandardStart_cc8_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc8_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc9_complex_mult-CommonInfoEntryNonStandardStart_cc9_complex_mult	;NonStandard_cc9 CIE
CommonInfoEntryNonStandardStart_cc9_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc9_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc10_complex_mult-CommonInfoEntryNonStandardStart_cc10_complex_mult	;NonStandard_cc10 CIE
CommonInfoEntryNonStandardStart_cc10_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc10_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc11_complex_mult-CommonInfoEntryNonStandardStart_cc11_complex_mult	;NonStandard_cc11 CIE
CommonInfoEntryNonStandardStart_cc11_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc11_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc12_complex_mult-CommonInfoEntryNonStandardStart_cc12_complex_mult	;NonStandard_cc12 CIE
CommonInfoEntryNonStandardStart_cc12_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc12_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc13_complex_mult-CommonInfoEntryNonStandardStart_cc13_complex_mult	;NonStandard_cc13 CIE
CommonInfoEntryNonStandardStart_cc13_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc13_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc14_complex_mult-CommonInfoEntryNonStandardStart_cc14_complex_mult	;NonStandard_cc14 CIE
CommonInfoEntryNonStandardStart_cc14_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc14_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc15_complex_mult-CommonInfoEntryNonStandardStart_cc15_complex_mult	;NonStandard_cc15 CIE
CommonInfoEntryNonStandardStart_cc15_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc15_complex_mult:
	dcl	CommonInfoEntryNonStandardEnd_cc16_complex_mult-CommonInfoEntryNonStandardStart_cc16_complex_mult	;NonStandard_cc16 CIE
CommonInfoEntryNonStandardStart_cc16_complex_mult:
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
CommonInfoEntryNonStandardEnd_cc16_complex_mult:
	dcl	_DE__complex_mult_complex_mult_End-_DE__complex_mult_complex_mult_Start
_DE__complex_mult_complex_mult_Start:
	dcl	CommonInfoEntryStandardStart_complex_mult-4	;CIE_ptr std
	dcl	_complex_mult	;initial_location
	dcl	F_complex_mult_end-_complex_mult	;address_range
	dcb	$3	;DW_CFA_advance_loc2: (DW2-DW1)/2
	dcw	(DW2-DW1)/2
	dcb	$87	;DW_CFA_offset, Reg #7
	dcb	$0	;Offset from CFA
	dcb	$88	;DW_CFA_offset, Reg #8
	dcb	$1	;Offset from CFA
	dcb	$e	;DW_CFA_def_cfa_offset: 2
	dcb	$2
	dcb	$3	;DW_CFA_advance_loc2: (DW15-DW2)/2
	dcw	(DW15-DW2)/2
	dcb	$c7	;DW_CFA_restore, Reg #7
	dcb	$c8	;DW_CFA_restore, Reg #8
	dcb	$e	;DW_CFA_def_cfa_offset: 0
	dcb	$0
_DE__complex_mult_complex_mult_End:
	endsec


	section	.debug_flow_graph debug
DebugFlowGraphStart_complex_mult:
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW1",0	
	dcb	"DW4",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"DW5",0	
	dcb	"DW14",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW5",0	
	dcb	"DW5",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"DW6",0	
	dcb	$7	;DW_FG_PRED
	dcb	$1	;Number Of Strings
	dcb	"DW1",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW6",0	
	dcb	"DW13",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$2	;Number Of Strings
	dcb	"DW6",0	
	dcb	"DW14",0	
	dcb	$7	;DW_FG_PRED
	dcb	$2	;Number Of Strings
	dcb	"DW5",0	
	dcb	"DW6",0	
	dcb	$5	;DW_FG_BLOCK
	dcb	"DW14",0	
	dcb	"DW15",0	
	dcb	$6	;DW_FG_SUCC
	dcb	$1	;Number Of Strings
	dcb	"@NONE@",0	
	dcb	$7	;DW_FG_PRED
	dcb	$2	;Number Of Strings
	dcb	"DW6",0	
	dcb	"DW1",0	
	dcb	$8

	endsec

	section	.debug_flow_blocks debug
DebugFlowBlocksStart_complex_mult:
	dcb	$8	;DW_FG_END

	endsec

	section	.debug_vars_read_write debug
DebugVarsReadWriteStart_complex_mult:
	dcb	$2	;DW_RWDI_ROUTINE
	dcb	"_complex_mult",0	
	dcb	$8

	endsec
