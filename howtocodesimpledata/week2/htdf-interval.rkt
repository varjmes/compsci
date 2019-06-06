#!/usr/binx/racket
#lang htdp/bsl

; Using the SeatNum data definition below design a function that produces true if the given seat
; number is on the aisle.

;; Data definitions:

;; SeatNum is Natural[1, 32]
;; Interp. Seat numbers in a row, 1 and 32 are aisle seats
(define SN1  1) ;aisle
(define SN2 12) ;middle
(define SN3 32) ;aisle
#;
(define (fn-for-seat-num sn)
  (... sn)) 

;; Template rules used:
;;  atomic non-distinct: Natural[1, 32]


;; Functions:
; Signature, purpose, stub;
  ; SeatNum -> Boolean
  ; Takes a SeatNum and returns true if the number is an aisle seat.
  ; Seats 1 and 32 are aisle seata.
  ; (define (aisle? seat-number) false)
; Examples (wrapped in check-expect)
;   (check-expect (aisle? 1) true) 
;   (check-expect (aisle? 32) true)
;   (check-expect (aisle? 4) false) 
; Inventory - template & constants
  ; (define (aisle? seat-number)
  ;   (... seat-number))
; Code body
(check-expect (aisle? 1) true)
(check-expect (aisle? 32) true)
(check-expect (aisle? 12) false)
(define (aisle? seat-number)
  (or (= 1 seat-number)
      (= 32 seat-number)))
; Test and debug