%ifndef EXIT_SUBROUTINES_INCLUDED
%define EXIT_SUBROUTINES_INCLUDED

%define EXIT_SUCCESS 0
%define EXIT_FAILURE 1

;--------------------------------------------------------
; exit_success
;--------------------------------------------------------
; Description:
;   Subroutine for exiting the program with a success status.
; 
; Input:
;   None
;
; Output:
;   None
;
;--------------------------------------------------------
exit_success:
    mov rax, 60             ; Set sys_exit system call
    mov rdi, EXIT_SUCCESS   ; Set the exit status to EXIT_SUCCESS (0)
    syscall                 ; Terminate program

;--------------------------------------------------------
; exit_failure
;--------------------------------------------------------
; Description:
;   Subroutine for exiting the program with a failure status.
; 
; Input:
;   None
;
; Output:
;   None
;
;--------------------------------------------------------
exit_failure:
    mov rax, 60             ; Set sys_exit system call
    mov rdi, EXIT_FAILURE   ; Set the exit status to EXIT_FAILURE (1)
    syscall                 ; Terminate program

%endif ; EXIT_SUBROUTINES_INCLUDED
