#!/usr/binx/racket
#lang htdp/bsl

; PROBLEM:
; 
; You've been asked to design a program having to do with all the owls
; in the owlery.
; 
; (A) Design a data definition to represent the weights of all the owls. 
;     For this problem call it ListOfNumber.
; (B) Design a function that consumes the weights of owls and produces
;     the total weight of all the owls.
; (C) Design a function that consumes the weights of owls and produces
;     the total number of owls.

;; Data definitions:

; ListOfWeights is one of:
; - empty
; - (cons Weight ListOfWeights)
; interp. each number is an owl weight in ounces
(define W1 empty)
(define W2 (cons 60 (cons 42 empty)))
#;
(define (fn-for-weights weights)
  (cond [(empty? weights) (...)]
        [else
         (... (first weights)
              (fn-for-weights (rest weights)))]))

; Template rules used:
; - one of: 2 cases
; - atomic distinct: empty
; - compound: (cons Weight ListOfWeights)
; - self reference: (rest weights) is ListOfWeights


;; Functions:

; ListOfWeights -> Number
; produce total weight of owls in consumed list
; (define (sum lon) 0) ; stub
(check-expect (sum empty) 0)
(check-expect (sum (cons 60 empty)) (+ 60 0))
(check-expect (sum (cons 60 (cons 42 empty))) (+ 60 (+ 42 0)))

(define (sum weights)
  (cond [(empty? weights) 0]
        [else
         (+ (first weights)
            (sum (rest weights)))]))


; ListOfWeights -> Natural
; produce total number of weights in consumed list
; (define (count empty) 0) ; stub
(check-expect (count empty) 0)
(check-expect (count (cons 12 empty)) (+ 1 0))
(check-expect (count (cons 12 (cons 42 empty))) (+ 1 (+ 1 0)))

(define (count weights)
  (cond [(empty? weights) 0]
        [else
         (+ 1
            (count (rest weights)))]))
