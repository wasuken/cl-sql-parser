(defpackage sql-parser/tests/main
  (:use :cl
        :sql-parser
        :rove))
(in-package :sql-parser/tests/main)

;; NOTE: To run this test file, execute `(asdf:test-system :sql-parser)' in your Lisp.

(deftest test-target-1
  (testing "should (= 1 1) to be true"
    (ok (= 1 1))))
