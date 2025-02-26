; �������������������������������������������������������������������������

      .486                                      ; create 32 bit code
      .model flat, stdcall                      ; 32 bit memory model
      option casemap :none                      ; case sensitive 

;     include files
;     ~~~~~~~~~~~~~
      include \masm32\include\windows.inc       ; main windows include file
      include \masm32\include\masm32.inc        ; masm32 library include

    ; -------------------------
    ; Windows API include files
    ; -------------------------
      include \masm32\include\gdi32.inc
      include \masm32\include\user32.inc
      include \masm32\include\kernel32.inc
      include \masm32\include\Comctl32.inc
      include \masm32\include\comdlg32.inc
      include \masm32\include\shell32.inc
      include \masm32\include\oleaut32.inc
      include \masm32\include\ole32.inc
      include \masm32\include\msvcrt.inc

      include \masm32\include\dialogs.inc       ; macro file for dialogs
      include \masm32\macros\macros.asm         ; masm32 macro file

;     libraries
;     ~~~~~~~~~
      includelib \masm32\lib\masm32.lib         ; masm32 static library

    ; ------------------------------------------
    ; import libraries for Windows API functions
    ; ------------------------------------------
      includelib \masm32\lib\gdi32.lib
      includelib \masm32\lib\user32.lib
      includelib \masm32\lib\kernel32.lib
      includelib \masm32\lib\Comctl32.lib
      includelib \masm32\lib\comdlg32.lib
      includelib \masm32\lib\shell32.lib
      includelib \masm32\lib\oleaut32.lib
      includelib \masm32\lib\ole32.lib
      includelib \masm32\lib\msvcrt.lib

; �������������������������������������������������������������������������

; ************************************************************************
;    include \masm32\include\masm32rt.inc
; ************************************************************************

.data
buffer_for_string db 10 dup(0)
title_string db "���������:  ",0
szformat db "%u",0Dh,0Ah,0

.data?

.code
start:
; ************************************************************************
main proc
	LOCAL Result		:DWORD
	LOCAL var_00		:DWORD
	LOCAL var_01		:DWORD
	LOCAL var_02		:DWORD
	LOCAL var_03		:DWORD
	LOCAL var_04		:BYTE
	LOCAL var_05		:DWORD
	LOCAL var_06		:DWORD
	LOCAL var_07		:DWORD
	

; ����� �����(����) �������� �������. 
; ������ �������� ������ �� ������ ��������� ����� ������� ...
; ###########################################################################    















; ������ ��� �������� �� ��� � ������� ��������� ��� ���������
mov Result,eax

; ###########################################################################
	push Result
	push offset szformat
	push offset buffer_for_string
	call wsprintf

	push MB_OK
	push offset title_string
	push offset buffer_for_string
	push 0
	call MessageBox

	push 0
	call ExitProcess
	
main endp
; ************************************************************************
end start


Comment ^
������ ���������

.386
.MODEL Flat, STDCALL
.DATA
<���� ����������p����� ������>
......
.DATA?
<���� �� ����������p����� ������>
......
.CONST
<���� ���������>
......
.CODE
<�����>
<��� ���>

.....

end <�����>
^

