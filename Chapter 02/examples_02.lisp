;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;                    ;;;;;;;;;;;;;;;;
;;;;;;;;;;      Chapter 02    ;;;;;;;;;;;;;;;;
;;;;;;;;;;                    ;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


					; 10 evaluates to 10
(+ 2 3)
					; "hello, world" evaluates to "hello, world"

(format t "hello, world")

(defun hello-world ()
  (format t "hello, world"))

(load (compile-file "pclworkbook.lisp"))
; compiling file "/Users/deepak/programming/PCL/pclworkbook.lisp" (written 05 SEP 2025 12:26:39 PM):

; wrote /Users/deepak/programming/PCL/pclworkbook.fasl
; compilation finished in 0:00:00.049
hello, world
T

