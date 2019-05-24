#!/usr/binx/racket
#lang htdp/bsl

; PROBLEM:
; Write a function that consumes two numbers and produces the larger of the two. 

(define (largest a b)
  (if (> a b)
    a
    b))
