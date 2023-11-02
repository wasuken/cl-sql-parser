(defsystem "sql-parser"
  :version "0.1.0"
  :author ""
  :license ""
  :depends-on ()
  :components ((:module "src"
                :components
                ((:file "main"))))
  :description ""
  :in-order-to ((test-op (test-op "sql-parser/tests"))))

(defsystem "sql-parser/tests"
  :author ""
  :license ""
  :depends-on ("sql-parser"
               "rove")
  :components ((:module "tests"
                :components
                ((:file "main"))))
  :description "Test system for sql-parser"
  :perform (test-op (op c) (symbol-call :rove :run c)))
