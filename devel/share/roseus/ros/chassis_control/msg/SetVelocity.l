;; Auto-generated. Do not edit!


(when (boundp 'chassis_control::SetVelocity)
  (if (not (find-package "CHASSIS_CONTROL"))
    (make-package "CHASSIS_CONTROL"))
  (shadow 'SetVelocity (find-package "CHASSIS_CONTROL")))
(unless (find-package "CHASSIS_CONTROL::SETVELOCITY")
  (make-package "CHASSIS_CONTROL::SETVELOCITY"))

(in-package "ROS")
;;//! \htmlinclude SetVelocity.msg.html


(defclass chassis_control::SetVelocity
  :super ros::object
  :slots (_velocity _direction _angular ))

(defmethod chassis_control::SetVelocity
  (:init
   (&key
    ((:velocity __velocity) 0.0)
    ((:direction __direction) 0.0)
    ((:angular __angular) 0.0)
    )
   (send-super :init)
   (setq _velocity (float __velocity))
   (setq _direction (float __direction))
   (setq _angular (float __angular))
   self)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:angular
   (&optional __angular)
   (if __angular (setq _angular __angular)) _angular)
  (:serialization-length
   ()
   (+
    ;; float64 _velocity
    8
    ;; float64 _direction
    8
    ;; float64 _angular
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _direction
       (sys::poke _direction (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angular
       (sys::poke _angular (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _direction
     (setq _direction (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angular
     (setq _angular (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get chassis_control::SetVelocity :md5sum-) "c6ffb1426a0612ef45289abb145aeb72")
(setf (get chassis_control::SetVelocity :datatype-) "chassis_control/SetVelocity")
(setf (get chassis_control::SetVelocity :definition-)
      "float64 velocity
float64 direction
float64 angular


")



(provide :chassis_control/SetVelocity "c6ffb1426a0612ef45289abb145aeb72")


