#!/usr/binx/racket
#lang htdp/bsl

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to help a teacher organize their next field trip. 
; On the trip, lunch must be provided for all students. For each student, track 
; their name, their grade (from 1 to 12), and whether or not they have allergies
; 

(define-struct student (name grade allergies?))
;; Student is (make-student String Natural[1, 12] Boolean)
;; interp. a student, comprised of name, grade level from 1-12 and whether they have allergies

(define STUDENT-1 (make-student "James Spencer" 12 false))
(define STUDENT-2 (make-student "Jo Bloggs" 4 true))

#;
(define (fn-for-student student)
  (... (student-name student)         ; String
       (student-grade student)        ; Natural[1, 12]
       (student-allergies? student))) ; Boolean

;; Template rules used:
;;  - compound: 3 fields
;; =================
;; Functions:

; 
; PROBLEM B:
; 
; To plan for the field trip, if students are in grade 6 or below, the teacher 
; is responsible for keeping track of their allergies. If a student has allergies, 
; and is in a qualifying grade, their name should be added to a special list. 
; Design a function to produce true if a student name should be added to this list.
; 

; Signature, purpose, stub;
  ; Student -> Boolean
  ; Takes a student and returns true if said student is in grade 6 or below and has allergies
  ; (define (track? student) false)
; Examples (wrapped in check-expect)
;   (check-expect (track? STUDENT-1) false) 
;   (check-expect (track? STUDENT-2) true)
; Inventory - template & constants
  ; (define (track? student)
  ;   (... (student-name student)
  ;        (student-grade student)
  ;        (student-allergies? student)))
; Code body
(check-expect (track? STUDENT-1) false) 
(check-expect (track? STUDENT-2) true)
(define (track? student)
  (and (<= (student-grade student) 6)
       (student-allergies? student)))
; Test and debug