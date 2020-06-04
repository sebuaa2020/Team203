
(cl:in-package :asdf)

(defsystem "xfyun_waterplus-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "IATSwitch" :depends-on ("_package_IATSwitch"))
    (:file "_package_IATSwitch" :depends-on ("_package"))
  ))