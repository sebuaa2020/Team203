
(cl:in-package :asdf)

(defsystem "wpb_home_tutorials-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Follow" :depends-on ("_package_Follow"))
    (:file "_package_Follow" :depends-on ("_package"))
  ))