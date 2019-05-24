#!/usr/bin/racket
#lang htdp/bsl

; Write two expressions that multiply the numbers 3, 5 and 7.
; The first should take advantage of the fact that * can accept more than 2 args.
; The second should build up the result by first multiplying 3 and 5, then the result by 7

(* 3 5 7)
(* (* 3 5) 7)
