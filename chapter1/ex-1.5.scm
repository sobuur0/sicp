#lang scheme

(define (p) (p))
(define (test x y)
(if (= x 0) 0 y))

(test 0 (p))

;In an applicative order: 
;Ben will observe that since the interpreter evaluates the arguments first and in this case 
;they are 0 and (p), the value of the evaluation of 0 returns 0 which is straightforward, 
;whereas in the evaluation of (p) Ben will find out that the procedure (p) doesn't have any 
;formal parameter and the body of the procedure just returns the procedure itself.
; So when the interpreter decides to evaluate (p), we get an endless loop which doesnt 
;terminate because it just recusively returns the procedure (p) and since we have an argument 
;that doesnt terminate, our test procedure never terminates. 
;In an applicative order, we have a test procedure which never terminates.

;In a normal order: Since in a normal order of evaluation, the parameters are replaced with 
;the body of the test procedure and then we'll have - (if (= 0 0) 0 (p)) and in a normal order
;of evaluation, the interpreter only evaluates the arguments of the procedure when they are 
;needed. That is in our test procedure, only the argument that are needed in the evaluation 
;will be evaluated and when we look at the procedure, the conditional if checks to see whether 
;our argument x=0, in this phase only the parameter that is replaced by x which is 0 will be 
;evaluated. if the first conditional predicate returns true, there will be no need to evaluate 
;the corresponding parameter. In this case, Ben will observe that the test procedure returns 0 
;since the condition (= 0 0) returns true and there is no need to return the procedure (p).

; In conclusion, our test procedure will return a value only in a normal order evaluation, 
;and will never terminate in an applicative order.
