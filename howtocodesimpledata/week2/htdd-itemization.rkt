#!/usr/binx/racket
#lang htdp/bsl

; Consider designing the system for controlling a New Year's Eve display. Design a data definition to
; represent the current state of the countdown, which falls into one of three categories: 
; - not yet started
; - from 10 to 1 seconds before midnight
; - complete (Happy New Year!)

; DATA DEFINITION
; 1. A possible structure definition
; 2. A type comment that defines a new type and describes how to form data
; 3. An interpretation that describes the correspondence between information and data
; 4. One or more examples of the data
; 5. A template for a 1 argument function operating on data of this type.

;; Countdown is one of:
;;  - false
;;  - Natural[1, 10]
;;  - "complete"
;; interp. false means countdown hasn't started, "complete" is countdown is complete,
;; natural is second in a ten second countdown

(define C1 false)
(define C2 3)
(define C3 10)
(define C4 "complete")

#;
(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(number? c) (... c)]
        [else (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: false
;;  - atomic distinct: true
;;  - atomic non-distinct: Number