#!/usr/binx/racket
#lang htdp/bsl

; PROBLEM:
; Write an expression that uses star and overlay to produce an image similar to this:

(require 2htdp/image)

(overlay (star 10 "solid" "blue")
         (star 25 "solid" "yellow")
         (star 40 "solid" "blue"))
