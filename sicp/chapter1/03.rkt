#lang racket/base

(require rackunit)

(define (square x) (* x x))
(define (sum-of-squeres x y)
  (+ (square x) (square y)))
(define  (sum-of-squeres-max a b c)
  (cond ((and (>= a c) (>= b c)) (sum-of-squeres a b))
        ((and (>= a b) (>= c b)) (sum-of-squeres a c))
        (else (sum-of-squeres b c))))


(check-equal? sum-of-squeres-max 2 8 4)