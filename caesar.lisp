;; https://www.dcode.fr/deranged-alphabet-generator

;; sbcl --script caesar.lisp encrypt "agszhxpbcmtoekndvuwrjqyilf" "preciso de ajuda"
;; result: "duhscwn zh amjza"

;; sbcl --script caesar.lisp decrypt "agszhxpbcmtoekndvuwrjqyilf" "duhscwn zh amjza"
;; result: "preciso de ajuda"

(defparameter *alphabet* "abcdefghijklmnopqrstuvxwyz")
(defparameter *deranged* (string-downcase (nth 2 sb-ext:*posix-argv*)))
(defparameter *text* (string-downcase (nth 3 sb-ext:*posix-argv*)))
(defparameter *index* 0)

(if (string= (nth 1 sb-ext:*posix-argv*) "encrypt")
  (progn
    (loop
      for i across *text* do
      (unless (string= i #\space)
        (progn
          (let ((x (position i *alphabet*)))
          (setf (char *text* *index*) (char *deranged* x)))))
      (setf *index* (+ *index* 1))))
    
  (progn
    (loop
      for i across *text* do
      (unless (string= i #\space)
        (progn
          (let ((x (position i *deranged*)))
          (setf (char *text* *index*) (char *alphabet* x)))))
      (setf *index* (+ *index* 1)))))

(format t "result: ~a" *text*)
