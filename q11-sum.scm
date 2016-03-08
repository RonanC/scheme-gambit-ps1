; q11 - fib
; each sequence is the sum of the previous two terms
; start with 1 and 2
; with max num of 4 million, sum all the even-valued terms

(define (fib term1 term2 n)
  (if (= n 5)
    0
    (let ((accu term1))
      (display term1)(newline)
      (set! term2 (+ term1 term2))
      (set! term1 (- term2 term1))
      (+ accu (fib term1 term2 (+ n 1)))
    )
  )
)

(display (fib 1 2 0))
(newline)
