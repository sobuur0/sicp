#lang scheme

;Computing f by means of a recursive process
(define (f n)
  (cond ((< n 3) n)
        (else (+ (f (- n 1))
                 (* 2 (f (- n 2)))
                 (* 3 (f (- n 3)))))))

(f 5)

;Computing f by means of an iterative process
(define (f n)
  (f-iter 0 1 2 n))
  
(define (f-iter a b c count)
  (if (= count 0)
      a
      (f-iter b c (+ c (* 2 b) (* 3 a)) (- count 1))))
      
(f 5)