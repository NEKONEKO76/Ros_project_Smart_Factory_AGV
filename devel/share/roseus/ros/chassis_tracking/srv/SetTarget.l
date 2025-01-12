;; Auto-generated. Do not edit!


(when (boundp 'chassis_tracking::SetTarget)
  (if (not (find-package "CHASSIS_TRACKING"))
    (make-package "CHASSIS_TRACKING"))
  (shadow 'SetTarget (find-package "CHASSIS_TRACKING")))
(unless (find-package "CHASSIS_TRACKING::SETTARGET")
  (make-package "CHASSIS_TRACKING::SETTARGET"))
(unless (find-package "CHASSIS_TRACKING::SETTARGETREQUEST")
  (make-package "CHASSIS_TRACKING::SETTARGETREQUEST"))
(unless (find-package "CHASSIS_TRACKING::SETTARGETRESPONSE")
  (make-package "CHASSIS_TRACKING::SETTARGETRESPONSE"))

(in-package "ROS")





(defclass chassis_tracking::SetTargetRequest
  :super ros::object
  :slots (_data ))

(defmethod chassis_tracking::SetTargetRequest
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

(defclass chassis_tracking::SetTargetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod chassis_tracking::SetTargetResponse
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

(defclass chassis_tracking::SetTarget
  :super ros::object
  :slots ())

(setf (get chassis_tracking::SetTarget :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get chassis_tracking::SetTarget :datatype-) "chassis_tracking/SetTarget")
(setf (get chassis_tracking::SetTarget :request) chassis_tracking::SetTargetRequest)
(setf (get chassis_tracking::SetTarget :response) chassis_tracking::SetTargetResponse)

(defmethod chassis_tracking::SetTargetRequest
  (:response () (instance chassis_tracking::SetTargetResponse :init)))

(setf (get chassis_tracking::SetTargetRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get chassis_tracking::SetTargetRequest :datatype-) "chassis_tracking/SetTargetRequest")
(setf (get chassis_tracking::SetTargetRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get chassis_tracking::SetTargetResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get chassis_tracking::SetTargetResponse :datatype-) "chassis_tracking/SetTargetResponse")
(setf (get chassis_tracking::SetTargetResponse :definition-)
      "string data
---
bool success
string message

")



(provide :chassis_tracking/SetTarget "546971982e3fbbd5a41e60fb6432e357")


