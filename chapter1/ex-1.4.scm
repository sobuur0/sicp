#lang scheme

(define (a-plus-abs-b a b)
((if (> b 0) + -) a b))

(a-plus-abs-b 3 -92)

;Description of the procedure: In the above procedure, the operator allows for the combination of the operands to return thesame value
; either if b is a negative number or a positive number. Regarding the model of evaluation, this means it follows applicative order of evaluation
; whereby the operand is evaluated and then the interpreter applies the corresponding procedure of the operator to the already evaluated value of the operand.
; In this case for example, the interpreter evaluates the operands and the values returned are (3 -92) since b is not greater than 0, the procedure of the minus operator
; is returned and then we have (- 3 -92) which still returns the addition of both numbers.