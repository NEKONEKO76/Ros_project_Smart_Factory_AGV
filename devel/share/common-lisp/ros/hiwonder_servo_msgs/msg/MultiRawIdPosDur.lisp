; Auto-generated. Do not edit!


(cl:in-package hiwonder_servo_msgs-msg)


;//! \htmlinclude MultiRawIdPosDur.msg.html

(cl:defclass <MultiRawIdPosDur> (roslisp-msg-protocol:ros-message)
  ((id_pos_dur_list
    :reader id_pos_dur_list
    :initarg :id_pos_dur_list
    :type (cl:vector hiwonder_servo_msgs-msg:RawIdPosDur)
   :initform (cl:make-array 0 :element-type 'hiwonder_servo_msgs-msg:RawIdPosDur :initial-element (cl:make-instance 'hiwonder_servo_msgs-msg:RawIdPosDur))))
)

(cl:defclass MultiRawIdPosDur (<MultiRawIdPosDur>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MultiRawIdPosDur>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MultiRawIdPosDur)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name hiwonder_servo_msgs-msg:<MultiRawIdPosDur> is deprecated: use hiwonder_servo_msgs-msg:MultiRawIdPosDur instead.")))

(cl:ensure-generic-function 'id_pos_dur_list-val :lambda-list '(m))
(cl:defmethod id_pos_dur_list-val ((m <MultiRawIdPosDur>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader hiwonder_servo_msgs-msg:id_pos_dur_list-val is deprecated.  Use hiwonder_servo_msgs-msg:id_pos_dur_list instead.")
  (id_pos_dur_list m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MultiRawIdPosDur>) ostream)
  "Serializes a message object of type '<MultiRawIdPosDur>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'id_pos_dur_list))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'id_pos_dur_list))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MultiRawIdPosDur>) istream)
  "Deserializes a message object of type '<MultiRawIdPosDur>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'id_pos_dur_list) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'id_pos_dur_list)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'hiwonder_servo_msgs-msg:RawIdPosDur))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MultiRawIdPosDur>)))
  "Returns string type for a message object of type '<MultiRawIdPosDur>"
  "hiwonder_servo_msgs/MultiRawIdPosDur")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MultiRawIdPosDur)))
  "Returns string type for a message object of type 'MultiRawIdPosDur"
  "hiwonder_servo_msgs/MultiRawIdPosDur")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MultiRawIdPosDur>)))
  "Returns md5sum for a message object of type '<MultiRawIdPosDur>"
  "219f46020f0bb7e7755eb26cd4b971ed")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MultiRawIdPosDur)))
  "Returns md5sum for a message object of type 'MultiRawIdPosDur"
  "219f46020f0bb7e7755eb26cd4b971ed")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MultiRawIdPosDur>)))
  "Returns full string definition for message of type '<MultiRawIdPosDur>"
  (cl:format cl:nil "RawIdPosDur[] id_pos_dur_list~%================================================================================~%MSG: hiwonder_servo_msgs/RawIdPosDur~%uint8 id~%uint16 position~%uint16 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MultiRawIdPosDur)))
  "Returns full string definition for message of type 'MultiRawIdPosDur"
  (cl:format cl:nil "RawIdPosDur[] id_pos_dur_list~%================================================================================~%MSG: hiwonder_servo_msgs/RawIdPosDur~%uint8 id~%uint16 position~%uint16 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MultiRawIdPosDur>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'id_pos_dur_list) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MultiRawIdPosDur>))
  "Converts a ROS message object to a list"
  (cl:list 'MultiRawIdPosDur
    (cl:cons ':id_pos_dur_list (id_pos_dur_list msg))
))
