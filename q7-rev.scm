; q7 - range
; takes an integer n 
; and returns a list containing the atoms 1, 2, 3, ..., n
; reversed output

(define (range n i)
  (if (= n i)
    (quote ())
    (cons (+ i 1) (range n (+ i 1)))
  )
)

(display (range 10 0))
(newline)
