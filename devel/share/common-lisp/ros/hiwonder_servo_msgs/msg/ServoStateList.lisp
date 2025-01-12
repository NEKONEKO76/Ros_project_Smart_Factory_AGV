; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-msg)


;//! \htmlinclude ServoStateList.msg.html

(cl:defclass <ServoStateList> (roslisp-msg-protocol:ros-message)
  ((servo_states
    :reader servo_states
    :initarg :servo_states
    :type (cl:vector hiwonder_servo_msgs-msg:ServoState)
   :initform (cl:make-array 0 :element-type 'hiwonder_servo_msgs-msg:ServoState :initial-element (cl:make-instance 'hiwonder_servo_msgs-msg:ServoState))))
)

(cl:defclass ServoStateList (<ServoStateList>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoStateList>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoStateList)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-msg:<ServoStateList> is deprecated: use hiwonder_servo_msgs-msg:ServoStateList instead.")))

(cl:ensure-generic-function 'servo_states-val :lambda-list '(m))
(cl:defmethod servo_states-val ((m <ServoStateList>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:servo_states-val is deprecated.  Use hiwonder_servo_msgs-msg:servo_states instead.")
  (servo_states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoStateList>) ostream)
  "Serializes a message object of type '<ServoStateList>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'servo_states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'servo_states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoStateList>) istream)
  "Deserializes a message object of type '<ServoStateList>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'servo_states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'servo_states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hiwonder_servo_msgs-msg:ServoState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoStateList>)))
  "Returns string type for a message object of type '<ServoStateList>"
  "hiwonder_servo_msgs/ServoStateList")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoStateList)))
  "Returns string type for a message object of type 'ServoStateList"
  "hiwonder_servo_msgs/ServoStateList")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoStateList>)))
  "Returns md5sum for a message object of type '<ServoStateList>"
  "9a071e2c8f2c9207110dcfde37177dda")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoStateList)))
  "Returns md5sum for a message object of type 'ServoStateList"
  "9a071e2c8f2c9207110dcfde37177dda")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoStateList>)))
  "Returns full string definition for message of type '<ServoStateList>"
  (cl:format cl:nil "ServoState[] servo_states~%================================================================================~%MSG: hiwonder_servo_msgs/ServoState~%float64 timestamp   # motor state is at this time~%int32 id            # motor id~%int32 goal          # commanded position (in encoder units)~%int32 position      # current position (in encoder units)~%int32 error         # difference between current and goal positions~%int32 voltage       # current voltage (mv)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoStateList)))
  "Returns full string definition for message of type 'ServoStateList"
  (cl:format cl:nil "ServoState[] servo_states~%================================================================================~%MSG: hiwonder_servo_msgs/ServoState~%float64 timestamp   # motor state is at this time~%int32 id            # motor id~%int32 goal          # commanded position (in encoder units)~%int32 position      # current position (in encoder units)~%int32 error         # difference between current and goal positions~%int32 voltage       # current voltage (mv)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoStateList>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'servo_states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoStateList>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoStateList
    (cl:cons ':servo_states (servo_states msg))
))
