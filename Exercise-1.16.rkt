#lang sicp
(define (expt b n)
  (fast-expt b n 1))

(define (square n)
  (* n n))

(define (fast-expt b n a)
  (cond ((= n 0) a)
        ((even? n) (fast-expt (square b) (/ n 2) a) )
        (else (* b (fast-expt b (- n 1) a)))))