#!/usr/binx/racket
#lang htdp/bsl

; How to define a function "recipe"

; Design a function that consumes a number and produces twice that number.
; Call your function 'double'. Follow the HtDF recipe and show the stub and template.

; Signature, purpose, stub
;   Signature: Number -> Number
;   Purpose: Produce two times the given numver
;   Stub: (define (double n ) 0)
; Examples (wrapped in check-expect)
;   (check-expect (double 3) 6)
;   (check-expect (double 4.2) (* 2 4.2))
; Inventory - template & constants
;   (define (double n)
;     (...n))
; Code body
;   (define (double n)
;   (* 2 n))
; Test and debug

(define (double n)
  (* 2 n))

(check-expect (double 3) 6)
(check-expect (double 4.2) 8.4)
