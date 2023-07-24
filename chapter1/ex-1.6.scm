#lang scheme

; Alyssa P. Hacker doesn’t see why if needs to be provided as a special form.
; “Why can’t I just deﬁne it as an ordinary procedure in terms of cond?” she asks.

; Alyssa’s friend Eva Lu Ator claims this can indeed be done, and she deﬁnes a new version of if:

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

; Eva demonstrates the program for Alyssa:

(new-if (= 2 3) 0 5)
5
(new-if (= 1 1) 0 5)
0

; Delighted, Alyssa uses new-if to rewrite the square-root program:

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x) x)))

; What happens when Alyssa attempts to use this to compute square roots? Explain.


; Since the new-if was declared as a function, and is not a special form "if", the body of the procedure are first evaluated.
; evaluating guess returns a value which is the our initial guess.
; evaluating (sqrt-iter (improve guess x) x) on the other hand initates a recursive call to our sqrt-iter function. This process continues in a recursive loop since everytime
; we try to evaluate the new-if function, we get a recursive call that doesnt terminate.