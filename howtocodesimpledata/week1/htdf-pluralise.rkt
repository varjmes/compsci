#!/usr/binx/racket
#lang htdp/bsl

; Design a function that pluralises a given word.
; For simplicity you may assume that just adding 's' is enough to pluralise a word.

; Signature, purpose, stub
;   Signature: String -> String
;   Purpose: Returns a word with 's' at the end, pluralising it.
;   Stub: (define (pluralise s ) s)
; Examples (wrapped in check-expect)
;   (check-expect (pluralise "egg") "eggs")
;   (check-expect (pluralise "butt") "butts")
; Inventory - template & constants
;   (define (pluralise s)
;     (...s))
; Code body
; (define (pluralise s)
;         (string-append s "s"))
; Test and debug

(define (pluralise s)
  (string-append s "s"))
(check-expect (pluralise "egg") "eggs")
(check-expect (pluralise "butt") "butts")
