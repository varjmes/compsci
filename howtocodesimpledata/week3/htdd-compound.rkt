#!/usr/binx/racket
#lang htdp/bsl

; Design a data definition to represent hockey players, including both their first and last names.

(define-struct hockey-player (first-name last-name))
;; HockeyPlayer is (make-hockey-player String String)
;; interp. a hockey player with a first and last name

(define PLAYER-1 (make-hockey-player "James" "Spencer"))

#;
(define (fn-for-hockey-player hockey-player)
  (... (hockey-player-fn hockey-player)  ; String
       (hockey-player-fn hockey-player))) ; String

;; Template rules used:
;;  - compound: 2 fields