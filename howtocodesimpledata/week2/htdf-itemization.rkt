#!/usr/binx/racket
#lang htdp/bsl

; You are asked to contribute to the design for a very simple New Year's Eve countdown display. You
; already have the data definition given below. You need to design a function that consumes Countdown
; and produces an image showing the current status of the countdown.

;; Data definitions:

;; Countdown is one of:
;;  - false
;;  - Natural[1, 10]
;;  - "complete"
;; interp.
;;    false           means countdown has not yet started
;;    Natural[1, 10]  means countdown is running and how many seconds left
;;    "complete"      means countdown is over
(define CD1 false)
(define CD2 10)          ;just started running
(define CD3  1)          ;almost over
(define CD4 "complete")
#;
(define (fn-for-countdown c)
  (cond [(false? c) (...)]
        [(and (number? c) (<= 1 c) (<= c 10)) (... c)]
        [else (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: false
;;  - atomic non-distinct: Natural[1, 10]
;;  - atomic distinct: "complete"

;; Functions:
; Signature, purpose, stub;
  ; Countdown -> Image
  ; Takes a Countdown state and returns an image displaying this state.
  ; (define (countdown->image countdown) (square 0 "solid" "white"))
; Examples (wrapped in check-expect)
;  (check-expect (countdown->image false) 
;                (rectangle 300 300 "border" "black")) 
;  (check-expect (countdown->image 10)
;                (overlay (rectangle 300 300 "outline" "black")
;                         (text "10" 18 "black")))
;  (check-expect (countdown->image 1)
;                (overlay (rectangle 300 300 "outline" "black")
;                         (text "1" 18 "black")))
;  (check-expect (countdown->image "complete")
;                (overlay (rectangle 300 300 "outline" "black")
;                         (text "Happy new year!" 18 "black")))
; Inventory - template & constants
  ; (define (countdown->image letter-grade)
  ;   (cond [(false? c) (...)]
  ;         [(number? c) (... c)]
  ;         [else (...)]))
; Code body
(require 2htdp/image)
(check-expect (countdown->image false) 
              (rectangle 300 300 "outline" "black"))
(check-expect (countdown->image 10)
              (overlay (rectangle 300 300 "outline" "black")
                       (text "10" 18 "black")))
(check-expect (countdown->image 1)
              (overlay (rectangle 300 300 "outline" "black")
                       (text "1" 18 "black")))
(check-expect (countdown->image "complete")
              (overlay (rectangle 300 300 "outline" "black")
                       (text "Happy new year!" 18 "black")))

(define (countdown->image countdown)
  (cond [(false? countdown) (rectangle 300 300 "outline" "black")]
        [(number? countdown) (overlay (rectangle 300 300 "outline" "black")
                                      (text (number->string countdown) 18 "black"))]
        [else (overlay (rectangle 300 300 "outline" "black")
                       (text "Happy new year!" 18 "black"))]))
; Test and debug