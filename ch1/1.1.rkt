; racket -e "(load \"ch1/1.1.rkt\") (exit)"
(define test (lambda (left right) (
  if (= left right) (display "pass ") (printf "~a = ~s error " left right)
)))

(define a 3)
(define b (+ a 1))

(test 10
  10)
(test (+ 5 3 4)
  12)
(test (- 9 1)
  8)
(test (/ 6 2)
  3)
(test (+ (* 2 4) (- 4 6))
  6)
(test a
  3)
(test b
  4)
(test (+ a b (* a b))
  19)
;;; (test (= a b)
;;;   false)
(test (if (and (> b a) (< b (* a b))) b a)
  4)
(test (cond ((= a 4) 6) ((= b 4) (+ 6 7 a)) (else 25))
  (+ 6 7 3))
(test (+ 2 (if (> b a) b a))
  6)
(test (* (cond ((> a b) a) ((< a b) b) (else -1)) (+ a 1))
  16)
