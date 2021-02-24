;; This returns a list of numbers from min to max in steps
(defun range (max &key (min 0) (step 1))
  (loop for n from min below max by step
        collect n)) 

;; This returns a boolean indicating id numerator is divisible by a divisor
(defun divisible? (num div)
  (= (mod num div) 0)) 

;; This returns a sum of numbers in a range which meet a predicate
(defun sum-range (min max predicate)
  (let ((sum 0))
    (dolist (i (range max :min min) sum)
      (when (funcall predicate i)
            (setf sum (+ sum i)))))) 

(sum-range 1 1000
           #'(lambda (i)
               (or (divisible? i 5) (divisible? i 3))))

