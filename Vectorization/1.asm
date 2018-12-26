; mark_description "Intel(R) C++ Intel(R) 64 Compiler for applications running on IA-32, Version 18.0.5.274 Build 20180823";
; mark_description "/Fa:1 /Qopt-report:2 /Qopt-report-phase:vec";
	.686P
 	.387
	OPTION DOTNAME
	ASSUME	CS:FLAT,DS:FLAT,SS:FLAT
;ident "/FAILIFMISMATCH:\"_CRT_STDIO_ISO_WIDE_SPECIFIERS=0\""
;ident "/FAILIFMISMATCH:\"_MSC_VER=1900\""
;ident "/FAILIFMISMATCH:\"_ITERATOR_DEBUG_LEVEL=0\""
;ident "/FAILIFMISMATCH:\"RuntimeLibrary=MT_StaticRelease\""
;ident "-defaultlib:libcpmt"
_TEXT	SEGMENT  PARA PUBLIC FLAT  'CODE'
;	COMDAT _main
TXTST0:
; -- Begin  _main
;_main	ENDS
_TEXT	ENDS
_TEXT	SEGMENT  PARA PUBLIC FLAT  'CODE'
;	COMDAT _main
; mark_begin;
IF @Version GE 800
  .MMX
ELSEIF @Version GE 612
  .MMX
  MMWORD TEXTEQU <QWORD>
ENDIF
IF @Version GE 800
  .XMM
ELSEIF @Version GE 614
  .XMM
  XMMWORD TEXTEQU <OWORD>
ENDIF
       ALIGN     16
	PUBLIC _main
; --- main()
_main	PROC NEAR 
.B1.1:                          ; Preds .B1.0
                                ; Execution count [1.00e+000]
L1::
                                                           ;77.1
        push      ebp                                           ;77.1
        mov       ebp, esp                                      ;77.1
        and       esp, -128                                     ;77.1
        sub       esp, 128                                      ;77.1
        xor       eax, eax                                      ;77.1
        push      eax                                           ;77.1
        push      eax                                           ;77.1
        push      3                                             ;77.1
        call      ___intel_new_feature_proc_init                ;77.1
                                ; LOE ebx esi edi
.B1.18:                         ; Preds .B1.1
                                ; Execution count [1.00e+000]
        stmxcsr   DWORD PTR [24+esp]                            ;77.1
        mov       DWORD PTR [?N@@3HA], 1000000                  ;79.2
        or        DWORD PTR [24+esp], 32768                     ;77.1
        ldmxcsr   DWORD PTR [24+esp]                            ;77.1
        push      4000000                                       ;83.19
;       operator new[](size_t)
        call      ??_U@YAPAXI@Z                                 ;83.19
                                ; LOE ebx esi edi
.B1.2:                          ; Preds .B1.18
                                ; Execution count [1.00e+000]
        mov       eax, DWORD PTR [?N@@3HA]                      ;84.19
        shl       eax, 2                                        ;84.19
        push      eax                                           ;84.19
;       operator new[](size_t)
        call      ??_U@YAPAXI@Z                                 ;84.19
                                ; LOE ebx esi edi
.B1.19:                         ; Preds .B1.2
                                ; Execution count [1.00e+000]
        add       esp, 20                                       ;84.19
                                ; LOE ebx esi edi
.B1.3:                          ; Preds .B1.19
                                ; Execution count [1.00e+000]
        mov       edx, DWORD PTR [?N@@3HA]                      ;94.22
        test      edx, edx                                      ;94.22
        jle       .B1.9         ; Prob 10%                      ;94.22
                                ; LOE edx ebx esi edi
.B1.4:                          ; Preds .B1.3
                                ; Execution count [9.00e-001]
        xor       eax, eax                                      ;94.13
        mov       DWORD PTR [esp], esi                          ;94.13[spill]
        mov       esi, edx                                      ;94.13
        mov       DWORD PTR [4+esp], edi                        ;94.13[spill]
        mov       DWORD PTR [8+esp], ebx                        ;94.13[spill]
        mov       ebx, eax                                      ;94.13
                                ; LOE ebx esi
.B1.5:                          ; Preds .B1.7 .B1.4
                                ; Execution count [5.00e+000]
;       rand()
        call      _rand                                         ;95.18
                                ; LOE ebx esi
.B1.6:                          ; Preds .B1.5
                                ; Execution count [5.00e+000]
;       rand()
        call      _rand                                         ;96.18
                                ; LOE ebx esi
.B1.7:                          ; Preds .B1.6
                                ; Execution count [5.00e+000]
        inc       ebx                                           ;94.25
        cmp       ebx, esi                                      ;94.22
        jl        .B1.5         ; Prob 82%                      ;94.22
                                ; LOE ebx esi
.B1.8:                          ; Preds .B1.7
                                ; Execution count [9.00e-001]
        mov       esi, DWORD PTR [esp]                          ;[spill]
        mov       edi, DWORD PTR [4+esp]                        ;[spill]
        mov       ebx, DWORD PTR [8+esp]                        ;[spill]
                                ; LOE ebx esi edi
.B1.9:                          ; Preds .B1.3 .B1.8
                                ; Execution count [1.00e+000]
        push      4                                             ;106.10
;       operator new(size_t)
        call      ??2@YAPAXI@Z                                  ;106.10
                                ; LOE eax ebx esi edi
.B1.20:                         ; Preds .B1.9
                                ; Execution count [1.00e+000]
        add       esp, 4                                        ;106.10
                                ; LOE eax ebx esi edi
.B1.10:                         ; Preds .B1.20
                                ; Execution count [1.00e+000]
        test      eax, eax                                      ;106.10
        je        .B1.13        ; Prob 32%                      ;106.10
                                ; LOE eax ebx esi edi
.B1.11:                         ; Preds .B1.10
                                ; Execution count [6.74e-001]
        mov       DWORD PTR [eax], 0                            ;106.10
        jmp       .B1.14        ; Prob 100%                     ;106.10
                                ; LOE eax ebx esi edi
.B1.13:                         ; Preds .B1.10
                                ; Execution count [3.26e-001]
        xor       eax, eax                                      ;106.10
                                ; LOE eax ebx esi edi
.B1.14:                         ; Preds .B1.11 .B1.13
                                ; Execution count [1.00e+000]
        mov       edx, DWORD PTR [?N@@3HA]                      ;107.15
        push      OFFSET FLAT: ??_C@_05A@Pause?$AA@             ;133.2
        mov       DWORD PTR [eax], edx                          ;107.2
;       system(const char *)
        call      _system                                       ;133.2
                                ; LOE ebx esi edi
.B1.15:                         ; Preds .B1.14
                                ; Execution count [1.00e+000]
        xor       eax, eax                                      ;134.12
        mov       esp, ebp                                      ;134.12
        pop       ebp                                           ;134.12
        ret                                                     ;134.12
        ALIGN     16
                                ; LOE
; mark_end;
_main ENDP
;_main	ENDS
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  _main
_TEXT	SEGMENT  PARA PUBLIC FLAT  'CODE'
;	COMDAT ?doit1@@YAXPAHPAU_x@@@Z
TXTST1:
; -- Begin  ?doit1@@YAXPAHPAU_x@@@Z
;?doit1@@YAXPAHPAU_x@@@Z	ENDS
_TEXT	ENDS
_TEXT	SEGMENT  PARA PUBLIC FLAT  'CODE'
;	COMDAT ?doit1@@YAXPAHPAU_x@@@Z
; mark_begin;
       ALIGN     16
	PUBLIC ?doit1@@YAXPAHPAU_x@@@Z
; --- doit1(int *, _x *)
?doit1@@YAXPAHPAU_x@@@Z	PROC NEAR 
; parameter 1: 4 + esp
; parameter 2: 8 + esp
.B2.1:                          ; Preds .B2.0
                                ; Execution count [1.00e+000]
L8::
                                                           ;36.1
        ret                                                     ;39.1
        ALIGN     16
                                ; LOE
; mark_end;
?doit1@@YAXPAHPAU_x@@@Z ENDP
;?doit1@@YAXPAHPAU_x@@@Z	ENDS
_TEXT	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
; -- End  ?doit1@@YAXPAHPAU_x@@@Z
_BSS	SEGMENT  DWORD PUBLIC FLAT  'BSS'
	ALIGN 004H
	PUBLIC ?N@@3HA
?N@@3HA	DD 1 DUP (?)	; pad
_BSS	ENDS
;	COMDAT ??_C@_05A@Pause?$AA@
_RDATA	SEGMENT  DWORD PUBLIC FLAT READ  'DATA'
;	COMDAT ??_C@_05A@Pause?$AA@
??_C@_05A@Pause?$AA@	DD	1937072464
	DW	101
;??_C@_05A@Pause?$AA@	ENDS
_RDATA	ENDS
_DATA	SEGMENT  DWORD PUBLIC FLAT  'DATA'
_DATA	ENDS
EXTRN	??_U@YAPAXI@Z:PROC
EXTRN	_system:PROC
EXTRN	_rand:PROC
EXTRN	??2@YAPAXI@Z:PROC
EXTRN	___intel_new_feature_proc_init:PROC
	INCLUDELIB <libmmt>
	INCLUDELIB <LIBCMT>
	INCLUDELIB <libirc>
	INCLUDELIB <svml_dispmt>
	INCLUDELIB <OLDNAMES>
	INCLUDELIB <libdecimal>
	END
