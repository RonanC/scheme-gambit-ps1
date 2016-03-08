; q2
(define (discount price disc) 
  (- price (* price (/ disc 100.))))

(print (discount 10 5) "\n")
(print (discount 29.90 50) "\n")
