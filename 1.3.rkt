#lang racket

(define (sumSquares x y)
  (+ (* x x) (* y y))
)

(define (sumSquareTwoLargest x y z)
  (cond
    ((> x y z) (sumSquares x y))
    ((> y z x) (sumSquares y z))
    ((> z x y) (sumSquares z x))
    (else (sumSquares x x))
  )
)

(sumSquareTwoLargest 6 6 2)
