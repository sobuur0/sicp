#lang scheme

(define a 10)
(define x 13)
(+ a x)

(define (square x) (* x x))
(define (sum-of-square x y) (+ (square x) (square y)))
(define (f a) (sum-of-square (* a 2) (- a 4)))
(f 4)