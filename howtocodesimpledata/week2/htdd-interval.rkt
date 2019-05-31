#!/usr/binx/racket
#lang htdp/bsl

; Imagine that you are designing a program to manage ticket sales for a theatre.
; Design a data definition to represent a seat number in a row, where each row has 32 seats.

; DATA DEFINITION
; 1. A possible structure definition
; 2. A type comment that defines a new type and describes how to form data
; 3. An interpretation that describes the correspondence between information and data
; 4. One or more examples of the data
; 5. A template for a 1 argument function operating on data of this type.

; INTERVAL: numbers within a certain range
; SeatNumber is Natural[1, 32]
; interp. seat numbers in a row, where 1 and 32 are aisle seats
(define SN1 1)
(define SN2 12)
(define SN2 31)
#;
(define (fn-for-seat-number seat)
  (... seat))

; Template rules used:
;  - atomic non-distinct: Natural[1, 32]