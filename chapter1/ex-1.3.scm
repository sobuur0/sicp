#lang scheme

;a procedure that squares two numbers
(define (square x) (* x x))

;a procedure that sums the square of two inputs
(define (sum-of-square x y) (+ (square x) (square y)))

;a procedure that returns the greater 2 numbers
(define (sum-of-greater-two x y z)
  (cond
   ((> x z) (> y z)
   (sum-of-square x y))
   ((> x y) (> z y)
   (sum-of-square x z))
    ((> y x) (> z x)
   (sum-of-square y z))
        (else "An unexpected error occured")))

;test
(sum-of-greater-two 2 6 1)
