; q11 - fib
; each sequence is the sum of the previous two terms
; start with 1 and 2
; with max num of 4 million, sum all the even-valued terms

; t = term
; a = accum

(define (fib term1 term2 n)
  (if (>= term1 4000000)
    0
    (let ((accu term1))
      (print "t: " term1 "\n")
      (set! term2 (+ term1 term2))
      (set! term1 (- term2 term1))
      (if (= 0 (modulo accu 2))
        (begin 
          (print "a: " accu "\n")
          (+ accu (fib term1 term2 (+ n 1)))
        )
        (fib term1 term2 (+ n 1))
      )
    )
  )
)

(print "sum of even nums: " (fib 1 2 0) "\n")
