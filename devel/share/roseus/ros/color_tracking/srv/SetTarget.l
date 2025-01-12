;; Auto-generated. Do not edit!


(when (boundp 'color_tracking::SetTarget)
  (if (not (find-package "COLOR_TRACKING"))
    (make-package "COLOR_TRACKING"))
  (shadow 'SetTarget (find-package "COLOR_TRACKING")))
(unless (find-package "COLOR_TRACKING::SETTARGET")
  (make-package "COLOR_TRACKING::SETTARGET"))
(unless (find-package "COLOR_TRACKING::SETTARGETREQUEST")
  (make-package "COLOR_TRACKING::SETTARGETREQUEST"))
(unless (find-package "COLOR_TRACKING::SETTARGETRESPONSE")
  (make-package "COLOR_TRACKING::SETTARGETRESPONSE"))

(in-package "ROS")





(defclass color_tracking::SetTargetRequest
  :super ros::object
  :slots (_data ))

(defmethod color_tracking::SetTargetRequest
  (:init
   (&key
    ((:data __data) "")
    )
   (send-super :init)
   (setq _data (string __data))
   self)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; string _data
    4 (length _data)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _data
       (write-long (length _data) s) (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _data
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _data (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass color_tracking::SetTargetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod color_tracking::SetTargetResponse
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

(defclass color_tracking::SetTarget
  :super ros::object
  :slots ())

(setf (get color_tracking::SetTarget :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get color_tracking::SetTarget :datatype-) "color_tracking/SetTarget")
(setf (get color_tracking::SetTarget :request) color_tracking::SetTargetRequest)
(setf (get color_tracking::SetTarget :response) color_tracking::SetTargetResponse)

(defmethod color_tracking::SetTargetRequest
  (:response () (instance color_tracking::SetTargetResponse :init)))

(setf (get color_tracking::SetTargetRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get color_tracking::SetTargetRequest :datatype-) "color_tracking/SetTargetRequest")
(setf (get color_tracking::SetTargetRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get color_tracking::SetTargetResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get color_tracking::SetTargetResponse :datatype-) "color_tracking/SetTargetResponse")
(setf (get color_tracking::SetTargetResponse :definition-)
      "string data
---
bool success
string message

")



(provide :color_tracking/SetTarget "546971982e3fbbd5a41e60fb6432e357")


