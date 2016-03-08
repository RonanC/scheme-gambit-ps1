; q10 - revision 2
; flatten using pair function
; http://stackoverflow.com/a/8387641

(define (flatten lst)
  (cond 
    ((null? lst) '())
    ((pair? lst) (append (flatten (car lst)) (flatten (cdr lst))))
    (else (list lst))
  )
)

(display (flatten '(((a b) c ((d e) f)))))
(newline)

; if null then empty list (last call)
; if pair then append the first item to the rest of the items (call function on both
;   a pair is a list with one or more items
; else if there are no items on the list or we have an atom then tturn is into a list item
; Eventually we will append each atom onto an empty list
