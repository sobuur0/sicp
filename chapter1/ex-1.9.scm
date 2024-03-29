#lang scheme

(define (inc x)
  (+ x 1))

(define (dec x)
  (- x 1))

;1
(define (+ a b)
(if (= a 0) b (inc (+ (dec a) b))))

;2
(define (+ a b)
(if (= a 0) b (+ (dec a) (inc b))))

; Using the substitution model, illustrate the process generated by each procedure in evaluating (+ 4 5). Are these processes iterative or recursive?
(+ 4 5)


;Procedure 1:
;-Process generated:
(+ 4 5)
(inc (+ (dec 4) 5))
(inc (inc (+ (dec 3) 5)))
(inc (inc (inc (+ (dec 2) 5))))
(inc (inc (inc (inc (+ (dec 1) 5)))))
(inc (inc (inc (inc (+ 0 5)))))
(inc (inc (inc (inc 5))))
(inc (inc (inc 6)))
(inc (inc 7))
(inc 8)
(9)
;-Explanation: The first procedure is a "recursive process" because since the first argument in our procedure doesnt equal 0, we would have to first undergo a chain of delayed operations
;which in the process increases the number of operation which the interpreter would keep track of so as to be evaluated later on. The expansion goes on until we have our first argument
;as 0, it is after then begin the evaluation of our deferred operations which in the process begins to make our already expanded process contract. 


;Procedure 2:
;-Process generated:
(+ 4 5)
(+ (dec 4) (inc 5))
(+ (dec 3) (inc 6))
(+ (dec 2) (inc 7))
(+ (dec 1) (inc 8))
(+ 0 9)
(9)

;-Explanation: The second procedure on the other hand is an iterative process. because during the evaluation of our procedure, we can see that throughout the expansion, our process state
;has the same fixed number of state variables which the interpreter keeps track of till we get our answer which equates to "9". it also has a fixed rule which says that so far our first
;argument doesnt evaluates to 0, we continue the decrement of whatever value we have and whenever we have our first argument as 0, we return the second value as our answer to the
;procedure(This last statement specifies the condition under which our procedure should terminate).