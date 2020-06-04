
(cl:in-package :asdf)

(defsystem "wpb_home_behaviors-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Coord" :depends-on ("_package_Coord"))
    (:file "_package_Coord" :depends-on ("_package"))
    (:file "Rect" :depends-on ("_package_Rect"))
    (:file "_package_Rect" :depends-on ("_package"))
  ))