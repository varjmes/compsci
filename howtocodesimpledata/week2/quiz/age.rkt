#!/usr/binx/racket
#lang htdp/bsl

;; Age is Natural
;; interp. the age of a person in years
(define A0 18)
(define A1 25)

#;
(define (fn-for-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural

; --------
; Question One:
; Consider the above data definition for the age of a person.
; Design a function called teenager? that determines whether a person of a particular age is a
; teenager (i.e., between the ages of 13 and 19)

; Signature, purpose, stub;
  ; Natural -> Boolean
  ; Takes an Age and returns true/false if the person is a teenger (aged 13-19).
  ; (define (teenager? age) false)
; Examples (wrapped in check-expect)
  ; (check-expect (teenager? 1) false)
  ; (check-expect (teenager? 52) false)
  ; (check-expect (teenager? 15) true)
; Inventory - template & constants
  ; (define (teenager? age)
  ;   (... age))
; Code body
; Test and debug
(check-expect (teenager? 1) false)
(check-expect (teenager? 52) false)
(check-expect (teenager? 15) true)

(define (teenager? age)
  (and (>= age 13) (<= age 19)))

; --------
; Question Two:
; Design a data definition called MonthAge to represent a person's age in months.

;; MonthAge is Natural
;; interp. the age of a person in months
(define M1 336)
(define M2 504)

#;
(define (fn-for-month-age a)
  (... a))

;; Template rules used:
;; - atomic non-distinct: Natural

; --------
; Question Three:
; Design a function called months-old that takes a person's age in years and yields that person's age
; in months.

; Signature, purpose, stub;
  ; Age -> MonthAge
  ; Takes an Age and returns that age in months.
  ; (define (month-age age) 0)
; Examples (wrapped in check-expect)
  ; (check-expect (month-age 1) 12)
  ; (check-expect (month-age 28) 336)
  ; (check-expect (month-age 42) 504)
; Inventory - template & constants
  ; (define (month-age age)
  ;   (... age))
; Code body
; Test and debug
(check-expect (month-age 1) 12)
(check-expect (month-age 28) 336)
(check-expect (month-age 42) 504)

(define (month-age age)
  (* age 12))

; --------
; Question Four:
; Consider a video game where you need to represent the health of your character. The only thing that
; matters about their health is:
;   - if they are dead (which is shockingly poor health)
;   - if they are alive then they can have 0 or more extra lives

; Design a data definition called Health to represent the health of your character.

;; Health is one of:
;;  - false
;;  - Number
;; interp. false means the person is dead, number is the amount of extra lives the person has.

(define H1 false)
(define H2 0)
(define H3 2) 

#;
(define (fn-for-health health)
  (cond [(false? health) (...)]
        [else (... health)]))
;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: false
;;  - atomic non-distinct: Number

; --------

; Design a function called increase-health that allows you to increase the lives of a character. The
; function should only increase the lives of the character if the character is not dead, otherwise the
; character remains dead.

; Signature, purpose, stub;
  ; Health -> Health
  ; Takes a persons health and increases the amount of extra lives they have if they are alive.
  ; (define (increase-health health) false)
; Examples (wrapped in check-expect)
  ; (check-expect (increase-health false) false)
  ; (check-expect (increase-health 0) 1)
  ; (check-expect (increase-health 2) 3)
; Inventory - template & constants
  ; (define (increase-health health)
  ;   (... health))
; Code body
; Test and debug
(check-expect (increase-health false) false)
(check-expect (increase-health 0) 1)
(check-expect (increase-health 2) 3)

(define (increase-health health)
  (if (number? health) (+ health 1) false))
