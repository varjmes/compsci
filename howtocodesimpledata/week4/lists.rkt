; PROBLEM:
; 
; Imagine that you are designing a program that will keep track of
; your favorite Quidditch teams. (http://iqaquidditch.org/).
; 
; Design a data definition to represent a list of Quidditch teams. 

;; ListOfTeams is one of:
;;  - empty
;;  - (cons Team ListOfTeams)
;; interp. a list of Quidditch teams

(define Q1 empty)
(define Q2 (cons "Gryffindor" empty))
(define Q3 (cons "Ravenclaw" (cons "Slytherin" empty)))

#;
(define (fn-for-teams teams)
  (cond [(empty? teams) (...)]                     ; BASE CASE
        [else (... (first teams)                   ; String
                   (fn-for-teams (rest teams)))])) ; NATURAL RECURSION

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: empty
;;  - compound: (cons Team ListOfTeams)
;;  - self-reference: (rest teams) is ListOfTeams

; PROBLEM:
; 
; We want to know whether your list of favorite Quidditch teams includes
; UBC! Design a function that consumes ListOfString and produces true if 
; the list includes "UBC".


;; Functions:
; Signature, purpose, stub;
  ; ListOfTeams -> Boolean
  ; Takes a ListOfTeams and returns true if the team is 'UBC'
  ; (define (includes-ubc? teams) false)
; Examples (wrapped in check-expect)
;   (check-expect (includes-ubc? (cons "Gryffindor" (cons "UBC" empty))) true)
;   (check-expect (includes-ubc? (cons "UBC" empty)) true)
;   (check-expect (includes-ubc? (cons "Ravenclaw" empty)) false)
;   (check-expect (includes-ubc? empty) false)
; Inventory - template & constants
; (define (includes-ubc? teams)
;   (cond [(empty? teams) (...)]                    ; BASE CASE
;       [else (... (first teams)                    ; String
;                  (includes-ubc? (rest teams)))])) ; NATURAL RECURSION
; Code body
(check-expect (includes-ubc? (cons "Gryffindor" (cons "UBC" empty))) true)
(check-expect (includes-ubc? (cons "UBC" empty)) true)
(check-expect (includes-ubc? (cons "Ravenclaw" empty)) false)
(check-expect (includes-ubc? empty) false)
(define (includes-ubc? teams)
  (cond [(empty? teams) false]                 ; BASE CASE
        [else 
          (if (string=? (first teams) "UBC")
              true
              (includes-ubc? (rest teams)))])) ; NATURAL RECURSION
; Test and debug