#!/usr/binx/racket
#lang htdp/bsl

; CityName is String
; interp. the name of a city
(define CN1 "London")
(define CN2 "Paris")
(define (fn-for-city-name city)
  (... city))

; Template rules used:
;   atomic non-distinct: String

; Using the CityName data definition, design a function that produces true if the given city is the
; best in the world.

; Function
; CityName -> Boolean
; produce true if the given city is the best in the world
; (define (bestCity? city) false)
(check-expect (best-city? "London") true)
(check-expect (best-city? "Paris") false)

(define (best-city? city)
  (string=? city "London"))