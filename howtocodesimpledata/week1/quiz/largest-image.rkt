#!/usr/binx/racket
#lang htdp/bsl

; Design a function that consumes two images and produces true if the first is larger than the second.

(require 2htdp/image)

; Signature, purpose, stub
;   Signature: Image Image -> Boolean
;   Purpose: Given two images, return true if image one is larger than two, and false otherwise
;   Stub: (define (first-image-largest? img-one img-two ) #f)
; Examples (wrapped in check-expect)
;   (check-expect (first-image-largest? (rectangle 20 30 "solid" "black")
;                                       (rectangle 40 10 "solid" "black"))
;                 true)
;   (check-expect (first-image-largest? (rectangle 10 10 "solid" "black")
;                                       (rectangle 40 10 "solid" "black"))
;                 false)
;   (check-expect (first-image-largest? (rectangle 10 10 "solid" "black")
;                                       (rectangle 10 10 "solid" "black"))
;                 false)
; Inventory - template & constants
;   (define (first-image-largest? img-one img-two)
;     (... img-one img-two))
; Code body
; (define (first-image-largest? img-one img-two)
;   (>
;     (* (image-width img-one) (image-height img-one))
;     (* (image-width img-two) (image-height img-two))))
; Test and debug

(check-expect (first-image-largest? (rectangle 20 30 "solid" "black")
                                    (rectangle 40 10 "solid" "black"))
              true)
(check-expect (first-image-largest? (rectangle 10 10 "solid" "black")
                                    (rectangle 40 10 "solid" "black"))
              false)
(check-expect (first-image-largest? (rectangle 10 10 "solid" "black")
                                    (rectangle 10 10 "solid" "black"))
              false)

(define (first-image-largest? img-one img-two)
  (>
    (* (image-width img-one) (image-height img-one))
    (* (image-width img-two) (image-height img-two))))
