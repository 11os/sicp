; (load "1-1.rkt") 


;;; 0 1 2 3 4 5 6
;;; 0 1 1 2 3 5 8
;;; (define fib (lambda (n) (
;;;   cond 
;;;     [(< n 2) n]
;;;     [else (+ (fib (- n 1)) (fib (- n 2)))]
;;; )))

(define fib (lambda (n) (fib-iter 0 1 n)))
(define fib-iter (lambda (a b c) (
  if (= c 0)
    a
    (fib-iter b (+ a b) (- c 1)))))

(define test (lambda (left right) (
  if (= left right) (display "pass ") (printf "(fib ~a) = ~s error " left right)
)))

(test (fib 0) 0)
(test (fib 1) 1)
(test (fib 2) 1)
(test (fib 3) 2)
(test (fib 4) 3)
(test (fib 5) 5)
(test (fib 6) 8)
(test (fib 7) 13)

(define (abs x)
  (cond ((< x 0) (- x))
    (else x))
)

(abs -10)

(define (add x y)
  (cond ((= x 0) y)
    (else (add (- x 1) (+ y 1)))))

(add 5 3)