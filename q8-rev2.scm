; q8 - revision 2 - reverse list

(define (reversal lst)
  (if (null? lst)
    '()
    (append (reversal (cdr lst)) (list (car lst)))
  )
)

(display (reversal '(a b c d)))
(newline)

; (append (reversal (cdr lst)) (list (car lst)))
; (append (reversal (b c d)) (list a))
; (append (reversal (c d)) (list b))
; (append (reversal (d)) (list c))
; (append (reversal ()) (list d))
; (append '() (d))
; (append (d) (c))
; (append (d c) (b))
; (append (d c b) (a))
; (d c b a)
