(in-package :cl-mutable-array.test)
(defun run-tests ()
  (1am:run))

(test array-creation
  (let ((arr (make-mutable-array)))
    (is (= (item-count arr) 0))))
