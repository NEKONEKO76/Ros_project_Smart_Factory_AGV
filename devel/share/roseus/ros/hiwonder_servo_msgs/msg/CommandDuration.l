;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::CommandDuration)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'CommandDuration (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::COMMANDDURATION")
  (make-package "HIWONDER_SERVO_MSGS::COMMANDDURATION"))

(in-package "ROS")
;;//! \htmlinclude CommandDuration.msg.html


(defclass hiwonder_servo_msgs::CommandDuration
  :super ros::object
  :slots (_data _duration ))

(defmethod hiwonder_servo_msgs::CommandDuration
  (:init
   (&key
    ((:data __data) 0.0)
    ((:duration __duration) 0.0)
    )
   (send-super :init)
   (setq _data (float __data))
   (setq _duration (float __duration))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; float64 _data
    8
    ;; float64 _duration
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _data
       (sys::poke _data (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _data
     (setq _data (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::CommandDuration :md5sum-) "e962e48dbaa78de7630556894fd2bd8e")
(setf (get hiwonder_servo_msgs::CommandDuration :datatype-) "hiwonder_servo_msgs/CommandDuration")
(setf (get hiwonder_servo_msgs::CommandDuration :definition-)
      "float64 data
float64 duration
")



(provide :hiwonder_servo_msgs/CommandDuration "e962e48dbaa78de7630556894fd2bd8e")


