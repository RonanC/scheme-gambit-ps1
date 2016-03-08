; q7 - range
; takes an integer n 
; and returns a list containing the atoms 1, 2, 3, ..., n

(define (range n)
  (if (= n 0)
    (quote ())
    (cons n (range (- n 1)))
  )
)

(display (range 10))
(newline)
