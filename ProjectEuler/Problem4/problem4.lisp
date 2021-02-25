(defun list-of-digits (n)
  (let ((list-digits '()))
    (do
     ((i n (floor (/ i 10))))
     ((<= i 0) list-digits)
     (push (mod i 10) list-digits)))) 

(defun palin-p (num)
  (let* ((list-digits (list-of-digits num))
         (palinp t)
         (nrDigits (length list-digits)))
    (do
     ((i 0 (+ i 1)))
     ((>= i (floor (/ nrDigits 2))) palinp)
     (if (/= (nth i list-digits)
             (nth (- nrDigits i 1) list-digits))
         (setf palinp nil))))) 

(defun largest-palindrome-by-3digit ()
  (let ((largest 0))
   (do
    ((i 999 (- i 1)))
    ((<= i 100) largest)
    (do
      ((j i (- j 1)))
      ((<= j 100) largest)
      (if (palin-p (* j i))
          (if (> (* j i) largest)
              (setf largest (* j i)))))))) 

(largest-palindrome-by-3digit) 
