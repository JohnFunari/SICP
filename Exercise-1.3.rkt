#lang sicp
(define (square x) (* x x))

(define (squareSum x y) (+ (square x) (square y)))

(define (sumOfTwoLargestSquared a b c)
  (if (>= a b)
         (if (>= b c)
               (squareSum a b)
               (squareSum a c))
         (if (>= a c)
             (squareSum a b)(squareSum b c))))