;; Auto-generated. Do not edit!


(when (boundp 'visual_processing::SetParam)
  (if (not (find-package "VISUAL_PROCESSING"))
    (make-package "VISUAL_PROCESSING"))
  (shadow 'SetParam (find-package "VISUAL_PROCESSING")))
(unless (find-package "VISUAL_PROCESSING::SETPARAM")
  (make-package "VISUAL_PROCESSING::SETPARAM"))
(unless (find-package "VISUAL_PROCESSING::SETPARAMREQUEST")
  (make-package "VISUAL_PROCESSING::SETPARAMREQUEST"))
(unless (find-package "VISUAL_PROCESSING::SETPARAMRESPONSE")
  (make-package "VISUAL_PROCESSING::SETPARAMRESPONSE"))

(in-package "ROS")





(defclass visual_processing::SetParamRequest
  :super ros::object
  :slots (_type _color ))

(defmethod visual_processing::SetParamRequest
  (:init
   (&key
    ((:type __type) "")
    ((:color __color) "")
    )
   (send-super :init)
   (setq _type (string __type))
   (setq _color (string __color))
   self)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:color
   (&optional __color)
   (if __color (setq _color __color)) _color)
  (:serialization-length
   ()
   (+
    ;; string _type
    4 (length _type)
    ;; string _color
    4 (length _color)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;; string _color
       (write-long (length _color) s) (princ _color s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _color
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _color (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass visual_processing::SetParamResponse
  :super ros::object
  :slots (_success _message ))

(defmethod visual_processing::SetParamResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass visual_processing::SetParam
  :super ros::object
  :slots ())

(setf (get visual_processing::SetParam :md5sum-) "9346153312ad52b853d2b74ee012923e")
(setf (get visual_processing::SetParam :datatype-) "visual_processing/SetParam")
(setf (get visual_processing::SetParam :request) visual_processing::SetParamRequest)
(setf (get visual_processing::SetParam :response) visual_processing::SetParamResponse)

(defmethod visual_processing::SetParamRequest
  (:response () (instance visual_processing::SetParamResponse :init)))

(setf (get visual_processing::SetParamRequest :md5sum-) "9346153312ad52b853d2b74ee012923e")
(setf (get visual_processing::SetParamRequest :datatype-) "visual_processing/SetParamRequest")
(setf (get visual_processing::SetParamRequest :definition-)
      "string type
string color
---
bool success
string message

")

(setf (get visual_processing::SetParamResponse :md5sum-) "9346153312ad52b853d2b74ee012923e")
(setf (get visual_processing::SetParamResponse :datatype-) "visual_processing/SetParamResponse")
(setf (get visual_processing::SetParamResponse :definition-)
      "string type
string color
---
bool success
string message

")



(provide :visual_processing/SetParam "9346153312ad52b853d2b74ee012923e")


