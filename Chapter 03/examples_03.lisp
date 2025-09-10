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

(defun prompt-read (prompt)
  (format *query-io* "~a: " prompt)
  (force-output *query-io*)
  (read-line *query-io*))

(defun prompt-for-cd-firstcut ()
  (make-cd
  (prompt-read "Title")
  (prompt-read "Artist")
  (prompt-read "Rating")
  (prompt-read "Ripped [y/n]")))

(defun prompt-for-cd ()
  (make-cd
   (prompt-read "Title")
   (prompt-read "Artist")
   (or (parse-integer (prompt-read "Rating") :junk-allowed t) 0)
   (y-or-n-p "Ripped [y/n]")))

(defun add-cds ()
  (loop (add-record (prompt-for-cd))
	(if (not (y-or-n-p "Another [y/n]: ")) (return))))

(defun save-db (filename)    ;/Users/deepak/programming/PCL/my-cds.db
  (with-open-file (out filename
		       :direction :output
		       :if-exists :supersede)
    (with-standard-io-syntax
      (print *db* out))))

(defun load-db (filename)
  (with-open-file (in filename)
    (with-standard-io-syntax
      (setf *db* (read in)))))

(remove-if-not #'evenp '(1 2 3 4 5 6 7 8 9 10))

(remove-if-not #'(lambda (x) (= 0 (mod x 2))) '(1 2 3 4 5 6 7 8 9 10))

(remove-if-not #'(lambda (x) (= 1 (mod x 2))) '(1 2 3 4 5 6 7 8 9 10))

(defun select-by-artist (artist)
  (remove-if-not
   #'(lambda (cd) (equal (getf cd :artist) artist)) ;(select-by-artist '"Dire Straits")
   *db*))

(defun select (selector-fn)
  (remove-if-not selector-fn *db*))

(select #'(lambda (cd) (equal (getf cd :artist) "Bon Jovi")))

(defun artist-selector (artist)
  #'(lambda (cd) (equal (getf cd :artist) artist)))

(select (artist-selector '"Bon Jovi"))

