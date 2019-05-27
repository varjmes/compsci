#!/usr/binx/racket
#lang htdp/bsl

; DESIGN a function that consumes a string and determines whether its length is less than 5.
; Follow the HtDF recipe and leave behind commented out versions of the stub and template.

; Signature, purpose, stub;
  ; String -> Boolean
  ; Takes a string and returns true/false if the string length is less than five.
  ; (define (stringlessthanfive? string) false)
; Examples (wrapped in check-expect)
  ; (check-expect (string-less-than-five? "eggs") true)
  ; (check-expect (string-less-than-five? "james") false)
  ; (check-expect (string-less-than-five? "quantity") false)
; Inventory - template & constants
  ; (define (string-less-than-five? string)
  ;   (... string))
; Code body
; Test and debug

(check-expect (string-less-than-five? "") true)
(check-expect (string-less-than-five? "eggs") true)
(check-expect (string-less-than-five? "james") false)
(check-expect (string-less-than-five? "quantity") false)
(define (string-less-than-five? string)
  (< (string-length string) 5))
