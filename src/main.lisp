(defpackage sql-parser
  (:use :cl))
(in-package :sql-parser)

;; (SELECT (PARAMS NIL) (FROM (PARAMS NIL)))
;; (Order (params...))

(defun parse (s)
  '(select (params ()) (from ())))

(defun split (sepc s)
  (let ((tmp "")
	(rst '()))
    (loop for x in (concatenate 'list s)
	  do (if (eq x sepc)
		 (progn
		   (setf rst (append rst (list tmp)))
		   (setf tmp "")
		   )
		 (setf tmp (concatenate 'string tmp (list x)))
		 )
	  )
    (when (> (length tmp) 0)
      (setf rst (append rst (list tmp))))
    rst
    )
  )

(defun split-parse (s)
  (mapcar #'(lambda (x) (intern (string-upcase x))) (split #\Space s)))

;; '((SELECT *PARAM-LIST* FROM *TABLE-LIST* (WHERE *WHERE-LIST*) (ORDER BY *ORDER-BY-LIST*) (LIMIT LIMIT-NUM)))
