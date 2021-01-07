#lang sicp
(define (pascal a b)
  (if (or (= b 0) (= a b))
      1
      (+ (pascal (- a 1) (- b 1)) (pascal (- a 1) b))))