; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-msg)


;//! \htmlinclude ServoState.msg.html

(cl:defclass <ServoState> (roslisp-msg-protocol:ros-message)
  ((timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:float
    :initform 0.0)
   (id
    :reader id
    :initarg :id
    :type cl:integer
    :initform 0)
   (goal
    :reader goal
    :initarg :goal
    :type cl:integer
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:integer
    :initform 0)
   (error
    :reader error
    :initarg :error
    :type cl:integer
    :initform 0)
   (voltage
    :reader voltage
    :initarg :voltage
    :type cl:integer
    :initform 0))
)

(cl:defclass ServoState (<ServoState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ServoState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ServoState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-msg:<ServoState> is deprecated: use hiwonder_servo_msgs-msg:ServoState instead.")))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <ServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:timestamp-val is deprecated.  Use hiwonder_servo_msgs-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:id-val is deprecated.  Use hiwonder_servo_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <ServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:goal-val is deprecated.  Use hiwonder_servo_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:position-val is deprecated.  Use hiwonder_servo_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'error-val :lambda-list '(m))
(cl:defmethod error-val ((m <ServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:error-val is deprecated.  Use hiwonder_servo_msgs-msg:error instead.")
  (error m))

(cl:ensure-generic-function 'voltage-val :lambda-list '(m))
(cl:defmethod voltage-val ((m <ServoState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:voltage-val is deprecated.  Use hiwonder_servo_msgs-msg:voltage instead.")
  (voltage m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ServoState>) ostream)
  "Serializes a message object of type '<ServoState>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'timestamp))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'goal)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'position)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'error)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'voltage)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ServoState>) istream)
  "Deserializes a message object of type '<ServoState>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'timestamp) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'goal) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'position) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'voltage) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ServoState>)))
  "Returns string type for a message object of type '<ServoState>"
  "hiwonder_servo_msgs/ServoState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ServoState)))
  "Returns string type for a message object of type 'ServoState"
  "hiwonder_servo_msgs/ServoState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ServoState>)))
  "Returns md5sum for a message object of type '<ServoState>"
  "b563aac8dea8e6fe724e72890a7f1a60")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ServoState)))
  "Returns md5sum for a message object of type 'ServoState"
  "b563aac8dea8e6fe724e72890a7f1a60")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ServoState>)))
  "Returns full string definition for message of type '<ServoState>"
  (cl:format cl:nil "float64 timestamp   # motor state is at this time~%int32 id            # motor id~%int32 goal          # commanded position (in encoder units)~%int32 position      # current position (in encoder units)~%int32 error         # difference between current and goal positions~%int32 voltage       # current voltage (mv)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ServoState)))
  "Returns full string definition for message of type 'ServoState"
  (cl:format cl:nil "float64 timestamp   # motor state is at this time~%int32 id            # motor id~%int32 goal          # commanded position (in encoder units)~%int32 position      # current position (in encoder units)~%int32 error         # difference between current and goal positions~%int32 voltage       # current voltage (mv)~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ServoState>))
  (cl:+ 0
     8
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ServoState>))
  "Converts a ROS message object to a list"
  (cl:list 'ServoState
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':id (id msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':position (position msg))
    (cl:cons ':error (error msg))
    (cl:cons ':voltage (voltage msg))
))
