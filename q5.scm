; q5 - noatoms
; takes a list and returns the number of atoms it contains

(define (noatoms lst)
  (if (null? lst) 
    0
    (+ 1 (noatoms (cdr lst)))
  )
)

(display (noatoms '(a b c d e)))
(newline)
