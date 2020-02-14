(in-package :cl-mutable-array)
(defgeneric item-count (array)
  :documentation "Return the number of items currently stored by the array.")
(defmethod item-count ((array mutable-array))
  (item-count array))

(defgeneric get-at (array index)
  :documentation "Return the object stored at the specified index or signal an error")
(defmethod get-at ((array mutable-array) (index integer))
  (elt (buffer array) index))

(defgeneric get-range (array start &optional end)
  :documentation "Return a new array of the objects contained by the start and end indices passed in.")
(defmethod get-range ((array mutable-array) (start integer) &optional end)
  (subseq (buffer array) start end))
