#!/usr/binx/racket
#lang htdp/bsl

(require 2htdp/image)

; PROBLEM:
; Write an expression that uses triangle, overlay, and rotate to produce an image similar to this:                                 .

(overlay (triangle 50 "solid" "green")
         (rotate 180
                 (triangle 50 "solid" "yellow")))
