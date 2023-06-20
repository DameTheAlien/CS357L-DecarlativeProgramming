;; Fill in your name and net ID below
;;  replacing Last with your last name(s)
;;  replacing First with your first name(s)
;;  and replacing netID@unm.edu with your unm email address
(define name '("Franco" "Damian"))
(define netID "dfranco24@unm.edu")

;; If you accept the academic honesty pledge, replace the "" below with
;;      "I accept and agree to the academic honesty pledge"
(define academic-honesty-pledge
    "I accept and agree to the academic honesty pledge")


;; Fill out the following defintions in wichever order you choose
;;  your final submission should evaluate without errors.
;; Each defintion comes pre-filled as '(), delete the '() prior to
;;  defining your function. Do not replace it with another define:
;;  i.e. The following defintion is WRONG:
;;      (define func
;;          (define func
;;              (lambda ...
;;
;; Do NOT submit your answer as a quoted list, i.e. the following 
;;  definition is also WRONG, as the quote was not removed:
;;      (define func
;;          '(lambda ...


;; Using the instructions provided on LEARN, give a defintion for unbounce
(define unbounce
    (lambda (ls)
      (cond
        ((null? (cdr ls)) ls)
        ((equal? (car ls) (car (cdr ls))) (unbounce (cdr ls)))
         (else (cons (car ls) (unbounce (cdr ls))))
        )
     )
)


;; Using the instructions provided on LEARN, give a defintion for deep-member?
(define deep-member?
    (lambda (item ls)
      (cond
        ((null? ls) #f)
        ((list? (car ls)) (deep-member? item (car ls)))
        ((equal? item (car ls)) #t)
        (else (deep-member? item (cdr ls)))
      )
    )
)


;; Using the instructions provided on LEARN, give a defintion for vowels
(define vowels
    (lambda (ls)
      (letrec
          ((loop
            (lambda (ls acc)
              (cond
                ((null? ls) acc)
                ((equal? (car ls) 'a) (loop (cdr ls) (+ acc 1)))
                ((equal? (car ls) 'e) (loop (cdr ls) (+ acc 1)))
                ((equal? (car ls) 'i) (loop (cdr ls) (+ acc 1)))
                ((equal? (car ls) 'o) (loop (cdr ls) (+ acc 1)))
                ((equal? (car ls) 'u) (loop (cdr ls) (+ acc 1)))
                (else (loop (cdr ls) acc))
                )
              )
            ))
        (loop ls 0)
        )
      )
)

  
;; Fill out the following fields, giving answers as expressions
;; Each defintion comes pre-filled as '(), delete the '() prior to
;;  filling out your response.
;; Assuming the answer was the value '(5 6), the following definitions are WRONG:
;;  (define value ''(5 6)) as the value is quoted
;;  (define value '('(5 6))) as the value is a quoted list
;;  (define value ('(5 6))) as the value is being evaluated
;;  (define value '((5 6))) as the value is incorrect
;; Assuming the answer was the value '(5 6), the following definition is CORRECT:
;; (define value '(5 6))
;; Assuming the answer was the value 3, the following definition is CORRECT:
;; (define value 3)


;; Using the instructions provided on LEARN, give the value of the expression
(define value-of-expression
    4
)

;; Using the instructions provided on LEARN, give a defintion for the expression using let instead of let*
(define expression-using-let
  (let ((x 2))
    (let ((y x))
      (let ((x 1))
        (let ((x y))
          (+ x x)
         )
       )
     )
   )
)


;; Using the instructions provided on LEARN, give a defintion for the expression using lambda instead of let*
(define expression-using-lambda
  ((lambda (x)
     ((lambda (y)
        ((lambda (x)
           ((lambda (x)
              (+ x x))
            y)
           )
         1)
        )
      x)
     )
   2)
)