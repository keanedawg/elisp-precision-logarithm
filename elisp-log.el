(defun prec_lg (val base iters)
  ; https://en.wikipedia.org/wiki/Logarithm#Calculation
  ; O(n^3)
  ; z, reuslt of (z - 1) / (z + 1), i = iteration count, sum = final output, coeff = 1, 1/3, 1/5, 1/7...
  (let ((z (/ (- (float val) 1.0) (+ (float val) 1.0))) (i (- (* 2 iters) 1))   (sum 1.0) (coeff 1.0))
    (while (< i iters)
      (setq coeff (/ 1.0 (+ 1.0 (* 2.0 i)))
            sum (+ coeff (* z sum))
            sum (* z sum)
            i (+ i 1.0)))
    (setq sum (* 2.0 sum))
    sum))

(prec_lg 8 2 10)





