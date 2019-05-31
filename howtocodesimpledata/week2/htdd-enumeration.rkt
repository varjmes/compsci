#!/usr/binx/racket
#lang htdp/bsl

; As part of designing a system to keep track of student grades, you are asked to design a data
; definition to represent the letter grade in a course, which is one of A, B or C.

; DATA DEFINITION
; 1. A possible structure definition
; 2. A type comment that defines a new type and describes how to form data
; 3. An interpretation that describes the correspondence between information and data
; 4. One or more examples of the data
; 5. A template for a 1 argument function operating on data of this type.

; ENUMERATION: the information to be represented consists of a fixed number of distinct items.
; Grade is one of:
;  - "A"
;  - "B"
;  - "C"
; interp. a student grade for a course
 
#;
(define (fn-for-grade grade)
  (cond [(string=? "A" grade) (...)]
        [(string=? "B" grade) (...)]
        [(string=? "C" grade) (...)]))

;; Template rules used:
;;  - one of: 3 cases
;;  - atomic distinct: "A"
;;  - atomic distinct: "B"
;;  - atomic distinct: "C"