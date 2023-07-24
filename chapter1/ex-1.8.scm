#lang scheme

;Using Newton's method to find cube root

(define (square x)
  (* x x))

(define (improve guess x)
  (/ (+(/ x (square guess))
       (* 2 guess))
     3))

(define (good-enough? guess next-guess)
  (< (abs (- next-guess guess))
     (* 1.0e-20 guess)))

(define (cube-root-iter guess x)
  (if (good-enough? guess (improve guess x))
      guess
      (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1 x))

;test
(cube-root 2.0)
(cube-root 64.0)