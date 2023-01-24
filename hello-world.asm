    default rel               ; RIP-relative addressing like [rel msg] by default 
    global  WinMain
    extern  ExitProcess
    extern  MessageBoxA

section .data
    title:  db 'x64', 0      
    msg     db 'Hello, Asm!', 0

section .text
WinMain:
    sub rsp, 28h              ; reserve shadow space and make RSP%16 == 0
    mov rcx, 0                ; hWind = HWND_DESKTOP
    lea rdx, [msg]            ; LPCSTR lpText
    lea r8,  [title]          ; LPCSTR lpCaption
    mov r9d, 0                ; utype = MB_OK
    call MessageBoxA

    mov ecx, eax              ; exit status
    call ExitProcess          
    
    add rsp, 28h              ; restore RSP
    hlt
  