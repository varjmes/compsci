;; Natural is one of:
;;  - 0
;;  - (add1 Natural)
;; interp. a natural number
(define N0 0)         ;0
(define N1 (add1 N0)) ;1
(define N2 (add1 N1)) ;2

(define (fn-for-natural n)
  (cond [(zero? n) (...)]
        [else
         (... ;n                           ;template rules wouldn't normally put this
          ;                            ;here, but we will see that we end up coming
          ;                            ;back to add it
          (fn-for-natural (sub1 n)))]))

;; Template rules used:
;;  - one-of: two cases
;;  - atomic distinct: 0
;;  - compound: (add1 Natural)
;;  - self-reference: (sub1 n) is Natural

; 
; PROBLEMs:
; 
; (A) Design a function that consumes Natural number n and produces the sum of all
;     the naturals in [0, n].
;     
; (B) Design a function that consumes Natural number n and produces a list of all
;     the naturals of the form (cons n (cons n-1 ... empty)) not including 0.
;     
;     
;     



;; Natural -> Natural
;; produce sum of Natural[0, n]
;; (define (sum n) 0) ; stub
(check-expect (sum 0) 0)
(check-expect (sum 1) 1)
(check-expect (sum 3) (+ 3 2 1 0))

(define (sum n)
  (cond [(zero? n) 0]
        [else
         (+ n                          
               (sum (sub1 n)))]))


;; Natural -> ListOfNaturals
;; produce (cons n (cons n - 1 ... empty)), not including 0
(check-expect (to-list 0) empty)
(check-expect (to-list 1) (cons 1 empty))
(check-expect (to-list 2) (cons 2 (cons 1 empty)))

(define (to-list n)
  (cond [(zero? n) empty]
        [else
         (cons n                          
               (to-list (sub1 n)))]))

























