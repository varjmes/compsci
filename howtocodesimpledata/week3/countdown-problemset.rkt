#!/usr/binx/racket
#lang htdp/bsl

(require 2htdp/image)
(require 2htdp/universe)

; 
; PROBLEM:
; 
; Design an animation of a simple countdown. 
; 
; Your program should display a simple countdown, that starts at ten, and
; decreases by one each clock tick until it reaches zero, and stays there.
; 
; To make your countdown progress at a reasonable speed, you can use the 
; rate option to on-tick. If you say, for example, 
; (on-tick advance-countdown 1) then big-bang will wait 1 second between 
; calls to advance-countdown.
; 
; Remember to follow the HtDW recipe! Be sure to do a proper domain 
; analysis before starting to work on the code file.
; 
; Once you are finished the simple version of the program, you can improve
; it by reseting the countdown to ten when you press the spacebar.


;; My world program  (make this more specific)

;; =================
;; Constants:

(define WIDTH 600)
(define HEIGHT 400)
(define MTS (empty-scene WIDTH HEIGHT "pink"))
(define RATE 1)
(define START 10)
(define FINISH 0)

;; =================
;; Data definitions:

;; Countdown is Integer [FINISH, START]
;; interp. the number of seconds remaining in a countdown
(define C1 10) ; start
(define C2 5)  ; middle
(define C3 0)  ; end

;(define (fn-for-countdown start finish)
;  (...start finish))

;; Template rules used:
;;   - atomic non-distinct: Integer[FINISH, START]

;; =================
;; Functions:

;; Countdown -> Countdown
;; start the world with (main 10)
;; 
(define (main countdown)
  (big-bang countdown                ; Countdown
            (on-tick   count-down RATE)   ; Countdown -> Countdown
            (to-draw   render)       ; Countdown -> Image
            (on-key    handle-key))) ; Countdown KeyEvent -> Countdown

;; Countdown -> Countdown
;; produce the next countdown, by decreasing it by one as long as it is within the bounds of FINISH
; (define (count-down countdown) 0) ; stub
(check-expect (count-down 10) (- 10 RATE))
(check-expect (count-down 0) 0)
(check-expect (count-down -2) 0)
(define (count-down countdown)
  (if (> countdown FINISH) (- countdown RATE) 0))

;; Countdown -> Image
;; render the countdown image at appropriate place on MTS
(check-expect (render 10) (overlay (text "10" 100 "black")
                                   MTS))
(define (render countdown) (overlay (text (number->string countdown) 100 "black")
                                    MTS))

;; Countdown KeyEvent -> Countdown
;; reset Countdown to 0 when space key is presed
;; (define (handle-key countdown key) 0) ; stub
(check-expect (handle-key 5 " ") 10)
(check-expect (handle-key 0 " ") 10)
(check-expect (handle-key 5 "\r") 5)
(define (handle-key countdown key)
  (if (key=? key " ") START countdown))


