#!/usr/binx/racket
#lang htdp/bsl

;; =================
;; Data definitions:

; 
; PROBLEM A:
; 
; Design a data definition to represent a movie, including  
; title, budget, and year released.
; 
; To help you to create some examples, find some interesting movie facts below: 
; "Titanic" - budget: 200000000 released: 1997
; "Avatar" - budget: 237000000 released: 2009
; "The Avengers" - budget: 220000000 released: 2012
; 
; However, feel free to resarch more on your own!
; 

(define-struct movie (title budget year))
;; Movie is (make-movie String Natural Natural)
;; interp. a movie comprised of a title, budget and year of release.

(define MOVIE-1 (make-movie "The Avengers" 220000000 2012))
(define MOVIE-2 (make-movie "Titanic" 200000000 1997))
(define MOVIE-3 (make-movie "Avatar" 237000000 2009))

#;
(define (fn-for-movie movie)
  (... (movie-title movie)  ; String
       (movie-budget movie) ; Natural
       (movie-year movie))) ; Natural

;; Template rules used:
;;  - compound: 3 fields
;; =================
;; Functions:

; 
; PROBLEM B:
; 
; You have a list of movies you want to watch, but you like to watch your 
; rentals in chronological order. Design a function that consumes two movies 
; and produces the title of the most recently released movie.
; 
; Note that the rule for templating a function that consumes two compound data 
; parameters is for the template to include all the selectors for both 
; parameters.

; Signature, purpose, stub;
  ; Movie Movie -> String
  ; Takes two movies and returns the title of the most recently released movie.
  ; (define (latest-movie movie-one movie-two) "")
; Examples (wrapped in check-expect)
;   (check-expect (latest-movie MOVIE-1 MOVIE-2) "The Avengers") 
;   (check-expect (latest-movie MOVIE-1 MOVIE-3) "The Avengers")
;   (check-expect (latest-movie MOVIE-2 MOVIE-3) "Avatar") 
; Inventory - template & constants
  ; (define (latest-movie movie-one movie-two)
  ;   (... (movie-title movie-one)
  ;        (movie-budget movie-one)
  ;        (movie-year movie-one)
  ;        (movie-title movie-two)
  ;        (movie-budget movie-two)
  ;        (movie-year movie-two)))
; Code body
(check-expect (latest-movie MOVIE-1 MOVIE-2) "The Avengers") 
(check-expect (latest-movie MOVIE-1 MOVIE-3) "The Avengers")
(check-expect (latest-movie MOVIE-2 MOVIE-3) "Avatar") 
(define (latest-movie movie-one movie-two)
  (if (> (movie-year movie-one) (movie-year movie-two))
      (movie-title movie-one)
      (movie-title movie-two)))
; Test and debug
