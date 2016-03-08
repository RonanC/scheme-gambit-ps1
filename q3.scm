; q3 - appearances

(define (appearances item items) 
  (if (null? items)
    0
    (if (= (car items) item)
      (+ 1 (appearances item (cdr items)))
      (appearances item (cdr items))
    )
  )
)

(define stuff (list 1 2 3 4 2 3 1 2 2))
(define myNum 2)
(print (appearances myNum stuff) "\n")
