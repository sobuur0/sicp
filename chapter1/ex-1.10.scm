#lang scheme

;Ackermann’s function
(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1) (A x (- y 1))))))

(A 1 10) ;1024
(A 2 4) ;65536
(A 3 3) ;65536
(A 1 14)


;Give concise mathematical definitions for the functions computed by the procedures f, g, and h for
;positive integer values of n. For example, (k n) computes 5n^2
(define (f n) (A 0 n))
(define (g n) (A 1 n))
(define (h n) (A 2 n))
(define (k n) (* 5 n n))

;(f n) computes 2n
;(g n) computes 2^n-1*2
;(h n) computes ;omoo this procedure wan murder my ram
;(k n) computes 5n^2
