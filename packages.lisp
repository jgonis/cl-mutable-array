(defpackage :cl-mutable-array
  (:nicknames :clma)
  (:use :cl)
  (:export :make-mutable-array
           :item-count
           :get-at
           :get-range
           :add
           :insert-at
           :clear
           :remove-at
           :remove-last
           :remove-in-range
           :replace-at
           :replace-in-range
           :exchange))
