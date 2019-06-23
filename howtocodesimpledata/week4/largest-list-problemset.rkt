#!/usr/binx/racket
#lang htdp/bsl

;; =================
;; Data definitions:

;; ListOfNumber is one of:
;;  - empty
;;  - (cons Number ListOfNumber)
;; interp. a list of numbers
(define LON1 empty)
(define LON2 (cons 60 (cons 42 empty)))
#;
(define (fn-for-lon lon)
  (cond [(empty? lon) (...)]
        [else
         (... (first lon)
              (fn-for-lon (rest lon)))]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: empty
;;  - compound: (cons Number ListOfNumber)
;;  - self-reference: (rest lon) is ListOfNumber

;; =================
;; Functions:

; PROBLEM:
; 
; Design a function that consumes a list of numbers and produces the largest number 
; in the list. You may assume that all numbers in the list are greater than 0. If
; the list is empty, produce 0.

; ListOfNumber -> Number
; given a list of numbers, return the largest number in the list.
; (define (largest lon) 0) ; stub

(check-expect (largest empty) 0)
(check-expect (largest (cons 12 empty)) 12)
(check-expect (largest (cons 12 (cons 42 empty))) 42)

(define (largest lon)
  (cond [(empty? lon) 0]
        [else
         (max (first lon)
              (largest (rest lon)))]))
