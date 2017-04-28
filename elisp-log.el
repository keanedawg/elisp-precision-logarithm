(defun prec_lg (val base iters)
  ; https://en.wikipedia.org/wiki/Logarithm#Calculation
  (let ((z (/ (- (float val) 1.0) (+ (float val) 1.0) )) (i 0))
    (while (< i iters)
      ()

      (setq i (1+ i)))
    i
    ))

(prec_lg 8 2 3)





