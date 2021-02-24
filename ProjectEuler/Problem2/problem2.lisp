(defun sum-fib (max pred)
  (do ((n1 0 n2)
       (n2 1 (+ n1 n2))
       (sum 0))
      ((>= n1 max) sum)
    (when (funcall pred n1)
      (setf sum (+ sum n1))))) 

(sum-fib 4000000 #'evenp) 
