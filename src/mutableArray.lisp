(in-package :cl-mutable-array)
(defclass mutable-array ()
  ((used
    :init-form 0
    :reader item-count
    :documentation "Number of items stored in the array")
   (buff
    :initarg :buffer
    :accessor buffer
    :documentation "The buffer containing the items stored by the array")
   (offset
    :init-form 0
    :documentation "The buffer index of the first item stored in the array")))

(defparameter  *array-growth-factor* 1.65)

(defun make-mutable-array (&optional (initial-capacity 5))
  (make-instance 'mutable-array
                 :buffer (make-array initial-capacity)))
