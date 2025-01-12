;; Auto-generated. Do not edit!


(when (boundp 'visual_patrol::SetTarget)
  (if (not (find-package "VISUAL_PATROL"))
    (make-package "VISUAL_PATROL"))
  (shadow 'SetTarget (find-package "VISUAL_PATROL")))
(unless (find-package "VISUAL_PATROL::SETTARGET")
  (make-package "VISUAL_PATROL::SETTARGET"))
(unless (find-package "VISUAL_PATROL::SETTARGETREQUEST")
  (make-package "VISUAL_PATROL::SETTARGETREQUEST"))
(unless (find-package "VISUAL_PATROL::SETTARGETRESPONSE")
  (make-package "VISUAL_PATROL::SETTARGETRESPONSE"))

(in-package "ROS")





(defclass visual_patrol::SetTargetRequest
  :super ros::object
  :slots (_data ))

(defmethod visual_patrol::SetTargetRequest
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

(defclass visual_patrol::SetTargetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod visual_patrol::SetTargetResponse
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

(defclass visual_patrol::SetTarget
  :super ros::object
  :slots ())

(setf (get visual_patrol::SetTarget :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get visual_patrol::SetTarget :datatype-) "visual_patrol/SetTarget")
(setf (get visual_patrol::SetTarget :request) visual_patrol::SetTargetRequest)
(setf (get visual_patrol::SetTarget :response) visual_patrol::SetTargetResponse)

(defmethod visual_patrol::SetTargetRequest
  (:response () (instance visual_patrol::SetTargetResponse :init)))

(setf (get visual_patrol::SetTargetRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get visual_patrol::SetTargetRequest :datatype-) "visual_patrol/SetTargetRequest")
(setf (get visual_patrol::SetTargetRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get visual_patrol::SetTargetResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get visual_patrol::SetTargetResponse :datatype-) "visual_patrol/SetTargetResponse")
(setf (get visual_patrol::SetTargetResponse :definition-)
      "string data
---
bool success
string message

")



(provide :visual_patrol/SetTarget "546971982e3fbbd5a41e60fb6432e357")


