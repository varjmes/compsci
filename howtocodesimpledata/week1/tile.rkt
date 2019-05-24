#!/usr/bin/racket
#lang htdp/bsl

(require 2htdp/image)

; Use square, beside and above functions to create an square, containing
; four smaller squares. The top right and bottom left corners are yellow,
; whilst the top left and bottom right corners are blue.

(above (beside (square 10 "solid" "blue")
               (square 10 "solid" "yellow"))
       (beside (square 10 "solid" "yellow")
               (square 10 "solid" "blue")))
