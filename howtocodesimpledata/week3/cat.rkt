
;; cat-starter.rkt

; 
; PROBLEM:
; 
; Use the How to Design Worlds recipe to design an interactive
; program in which a cat starts at the left edge of the display 
; and then walks across the screen to the right. When the cat
; reaches the right edge it should just keep going right off 
; the screen.
; 
; Once your design is complete revise it to add a new feature,
; which is that pressing the space key should cause the cat to
; go back to the left edge of the screen. When you do this, go
; all the way back to your domain analysis and incorporate the
; new feature. 


(require 2htdp/image)
(require 2htdp/universe)

;; A cat that walks from left to right across the screen.

;; =================
;; Constants:

(define WIDTH 600)
(define HEIGHT 400)
(define CTR-Y (/ HEIGHT 2))
(define MTS (empty-scene WIDTH HEIGHT "white"))
(define SPEED 5)
; (define CAT-IMG image-goes-here)

;; =================
;; Data definitions:

;; Cat is Number
;; interp. x positon of the cat in screen co-ordinates
(define C1 0)           ; left edge
(define C2 (/ WIDTH 2)) ; middle
(define C3 WIDTH)       ; right edge

;(define (fn-for-cat c)
;  (...c))

;; Template rules used:
;;   - atomic non-distinct: Number

;; =================
;; Functions:

;; Cat -> Cat
;; start the world with (main 0)
;; 
(define (main cat)
  (big-bang cat                    ; Cat
            (on-tick advance-cat)  ; Cat -> Cat
            (to-draw render)       ; Cat -> Image
            (on-key  handle-key)
            (on-mouse handle-mouse))) ; Cat Key -> Cat

;; Cat -> Cat
;; produce the next cat, by advancing it one pixel to the right
; (define (advance-cat cat) 0) ; stub
(check-expect (advance-cat 3) (+ 3 SPEED))
(define (advance-cat cat)
  (+ cat SPEED))

;; Cat -> Image
;; render the cat image at appropriate place on MTS
(check-expect (render 4) (place-image CAT-IMG 4 CTR-Y MTS))
(define (render cat) (place-image CAT-IMG cat CTR-Y MTS))

;; Cat KeyEvent -> Cat
;; reset Cat to left edge when space key is presed
;; (define (handle-key cat key) 0) ; stub
(check-expect (handle-key 10 " ") 0)
(check-expect (handle-key 0 " ") 0)
(check-expect (handle-key 10 "\r") 10)
(define (handle-key cat key)
  (if (key=? key " ") 0 cat))

;; Cat MouseEvent -> Cat
;; advance the next cat to the x co-ord of a mouse click
; (define (handle-mouse cat x y me) 0) ; stub
(check-expect (handle-mouse 100 10 100 "button-down") 10)
(check-expect (handle-mouse 100 10 200 "drag") 100)
(check-expect (handle-mouse 100 100 300 "button-down") 100)

(define (handle-mouse cat x y me)
  (cond [(mouse=? me "button-down") x]
        [else cat]))