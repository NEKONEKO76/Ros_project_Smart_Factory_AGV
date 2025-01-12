;; Auto-generated. Do not edit!


(when (boundp 'chassis_control::SetTranslation)
  (if (not (find-package "CHASSIS_CONTROL"))
    (make-package "CHASSIS_CONTROL"))
  (shadow 'SetTranslation (find-package "CHASSIS_CONTROL")))
(unless (find-package "CHASSIS_CONTROL::SETTRANSLATION")
  (make-package "CHASSIS_CONTROL::SETTRANSLATION"))

(in-package "ROS")
;;//! \htmlinclude SetTranslation.msg.html


(defclass chassis_control::SetTranslation
  :super ros::object
  :slots (_velocity_x _velocity_y ))

(defmethod chassis_control::SetTranslation
  (:init
   (&key
    ((:velocity_x __velocity_x) 0.0)
    ((:velocity_y __velocity_y) 0.0)
    )
   (send-super :init)
   (setq _velocity_x (float __velocity_x))
   (setq _velocity_y (float __velocity_y))
   self)
  (:velocity_x
   (&optional __velocity_x)
   (if __velocity_x (setq _velocity_x __velocity_x)) _velocity_x)
  (:velocity_y
   (&optional __velocity_y)
   (if __velocity_y (setq _velocity_y __velocity_y)) _velocity_y)
  (:serialization-length
   ()
   (+
    ;; float64 _velocity_x
    8
    ;; float64 _velocity_y
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _velocity_x
       (sys::poke _velocity_x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity_y
       (sys::poke _velocity_y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _velocity_x
     (setq _velocity_x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity_y
     (setq _velocity_y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get chassis_control::SetTranslation :md5sum-) "95bfb17779ecc69913dbb2e0513e19d5")
(setf (get chassis_control::SetTranslation :datatype-) "chassis_control/SetTranslation")
(setf (get chassis_control::SetTranslation :definition-)
      "float64 velocity_x
float64 velocity_y

")



(provide :chassis_control/SetTranslation "95bfb17779ecc69913dbb2e0513e19d5")


