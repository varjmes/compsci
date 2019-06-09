#!/usr/binx/racket
#lang htdp/bsl

; You are designing a program to track a rocket's journey as it descends 100 kilometers to Earth. You
; are only interested in the descent from 100 kilometers to touchdown. Once the rocket has landed it
; is done.

; Design a data definition to represent the rocket's remaining descent. Call it RocketDescent.

;; RocketDescent is Natural[0, 100)
;; interp. the number of kilometres left of the descent.
(define R1 100) ; start
(define R2 50)  ; middle
(define R3 0)   ; end
 
#;
(define (fn-for-descent km)
  (... km))

;; Template rules used:
;;  - atomic non-distinct: Natural[0, 100]

; ---------

; Design a function that will output the rocket's remaining descent distance in a short string that
; can be broadcast on Twitter. When the descent is over, the message should be
; "The rocket has landed!". Call your function rocket-descent-to-msg.

;; Functions:
; Signature, purpose, stub;
  ; RocketDescent -> String
  ; Takes a RocketDescent and returns a string indicating either the kilometres left or whether the
  ; journey has been competed.
  ; (define (rocket-descent-to-msg rocket-descent) "100")
; Examples (wrapped in check-expect)
;   (check-expect (rocket-descent-to-msg 100) "100") 
;   (check-expect (rocket-descent-to-msg 50) "50")
;   (check-expect (rocket-descent-to-msg 0) "The rocket has landed!") 
; Inventory - template & constants
  ; (define (rocket-descent-to-msg rocket-descent)
  ;   (... rocket-descent))
; Code body
(check-expect (rocket-descent-to-msg 100) "100") 
(check-expect (rocket-descent-to-msg 50) "50")
(check-expect (rocket-descent-to-msg 0) "The rocket has landed!") 
(define (rocket-descent-to-msg rocket-descent)
  (if (= 0 rocket-descent) "The rocket has landed!" (number->string rocket-descent)))
; Test and debug
