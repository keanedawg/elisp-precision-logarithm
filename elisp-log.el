(defun aht_ln (val iters)
  ; https://en.wikipedia.org/wiki/Logarithm#Calculation
  ; O(n^3)
  ; z, reuslt of (z - 1) / (z + 1), i = iteration count, sum = final output, coeff = 1, 1/3, 1/5, 1/7...
  (let ((z (/ (- (float val) 1.0) (+ (float val) 1.0))) (i (- (* 2 iters) 1)) (sum 1.0) (coeff 1.0))
    (while (> i 0)
      (setq coeff (/ 1.0 (float i))
            sum (+ coeff (* z sum))
            sum (* z sum)
            i (- i 2)))
    (setq sum (* 2.0 sum))))

(defun se_lg (val places)
; https://math.stackexchange.com/a/999985/440144
; O(?)
; val specifcies value to take log of. Places specifies how many places to be calculated to.
  (let ((i 0) (count 0) (expnt 1) (expt-val -1) (result ""))
    (while (< i places)
      (setq count 0 i (1+ i) expnt 1.0 expt-val -1)
      (while (< expnt val)
	(setq expnt (* 10.0 expnt) expt-val (1+ expt-val)))
      (setq result (concat result (number-to-string expt-val)) val (/ (float val) (float expnt)) val (expt val 10)))
  val))


(se_lg 25 5)


(defun lg (val base iters)
  ; This is the main logarithm calculator
  (/ (aht_ln base iters) (aht_ln val iters)))

(lg 2 8 200)




