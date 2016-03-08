; another test for q10
; deals with expanding all lists to atoms and appending

(define (flatten lst)
  (cond
    ((null? lst) '())
    ((pair? lst) (append (flatten (car lst)) (flatten (cdr lst))))
    (else (list lst))
  )
)

(display (flatten '(((a b) c (d) ((e (f) g))))))
(newline)
