;; =================
;; Data definitions:

; 
; PROBLEM A:
; Design a data definition to represent a list of booleans. Call it ListOfBoolean. 

; ListOfBoolean is one of:
; - empty
; - (cons Boolean ListOfBoolean)

(define B1 empty)
(define B2 (cons true (cons false empty)))
#;
(define (fn-for-lob lob)
  (cond [(empty? lob) (...)]
        [else
         (... (first lob)
              (fn-for-lob (rest lob)))]))

;; Template rules used:
;;  - one of: 2 cases
;;  - atomic distinct: empty
;;  - compound: (cons Boolean ListOfBoolean)
;;  - self-reference: (rest lob) is ListOfBoolean

;; =================
;; Functions:

; PROBLEM B:
; 
; Design a function that consumes a list of boolean values and produces true 
; if every value in the list is true. If the list is empty, your function 
; should also produce true. Call it all-true?

; ListOfBoolean -> Boolean
; given a list of booleans, determines wether all booleans in the list are true. when the list is
; empty, return true.
; (define (all-true? lob) true) ; stub

(check-expect (all-true? empty) true)
(check-expect (all-true? (cons false empty)) false)
(check-expect (all-true? (cons true (cons true empty))) true)
(check-expect (all-true? (cons true (cons false empty))) false)

(define (all-true? lob)
  (cond [(empty? lob) true]
        [else
          (if (false? (first lob))
              false
              (all-true? (rest lob)))])) ; NATURAL RECURSION
