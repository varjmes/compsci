#!/usr/binx/racket
#lang htdp/bsl

(require 2htdp/image)
(require 2htdp/universe)

; PROBLEM:
; 
; Design an animation of a traffic light. 
; 
; Your program should show a traffic light that is red, then green, 
; then yellow, then red etc. For this program, your changing world 
; state data definition should be an enumeration.
; 
; To make your lights change at a reasonable speed, you can use the 
; rate option to on-tick. If you say, for example, (on-tick next-color 1) 
; then big-bang will wait 1 second between calls to next-color.
; 
; Remember to follow the HtDW recipe! Be sure to do a proper domain 
; analysis before starting to work on the code file.
; 
; Note: If you want to design a slightly simpler version of the program,
; you can modify it to display a single circle that changes color, rather
; than three stacked circles. 
; 

;; A traffic light animation

;; =================
;; Constants:

(define RATE 1)
(define WIDTH 75)
(define HEIGHT 150)
(define RECTANGLE (rectangle WIDTH HEIGHT "solid" "black"))
(define RED (above (circle 25 "solid" "red")
                   (circle 25 "outline" "yellow")
                   (circle 25 "outline" "green")))
(define YELLOW (above (circle 25 "outline" "red")
                      (circle 25 "solid" "yellow")
                      (circle 25 "outline" "green")))
(define GREEN (above (circle 25 "outline" "red")
                     (circle 25 "outline" "yellow")
                     (circle 25 "solid" "green")))

;; =================
;; Data definitions:

; Light is one of:
;  - "red"
;  - "yellow"
;  - "green"
; interp. the active colour of a traffic light
 
#;
(define (fn-for-light light)
  (cond [(string=? "red" light) (...)]
        [(string=? "yellow" light) (...)]
        [(string=? "green" light) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "red"
;;  - atomic distinct: "yellow"
;;  - atomic distinct: "green"

;; =================
;; Functions:

;; Light -> Light
;; start the world with (main "red")
;; 
(define (main light)
  (big-bang light                       ; Light
            (on-tick   next-light RATE) ; Light -> Light
            (to-draw   render)))        ; Light -> Image

;; Light -> Light
;; produce the next light in the traffic light 
; (define (next-light light) "red") ; stub
(check-expect (next-light "red") "green")
(check-expect (next-light "yellow") "red")
(check-expect (next-light "green") "yellow")
(define (next-light light)
  (cond [(string=? "red" light) "green"]
        [(string=? "yellow" light) "red"]
        [(string=? "green" light) "yellow"]))

;; Light -> Image
;; render the traffic light with the right active colour
(check-expect (render "red") (overlay RED
                                      RECTANGLE))
(check-expect (render "yellow") (overlay YELLOW
                                         RECTANGLE))
(check-expect (render "green") (overlay GREEN
                                       RECTANGLE))
(define (render light)
  (cond [(string=? "red" light) (overlay RED
                                         RECTANGLE)]
        [(string=? "yellow" light) (overlay YELLOW
                                            RECTANGLE)]
        [(string=? "green" light) (overlay GREEN
                                           RECTANGLE)]))