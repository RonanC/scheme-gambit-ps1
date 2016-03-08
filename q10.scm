; q10 - flatten
; takes in a list, possible including sublists, 
; but ultimately are atoms
; returns a sentence containing all the atoms of the list,
; in the order in which they appear in the original

; define atom?
(define atom?
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; define lat?
(define lat?
  (lambda (l)
    (cond
      ((null? l) #t)
      ((atom? (car l)) (lat? (cdr l)))
      (else #f))))


(define (flatten lst)
  (cond
    ((lat? lst) lst)
    ((atom? (car lst)) (cons (car lst) (flatten (cdr lst))))
    (else (flatten (cdr lst)))
  )
  ;(if (lat? lst)
    ;lst
    ;(if (null? lst)
      ;'() ; null
      ;(if (atom? (car lst))
        ;(cons (car lst)(flatten (cdr lst)))
        ;(flatten (car lst))
      ;)
    ;)
  ;)
)

(display (flatten '(((a b) c (d e)) (f g) (((h))) (i j) k)))
(newline)

; if list then call recursive function, once at end cons items
; etc
