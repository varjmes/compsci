#!/usr/binx/racket
#lang htdp/bsl

; Design a function that consumes an image, and appears to put a box around it.
; Note that you can do this by creating an "outline" rectangle that is bigger than the image, and then
; using overlay to put it on top of the image. 
; (boxify (ellipse 60 30 "solid" "red"))

; Signature, purpose, stub;
  ; Image -> Image
  ; Takes an image and returns it with an outline around it
  ; (define (boxify img) 0)
; Examples (wrapped in check-expect)
;   (check-expect (boxify (circle 10 "solid" "red")) 
;                 (overlay (rectangle 22 22 "outline" "black")
;                          (circle 10 "solid" "red")))
;   (check-expect (boxify (star 40 "solid" "gray")) 
;                 (overlay (rectangle 67 64 "outline" "black")
;                          (star 40 "solid" "gray")))
; Inventory - template & constants
  ; (define (boxify? img)
  ;   (... img))
; Code body
; Test and debug

(require 2htdp/image)

(check-expect (boxify (circle 10 "solid" "red")) 
              (overlay (rectangle 22 22 "outline" "black")
                        (circle 10 "solid" "red")))
(check-expect (boxify (star 40 "solid" "gray")) 
              (overlay (rectangle 67 64 "outline" "black")
                        (star 40 "solid" "gray")))

(define (boxify img)
  (overlay (rectangle (+ (image-width img) 2)
                      (+ (image-height img) 2)
                      "outline"
                      "black")
           img))
