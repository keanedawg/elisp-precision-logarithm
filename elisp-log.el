; Probably will not use
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


;se_lg stands for Stack Exchange Log. This is a really nice algorithm as it's easy to program to an exact number of digits
;Probably will use :)
(defun se_lg (val places)
; https://math.stackexchange.com/a/999985/440144 <--- This algorithm is AMAZING
; O(?)
; val specifcies value to take log of. Places specifies how many places to be calculated to.
  (let ((i 0) (count -1) (expnt 1) (result ""))
;    (if (< val 10.0) (setq result (concat "0." result)))
    (while (< i places)
      (if (and (= 1 i) (> val 10.0)) (setq result (concat result ".")))
      (setq count -1 i (1+ i) expnt 1)
      (while (< expnt val)
	(setq expnt (* 10 expnt) count (1+ count)))
      (setq expnt (/ expnt 10) result (concat result (number-to-string count)) val (/ (float val) (float expnt)) val (expt val 10)))
  result))


(se_lg 2 50)


(defun lg (val base iters)
  ; This is the main logarithm calculator
  (/ (aht_ln base iters) (aht_ln val iters)))

(lg 2 8 200)




