;; Auto-generated. Do not edit!


(when (boundp 'visual_processing::Result)
  (if (not (find-package "VISUAL_PROCESSING"))
    (make-package "VISUAL_PROCESSING"))
  (shadow 'Result (find-package "VISUAL_PROCESSING")))
(unless (find-package "VISUAL_PROCESSING::RESULT")
  (make-package "VISUAL_PROCESSING::RESULT"))

(in-package "ROS")
;;//! \htmlinclude Result.msg.html


(defclass visual_processing::Result
  :super ros::object
  :slots (_center_x _center_y _data _angle ))

(defmethod visual_processing::Result
  (:init
   (&key
    ((:center_x __center_x) 0)
    ((:center_y __center_y) 0)
    ((:data __data) 0.0)
    ((:angle __angle) 0.0)
    )
   (send-super :init)
   (setq _center_x (round __center_x))
   (setq _center_y (round __center_y))
   (setq _data (float __data))
   (setq _angle (float __angle))
   self)
  (:center_x
   (&optional __center_x)
   (if __center_x (setq _center_x __center_x)) _center_x)
  (:center_y
   (&optional __center_y)
   (if __center_y (setq _center_y __center_y)) _center_y)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:angle
   (&optional __angle)
   (if __angle (setq _angle __angle)) _angle)
  (:serialization-length
   ()
   (+
    ;; int32 _center_x
    4
    ;; int32 _center_y
    4
    ;; float64 _data
    8
    ;; float64 _angle
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _center_x
       (write-long _center_x s)
     ;; int32 _center_y
       (write-long _center_y s)
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _angle
       (sys::poke _angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _center_x
     (setq _center_x (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _center_y
     (setq _center_y (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _angle
     (setq _angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get visual_processing::Result :md5sum-) "da4b4953f0cc816df8987dd9cf6150ed")
(setf (get visual_processing::Result :datatype-) "visual_processing/Result")
(setf (get visual_processing::Result :definition-)
      "int32 center_x
int32 center_y
float64 data
float64 angle

")



(provide :visual_processing/Result "da4b4953f0cc816df8987dd9cf6150ed")


