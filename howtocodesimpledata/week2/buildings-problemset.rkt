#!/usr/binx/racket
#lang htdp/bsl

; You are assigned to develop a system that will classify buildings in downtown Vancouver based on how
; old they are. According to city guidelines, there are three different classification levels:
; new, old, and heritage.

; Design a data definition to represent these classification levels. 
; Call it BuildingStatus.

;; BuildingStatus is one of:
;;  - "new"
;;  - "old"
;;  - "heritage"
;; interp. the classification of a building, according to age of said building.

;; <examples are redundant for enumerations>
 
#;
(define (fn-for-building-status building)
  (cond [(string=? "new" building) (...)]
        [(string=? "old" building) (...)]
        [(string=? "heritage" building) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "new"
;;  - atomic distinct: "old"
;;  - atomic distinct: "heritage"

; ---------

; The city wants to demolish all buildings classified as "old". You are hired to design a function
; called demolish? that determines whether a building should be torn down or not.

;; Functions:
; Signature, purpose, stub;
  ; BuildingStatus -> Boolean
  ; Takes a BuildingStatus and returns a boolean as to whether the building should be destroyed.
  ; (define (demolish? building-status) false)
; Examples (wrapped in check-expect)
;   (check-expect (demolish? "old") true) 
;   (check-expect (demolish? "new") false)
;   (check-expect (demolish? "heritage") false) 
; Inventory - template & constants
  ; (define (demolish? building-status)
  ;   (cond [(string=? building-status "old") (...)]
  ;         [else false]))
; Code body
(check-expect (demolish? "old") true)
(check-expect (demolish? "new") false)
(check-expect (demolish? "heritage") false)
(define (demolish? building-status)
  (cond [(string=? building-status "old") true]
        [else false]))
; Test and debug
