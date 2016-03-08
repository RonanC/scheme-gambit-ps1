; q4 - inter
; add numbers that intersect two lists

(define (inter lst1 lst2 result) 
  (cond ((or (null? lst1) (null? lst2))
         ;(begin (display result))
         (begin (display "result: ")
                (display result)(display "\n")))
    ;((null? lst1)
     ;(display "list2: ")(display lst2)(display "\n"))
    ;((null? lst2)
     ;(display "list1: ")(display lst1)(display "\n"))
  (else
    ; (print (car lst1))
    ; (print (cons (car lst1) lst2))
    ; (inter (cdr lst1) (cons (car lst1) lst2))
    (if (memv (car lst1) lst2) 
     ; (print (car lst1))
      ;(cons (car lst1) result)
      (begin (cons "one" result)
             (print (car lst1))
        (+ 1 (inter (cdr lst1) lst2 result)))
      (+ 0 inter (cdr lst1) lst2 result)
    )

    ;(inter (cdr lst1) lst2)
  )
  )
)

(define myList1 (list 1 2 3 4 5))
(define myList2 (list 4 5 6 7 8))
(define result (list 1))
;(define charLst1 (list "one" "two" "three" "four" "five"))
;(define charLst2 (list "four" "five" "six" "seven" "eight"))

(inter myList1 myList2 result) 
;(inter charLst1 charLst2) 
