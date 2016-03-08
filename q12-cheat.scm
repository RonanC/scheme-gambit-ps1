; q12 - to-binary
; convert numbers to binary
; cheaters solution

(define (to-binary n)
  (number->string n 2)
)

(print (to-binary 9) "\n")  ;1001
(print (to-binary 23) "\n") ;10111

; 0 = 0
; 1 = 1
; 2 = 10
; 3 = 11
; 4 = 100
; 5 = 101
; 6 = 110
; 7 = 111
; 8 = 1000
; 9 = 1001
; 10 = 1010
