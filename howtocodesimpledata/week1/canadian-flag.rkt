#!/usr/binx/racket
#lang htdp/bsl

; PROBLEM:
; Write an expression to produce that the bg of the canadian flag.

(require 2htdp/image)

(define (rect colour)
  (rectangle 20 40 "solid" colour))

(beside (rect "red")
        (rect "white")
        (rect "white")
        (rect "red"))
