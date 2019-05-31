#!/usr/binx/racket
#lang htdp/bsl

; Imagine you are designing a program that, amoung other things, has information about the names
; of cities in its problem domain.
; Design a data definition to represent the name of a city.

; DATA DEFINITION
; 1. A possible structure definition
; 2. A type comment that defines a new type and describes how to form data
; 3. An interpretation that describes the correspondence between information and data
; 4. One or more examples of the data
; 5. A template for a 1 argument function operating on data of this type.


; CityName is String
; interp. the name of a city
(define CN1 "London")
(define CN2 "Paris")
(define (fn-for-city-name city)
  (... city))

; Template rules used:
; atomic non-distinct: String