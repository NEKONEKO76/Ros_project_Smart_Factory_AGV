
(cl:in-package :asdf)

(defsystem "chassis_control-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetTranslation" :depends-on ("_package_SetTranslation"))
    (:file "_package_SetTranslation" :depends-on ("_package"))
    (:file "SetVelocity" :depends-on ("_package_SetVelocity"))
    (:file "_package_SetVelocity" :depends-on ("_package"))
  ))