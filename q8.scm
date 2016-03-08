; q8 - reversal
; takes a list and returns it reversed
; I will use a helper function

(define (last-element l)
  (cond ((null? (cdr l)) (car l))
        (else (last-element (cdr l)))
  )
)



;(define (reversal lst)
  ;(if (null? lst)
    ;'()
    ;(cons (car lst) (reversal (cdr lst)))
  ;)
;)

(define (reversal lst)
  (if (null? lst)
    result
    (begin (cons (car lst) result)
           (reversal (cdr lst) result))
  )
)


(display (reversal '(a b c d e) '()))
(newline)
(display (last-element '(a b c d e)))
(newline)
