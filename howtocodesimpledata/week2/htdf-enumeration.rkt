#!/usr/binx/racket
#lang htdp/bsl

; Using the LetterGrade data definition below design a function that consumes a letter grade and
; produces the next highest letter grade. Call your function bump-up.

;; Data definitions:

;; LetterGrade is one of: 
;;  - "A"
;;  - "B"
;;  - "C"
;; interp. the letter grade in a course
;; <examples are redundant for enumerations>
#;
(define (fn-for-letter-grade lg)
  (cond [(string=? lg "A") (...)]
        [(string=? lg "B") (...)]
        [(string=? lg "C") (...)]))

;; Template rules used:
;;  one-of: 3 cases
;;  atomic distinct: "A"
;;  atomic distinct: "B"
;;  atomic distinct: "C"

;; Functions:
; Signature, purpose, stub;
  ; LetterGrade -> LetterGrade
  ; Takes a LetterGrade and returns the next highest LetterGrade.
  ; (define (bump-up letter-grade) "A")
; Examples (wrapped in check-expect)
;   (check-expect (bump-up "A") "A") 
;   (check-expect (bump-up "B") "A")
;   (check-expect (bump-up "C") "B") 
; Inventory - template & constants
  ; (define (bump-up letter-grade)
  ;   (cond [(string=? letter-grade "A") (...)]
  ;         [(string=? letter-grade "B") (...)]
  ;         [(string=? letter-grade "C") (...)]))
; Code body
(check-expect (bump-up "A") "A") 
(check-expect (bump-up "B") "A")
(check-expect (bump-up "C") "B") 
(define (bump-up letter-grade)
  (cond [(string=? letter-grade "C") "B"]
        [else "A"]))
; Test and debug