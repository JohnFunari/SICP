#lang sicp
(define (FizzBuzz i)
  (FizzBuzz-Run 1 i))
  
(define (FizzBuzz-Run i n)
     (cond ((= (modulo i 15) 0) (display "FizzBuzz "))
           ((= (modulo i 3) 0) (display "Fizz "))
           ((= (modulo i 5) 0) (display "Buzz "))
           (else (display i) (display " ")))
     (cond ((< i n) (FizzBuzz-Run (+ 1 i) n))))
