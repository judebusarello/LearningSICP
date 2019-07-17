#lang racket

(define (extract str)
  (substring str 4 11))

(extract "the bat out of the bag")
