;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::JointState)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'JointState (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::JOINTSTATE")
  (make-package "HIWONDER_SERVO_MSGS::JOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude JointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass hiwonder_servo_msgs::JointState
  :super ros::object
  :slots (_header _name _servo_ids _servo_temps _goal_pos _current_pos _error _velocity ))

(defmethod hiwonder_servo_msgs::JointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:servo_ids __servo_ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:servo_temps __servo_temps) (make-array 0 :initial-element 0 :element-type :integer))
    ((:goal_pos __goal_pos) 0.0)
    ((:current_pos __current_pos) 0.0)
    ((:error __error) 0.0)
    ((:velocity __velocity) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _servo_ids __servo_ids)
   (setq _servo_temps __servo_temps)
   (setq _goal_pos (float __goal_pos))
   (setq _current_pos (float __current_pos))
   (setq _error (float __error))
   (setq _velocity (float __velocity))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:servo_ids
   (&optional __servo_ids)
   (if __servo_ids (setq _servo_ids __servo_ids)) _servo_ids)
  (:servo_temps
   (&optional __servo_temps)
   (if __servo_temps (setq _servo_temps __servo_temps)) _servo_temps)
  (:goal_pos
   (&optional __goal_pos)
   (if __goal_pos (setq _goal_pos __goal_pos)) _goal_pos)
  (:current_pos
   (&optional __current_pos)
   (if __current_pos (setq _current_pos __current_pos)) _current_pos)
  (:error
   (&optional __error)
   (if __error (setq _error __error)) _error)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; int32[] _servo_ids
    (* 4    (length _servo_ids)) 4
    ;; int32[] _servo_temps
    (* 4    (length _servo_temps)) 4
    ;; float64 _goal_pos
    8
    ;; float64 _current_pos
    8
    ;; float64 _error
    8
    ;; float64 _velocity
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32[] _servo_ids
     (write-long (length _servo_ids) s)
     (dotimes (i (length _servo_ids))
       (write-long (elt _servo_ids i) s)
       )
     ;; int32[] _servo_temps
     (write-long (length _servo_temps) s)
     (dotimes (i (length _servo_temps))
       (write-long (elt _servo_temps i) s)
       )
     ;; float64 _goal_pos
       (sys::poke _goal_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _current_pos
       (sys::poke _current_pos (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _error
       (sys::poke _error (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _velocity
       (sys::poke _velocity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _servo_ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servo_ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _servo_ids i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; int32[] _servo_temps
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _servo_temps (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _servo_temps i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; float64 _goal_pos
     (setq _goal_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _current_pos
     (setq _current_pos (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _error
     (setq _error (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _velocity
     (setq _velocity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::JointState :md5sum-) "75d2bf646c2006bb7f480fbc9d7d4db7")
(setf (get hiwonder_servo_msgs::JointState :datatype-) "hiwonder_servo_msgs/JointState")
(setf (get hiwonder_servo_msgs::JointState :definition-)
      "Header header
string name         # joint name
int32[] servo_ids   # motor ids controlling this joint
int32[] servo_temps # motor temperatures, same order as motor_ids

float64 goal_pos    # commanded position (in radians)
float64 current_pos # current joint position (in radians)
float64 error       # error between commanded and current positions (in radians)
float64 velocity    # current joint speed (in radians per second)
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :hiwonder_servo_msgs/JointState "75d2bf646c2006bb7f480fbc9d7d4db7")


