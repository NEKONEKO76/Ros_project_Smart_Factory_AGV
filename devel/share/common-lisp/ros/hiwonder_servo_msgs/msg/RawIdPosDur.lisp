; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-msg)


;//! \htmlinclude RawIdPosDur.msg.html

(cl:defclass <RawIdPosDur> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type cl:fixnum
    :initform 0)
   (duration
    :reader duration
    :initarg :duration
    :type cl:fixnum
    :initform 0))
)

(cl:defclass RawIdPosDur (<RawIdPosDur>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RawIdPosDur>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RawIdPosDur)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-msg:<RawIdPosDur> is deprecated: use hiwonder_servo_msgs-msg:RawIdPosDur instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <RawIdPosDur>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:id-val is deprecated.  Use hiwonder_servo_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <RawIdPosDur>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:position-val is deprecated.  Use hiwonder_servo_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <RawIdPosDur>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:duration-val is deprecated.  Use hiwonder_servo_msgs-msg:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RawIdPosDur>) ostream)
  "Serializes a message object of type '<RawIdPosDur>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RawIdPosDur>) istream)
  "Deserializes a message object of type '<RawIdPosDur>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'id)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'position)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'duration)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'duration)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RawIdPosDur>)))
  "Returns string type for a message object of type '<RawIdPosDur>"
  "hiwonder_servo_msgs/RawIdPosDur")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RawIdPosDur)))
  "Returns string type for a message object of type 'RawIdPosDur"
  "hiwonder_servo_msgs/RawIdPosDur")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RawIdPosDur>)))
  "Returns md5sum for a message object of type '<RawIdPosDur>"
  "ee63665fa0c79998dcae740d86109b84")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RawIdPosDur)))
  "Returns md5sum for a message object of type 'RawIdPosDur"
  "ee63665fa0c79998dcae740d86109b84")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RawIdPosDur>)))
  "Returns full string definition for message of type '<RawIdPosDur>"
  (cl:format cl:nil "uint8 id~%uint16 position~%uint16 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RawIdPosDur)))
  "Returns full string definition for message of type 'RawIdPosDur"
  (cl:format cl:nil "uint8 id~%uint16 position~%uint16 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RawIdPosDur>))
  (cl:+ 0
     1
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RawIdPosDur>))
  "Converts a ROS message object to a list"
  (cl:list 'RawIdPosDur
    (cl:cons ':id (id msg))
    (cl:cons ':position (position msg))
    (cl:cons ':duration (duration msg))
))
