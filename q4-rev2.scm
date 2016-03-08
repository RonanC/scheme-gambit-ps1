; q4 - inter - revision 2
; last call will be an empty list
; each recursion will either skip an item
; or add that item (cons) to the list (starting with empty list)

(define (inter lst1 lst2)
  (cond
    ((null? lst1) (quote ()))
    ((memq (car lst1) lst2)
     (cons (car lst1)
      (inter (cdr lst1) lst2)))
    (else (inter (cdr lst1) lst2))))

(display (inter '(a b c d) '(c d e f)))
(newline)
