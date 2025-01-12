;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::ServoStateList)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'ServoStateList (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::SERVOSTATELIST")
  (make-package "HIWONDER_SERVO_MSGS::SERVOSTATELIST"))

(in-package "ROS")
;;//! \htmlinclude ServoStateList.msg.html


(defclass hiwonder_servo_msgs::ServoStateList
  :super ros::object
  :slots (_servo_states ))

(defmethod hiwonder_servo_msgs::ServoStateList
  (:init
   (&key
    ((:servo_states __servo_states) (let (r) (dotimes (i 0) (push (instance hiwonder_servo_msgs::ServoState :init) r)) r))
    )
   (send-super :init)
   (setq _servo_states __servo_states)
   self)
  (:servo_states
   (&rest __servo_states)
   (if (keywordp (car __servo_states))
       (send* _servo_states __servo_states)
     (progn
       (if __servo_states (setq _servo_states (car __servo_states)))
       _servo_states)))
  (:serialization-length
   ()
   (+
    ;; hiwonder_servo_msgs/ServoState[] _servo_states
    (apply #'+ (send-all _servo_states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hiwonder_servo_msgs/ServoState[] _servo_states
     (write-long (length _servo_states) s)
     (dolist (elem _servo_states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hiwonder_servo_msgs/ServoState[] _servo_states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servo_states (let (r) (dotimes (i n) (push (instance hiwonder_servo_msgs::ServoState :init) r)) r))
     (dolist (elem- _servo_states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::ServoStateList :md5sum-) "9a071e2c8f2c9207110dcfde37177dda")
(setf (get hiwonder_servo_msgs::ServoStateList :datatype-) "hiwonder_servo_msgs/ServoStateList")
(setf (get hiwonder_servo_msgs::ServoStateList :definition-)
      "ServoState[] servo_states
================================================================================
MSG: hiwonder_servo_msgs/ServoState
float64 timestamp   # motor state is at this time
int32 id            # motor id
int32 goal          # commanded position (in encoder units)
int32 position      # current position (in encoder units)
int32 error         # difference between current and goal positions
int32 voltage       # current voltage (mv)

")



(provide :hiwonder_servo_msgs/ServoStateList "9a071e2c8f2c9207110dcfde37177dda")


