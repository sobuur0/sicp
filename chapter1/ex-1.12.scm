#lang scheme
;below is how the pascal triangle output would look like
;((1 1) (1 2 1) (1 3 3 1) (1 4 6 4 1) (1 5 10 10 5 1))
;it returns the pascal triangle in form of a list

(define (pascal-triangle row col)
  (cond ((< col 0) 0)  ; Return 0 for indices less than 0
        ((= col 0) 1)  ; Return 1 for the first element in each row
        ((= col row) 1) ; Return 1 for the last element in each row
        (else (+ (pascal-triangle (- row 1) (- col 1))
                 (pascal-triangle (- row 1) col)))))

(define (generate-pascals-triangle n)
  (if (< n 1)
      '()
      (append (generate-pascals-triangle (- n 1))
              (list (build-row n n)))))

(define (build-row row col)
  (if (< col 0)
      '()
      (append (build-row row (- col 1))
              (list (pascal-triangle row col)))))

;; Example usage:
(display (generate-pascals-triangle 5))