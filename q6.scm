; q6 - forever
; explain why it doesn't give a result

(define (forever n)
  (if (= n 0)
    1
    (+ 1 (forever n))))

(display (forever 10))
(newline)

; n starts at 10
; we never change the value of n
; hence we always call the recursive function
; hence the loop never ends
