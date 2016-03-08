; q12 - to-binary
; convert numbers to binary

(define (to-binary n)
  (cond
    ((= n 1) 1)
    ((= n 0) 1)
    ((= (modulo (floor n) 2) 0) (cons 0 (to-binary (/ (floor n) 2))))
    (else (cons 1 (to-binary (/ (floor n) 2))))
  )
)

;(display "binary: ")
;(display (to-binary 9))
;(newline)

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
