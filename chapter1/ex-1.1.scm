#lang scheme
;10
10
;(+ 5 3 4)
12
;(- 9 1)
8
;(/ 6 2)
3
;(+ (* 2 4) (- 4 6))
6
#|Next question|#
(define a 3)
(define b (+ a 1))
(+ a b (* a b))
19 ;printed by the interpreter
;(= a b)
false ;printed as #f
#|Next question|#
(if (and (> b a) (< b (* a b)))
b
a)
4 ;printed by the interpreter
#|Next question|#
(cond ((= a 4) 6)
((= b 4) (+ 6 7 a))
(else 25))
16 ;printed by the interpreter since b=4
#|Next question|#
(+ 2 (if (> b a) b a))
6 ;printed by the interpreter since b>a
#|Next question|#
(* (cond ((> a b) a)
((< a b) b)
(else -1))
(+ a 1))
16 ;printed by the interpreter since a<b