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
; Design a function that consumes a list of numbers and doubles every number 
; in the list. Call it double-all.

; ListOfNumber -> ListOfNumber
; produce a list containing the values of the consumed list of numbers, where each value is doubled
; (define (double-all lon) empty) ; stub
(check-expect (double-all empty) empty)
(check-expect (double-all (cons 12 empty)) (cons 24 empty))
(check-expect (double-all (cons 12 (cons 42 empty))) (cons 24 (cons 84 empty)))

(define (double-all lon)
  (cond [(empty? lon) lon]
        [else
         (cons (* 2 (first lon))
               (double-all (rest lon)))]))
