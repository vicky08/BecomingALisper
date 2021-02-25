;; This returns a boolean indicating id numerator is divisible by a divisor
(defun divisible? (num div)
  (= (mod num div) 0)) 

(defun primep (num)
  (loop :for i :from 2 :to (/ num 2)
        :never (zerop (rem num i)))) 

(defun largest-prime-factor (num largest)
  (if (evenp num)
      (progn
        (if (> 2 largest)
            (progn (setf largest 2)
                   (setf num (floor (/ num 2)))
                   (largest-prime-factor num largest)))) 
      (do
       ((i 3 (+ i 2)))
       ((> i (floor (sqrt num))) largest)
       (if (and (divisible? num i) (primep i))
           (if (> i largest)
               (setf largest i)))))) 

(largest-prime-factor 13195 0) 
(largest-prime-factor 600851475143 0) 

(primep 6857) 
