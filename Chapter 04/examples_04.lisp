;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;                    ;;;;;;;;;;;;;;;;
;;;;;;;;;;      Chapter 04    ;;;;;;;;;;;;;;;;
;;;;;;;;;;                    ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


(defun hello-world ()
  (format t "hello, world"))

(defun print-list (list)
  (dolist (i list)
    (format t "item: ~a~%" i)))

;;;; File heading comment
;;;  Paragraph/large code section
;;   Applies to code that follows
;    Applies to a single line

