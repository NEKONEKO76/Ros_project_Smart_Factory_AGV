; Auto-generated. Do not edit!


(cl:in-package chassis_control-msg)


;//! \htmlinclude SetTranslation.msg.html

(cl:defclass <SetTranslation> (roslisp-msg-protocol:ros-message)
  ((velocity_x
    :reader velocity_x
    :initarg :velocity_x
    :type cl:float
    :initform 0.0)
   (velocity_y
    :reader velocity_y
    :initarg :velocity_y
    :type cl:float
    :initform 0.0))
)

(cl:defclass SetTranslation (<SetTranslation>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetTranslation>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetTranslation)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name chassis_control-msg:<SetTranslation> is deprecated: use chassis_control-msg:SetTranslation instead.")))

(cl:ensure-generic-function 'velocity_x-val :lambda-list '(m))
(cl:defmethod velocity_x-val ((m <SetTranslation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chassis_control-msg:velocity_x-val is deprecated.  Use chassis_control-msg:velocity_x instead.")
  (velocity_x m))

(cl:ensure-generic-function 'velocity_y-val :lambda-list '(m))
(cl:defmethod velocity_y-val ((m <SetTranslation>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader chassis_control-msg:velocity_y-val is deprecated.  Use chassis_control-msg:velocity_y instead.")
  (velocity_y m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetTranslation>) ostream)
  "Serializes a message object of type '<SetTranslation>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'velocity_y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetTranslation>) istream)
  "Deserializes a message object of type '<SetTranslation>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_x) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'velocity_y) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetTranslation>)))
  "Returns string type for a message object of type '<SetTranslation>"
  "chassis_control/SetTranslation")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetTranslation)))
  "Returns string type for a message object of type 'SetTranslation"
  "chassis_control/SetTranslation")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetTranslation>)))
  "Returns md5sum for a message object of type '<SetTranslation>"
  "95bfb17779ecc69913dbb2e0513e19d5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetTranslation)))
  "Returns md5sum for a message object of type 'SetTranslation"
  "95bfb17779ecc69913dbb2e0513e19d5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetTranslation>)))
  "Returns full string definition for message of type '<SetTranslation>"
  (cl:format cl:nil "float64 velocity_x~%float64 velocity_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetTranslation)))
  "Returns full string definition for message of type 'SetTranslation"
  (cl:format cl:nil "float64 velocity_x~%float64 velocity_y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetTranslation>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetTranslation>))
  "Converts a ROS message object to a list"
  (cl:list 'SetTranslation
    (cl:cons ':velocity_x (velocity_x msg))
    (cl:cons ':velocity_y (velocity_y msg))
))
