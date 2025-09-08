;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;                    ;;;;;;;;;;;;;;;;
;;;;;;;;;;      Chapter 03    ;;;;;;;;;;;;;;;;
;;;;;;;;;;                    ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(list 1 2 3)

(list :a 1 :b 2 :c 3)

(getf (list :a 1 :b 2 :c 3) :b)

(defun make-cd (title artist rating ripped)
  (list :title title :artist artist :rating rating :ripped ripped))

(make-cd "Beat It" "Michael Jackson" 8 t)

(defvar *db* nil)

(defun add-record (cd) (push cd *db*))

(add-record (make-cd "Beat It" "Michael Jackson" 8 t))
(add-record (make-cd "On Every Street" "Dire Straits" 9 t))
(add-record (make-cd "Sorrow" "Pink Floyd" 10 t))

*db*

(defun dump-db ()
  (dolist (cd *db*)
    (format t "~{~a:~10t~a~%~}~%" cd)))

(defun dump-db-direct ()
  (format t "~{~{~a:~10t~a~%~}~%~}" *db*))

