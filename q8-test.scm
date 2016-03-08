; q8 - reversal - test

(define (reversal lst)
  (if (null? lst)
    '()
    (append (reversal (cdr lst)) (list (car lst)))
  )
)

(display (reversal '(a b c d e)))
(newline)
