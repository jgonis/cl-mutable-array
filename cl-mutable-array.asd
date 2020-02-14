(defsystem :cl-mutable-array
  :description "A mutable, growable, vector based off NSMutableArray"
  :version "0.0.1"
  :author "Jeff Gonis <jeffgonis@fastmail.com>"
  :licence "LGPL 3.0"
  :components ((:file "packages")
               (:module "src" 
                        :serial t 
                        :components ((:file "mutableArray")
                                     (:file "queryMethods")
                                     (:file "addingMethods")
                                     (:file "removingMethods")
                                     (:file "replacingMethods")
                                     (:file "rearrangingMethods")))))

(defsystem :cl-mutable-array/test
  :description "Test suite for the mutable array"
  :license "LGPL 3.0"
  :author "Jeff Gonis"
  :depends-on (:cl-mutable-array 
               :1am)
  :serial t
  :components ((:file "packages.test")
               (:module "tests"
                        :serial t
                        :components ((:file "tests")
                                     (:file "queryTests")
                                     (:file "addingTests")
                                     (:file "removingTests")
                                     (:file "replacingTests")
                                     (:file "rearrangingTests"))))
  :perform (asdf:test-op (op system)
             (funcall (read-from-string "cl-mutable-array.test:run-tests"))))
