;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::ServoState)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'ServoState (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::SERVOSTATE")
  (make-package "HIWONDER_SERVO_MSGS::SERVOSTATE"))

(in-package "ROS")
;;//! \htmlinclude ServoState.msg.html


(defclass hiwonder_servo_msgs::ServoState
  :super ros::object
  :slots (_timestamp _id _goal _position _error _voltage ))

(defmethod hiwonder_servo_msgs::ServoState
  (:init
   (&key
    ((:timestamp __timestamp) 0.0)
    ((:id __id) 0)
    ((:goal __goal) 0)
    ((:position __position) 0)
    ((:error __error) 0)
    ((:voltage __voltage) 0)
    )
   (send-super :init)
   (setq _timestamp (float __timestamp))
   (setq _id (round __id))
   (setq _goal (round __goal))
   (setq _position (round __position))
   (setq _error (round __error))
   (setq _voltage (round __voltage))
   self)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:goal
   (&optional __goal)
   (if __goal (setq _goal __goal)) _goal)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:serialization-length
   ()
   (+
    ;; float64 _timestamp
    8
    ;; int32 _id
    4
    ;; int32 _goal
    4
    ;; int32 _position
    4
    ;; int32 _error
    4
    ;; int32 _voltage
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _timestamp
       (sys::poke _timestamp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _id
       (write-long _id s)
     ;; int32 _goal
       (write-long _goal s)
     ;; int32 _position
       (write-long _position s)
     ;; int32 _error
       (write-long _error s)
     ;; int32 _voltage
       (write-long _voltage s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _timestamp
     (setq _timestamp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _id
     (setq _id (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _goal
     (setq _goal (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _position
     (setq _position (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _error
     (setq _error (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _voltage
     (setq _voltage (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::ServoState :md5sum-) "b563aac8dea8e6fe724e72890a7f1a60")
(setf (get hiwonder_servo_msgs::ServoState :datatype-) "hiwonder_servo_msgs/ServoState")
(setf (get hiwonder_servo_msgs::ServoState :definition-)
      "float64 timestamp   # motor state is at this time
int32 id            # motor id
int32 goal          # commanded position (in encoder units)
int32 position      # current position (in encoder units)
int32 error         # difference between current and goal positions
int32 voltage       # current voltage (mv)

")



(provide :hiwonder_servo_msgs/ServoState "b563aac8dea8e6fe724e72890a7f1a60")


