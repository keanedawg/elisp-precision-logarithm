(defun prec_lg (val base iters)
  ; https://en.wikipedia.org/wiki/Logarithm#Calculation
  ; O(n^3)
  ; z, reuslt of (z - 1) / (z + 1), i = iteration count, sum = final output, coeff = 1, 1/3, 1/5, 1/7...
  (let ((z (/ (- (float val) 1.0) (+ (float val) 1.0) )) (i 0) (sum 1) (coeff 1))
    (while (< i iters)
      (setq coeff (/ 1 (+ 1 (* 2 i)))
            sum 2
            sum (* z sum)
            i (+ i 1)))
    i))

(prec_lg 8 2 3)





