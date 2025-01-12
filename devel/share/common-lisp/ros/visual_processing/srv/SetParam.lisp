; Auto-generated. Do not edit!


(cl:in-package visual_processing-srv)


;//! \htmlinclude SetParam-request.msg.html

(cl:defclass <SetParam-request> (roslisp-msg-protocol:ros-message)
  ((type
    :reader type
    :initarg :type
    :type cl:string
    :initform "")
   (color
    :reader color
    :initarg :color
    :type cl:string
    :initform ""))
)

(cl:defclass SetParam-request (<SetParam-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParam-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParam-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visual_processing-srv:<SetParam-request> is deprecated: use visual_processing-srv:SetParam-request instead.")))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <SetParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_processing-srv:type-val is deprecated.  Use visual_processing-srv:type instead.")
  (type m))

(cl:ensure-generic-function 'color-val :lambda-list '(m))
(cl:defmethod color-val ((m <SetParam-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_processing-srv:color-val is deprecated.  Use visual_processing-srv:color instead.")
  (color m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParam-request>) ostream)
  "Serializes a message object of type '<SetParam-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'color))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'color))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParam-request>) istream)
  "Deserializes a message object of type '<SetParam-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'color) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'color) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParam-request>)))
  "Returns string type for a service object of type '<SetParam-request>"
  "visual_processing/SetParamRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam-request)))
  "Returns string type for a service object of type 'SetParam-request"
  "visual_processing/SetParamRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParam-request>)))
  "Returns md5sum for a message object of type '<SetParam-request>"
  "9346153312ad52b853d2b74ee012923e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParam-request)))
  "Returns md5sum for a message object of type 'SetParam-request"
  "9346153312ad52b853d2b74ee012923e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParam-request>)))
  "Returns full string definition for message of type '<SetParam-request>"
  (cl:format cl:nil "string type~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParam-request)))
  "Returns full string definition for message of type 'SetParam-request"
  (cl:format cl:nil "string type~%string color~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParam-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'type))
     4 (cl:length (cl:slot-value msg 'color))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParam-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParam-request
    (cl:cons ':type (type msg))
    (cl:cons ':color (color msg))
))
;//! \htmlinclude SetParam-response.msg.html

(cl:defclass <SetParam-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SetParam-response (<SetParam-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetParam-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetParam-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name visual_processing-srv:<SetParam-response> is deprecated: use visual_processing-srv:SetParam-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SetParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_processing-srv:success-val is deprecated.  Use visual_processing-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SetParam-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader visual_processing-srv:message-val is deprecated.  Use visual_processing-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetParam-response>) ostream)
  "Serializes a message object of type '<SetParam-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetParam-response>) istream)
  "Deserializes a message object of type '<SetParam-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetParam-response>)))
  "Returns string type for a service object of type '<SetParam-response>"
  "visual_processing/SetParamResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam-response)))
  "Returns string type for a service object of type 'SetParam-response"
  "visual_processing/SetParamResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetParam-response>)))
  "Returns md5sum for a message object of type '<SetParam-response>"
  "9346153312ad52b853d2b74ee012923e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetParam-response)))
  "Returns md5sum for a message object of type 'SetParam-response"
  "9346153312ad52b853d2b74ee012923e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetParam-response>)))
  "Returns full string definition for message of type '<SetParam-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetParam-response)))
  "Returns full string definition for message of type 'SetParam-response"
  (cl:format cl:nil "bool success~%string message~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetParam-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetParam-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetParam-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetParam)))
  'SetParam-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetParam)))
  'SetParam-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetParam)))
  "Returns string type for a service object of type '<SetParam>"
  "visual_processing/SetParam")