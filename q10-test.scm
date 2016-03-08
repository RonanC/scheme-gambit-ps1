; q10 test flatten

(define (flatten lst)
  (cond
    ((null? lst) '()) ; if empty list passed in then produce empty list
    ((pair? lst)  ; if one item at least in list then process
     (append (flatten (car lst)) (flatten (cdr lst))))
    (else (list lst)) ; is atom passed in then turn into a list
  )
)

(display (flatten '(a (b c) d)))
(newline)

; this is the important line
; (append (flatten (car lst)) (flatten (cdr lst)))
; appending the processed car to the proccessed cdr will make sure we end up with all lists expanded.
; the only way to escape the append function is by being an atom
; the cdr is a list, even with one element
; this means all lists will be processed into atoms and appended to other atoms,etc
