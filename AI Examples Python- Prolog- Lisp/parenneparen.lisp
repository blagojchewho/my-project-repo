(defun prov (x y)

(format t “Your two numbers are”)

(cond((and (evenp x)(evenp y)) ‘both_odd)

((and (oddp x)(oddp y)) ‘both_even)

(T ‘there_a_mixture)

)

)