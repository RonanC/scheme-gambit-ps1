; q9 - sum35
; write a procedure that sums all numbers
; that are multiples of 3 or 5 under 1000

(define (sum35 n)
  (if (= n 0)
    0
    (if (= (modulo n 3) 0)
      (+ n (sum35 (- n 1)))
      (if (= (modulo n 5) 0)
        (+ n (sum35 (- n 1)))
        (sum35 (- n 1))
      )
    )
  )
)

(display (sum35 6))
(newline)
