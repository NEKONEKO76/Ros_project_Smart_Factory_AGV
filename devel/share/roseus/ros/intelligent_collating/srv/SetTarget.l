;; Auto-generated. Do not edit!


(when (boundp 'intelligent_collating::SetTarget)
  (if (not (find-package "INTELLIGENT_COLLATING"))
    (make-package "INTELLIGENT_COLLATING"))
  (shadow 'SetTarget (find-package "INTELLIGENT_COLLATING")))
(unless (find-package "INTELLIGENT_COLLATING::SETTARGET")
  (make-package "INTELLIGENT_COLLATING::SETTARGET"))
(unless (find-package "INTELLIGENT_COLLATING::SETTARGETREQUEST")
  (make-package "INTELLIGENT_COLLATING::SETTARGETREQUEST"))
(unless (find-package "INTELLIGENT_COLLATING::SETTARGETRESPONSE")
  (make-package "INTELLIGENT_COLLATING::SETTARGETRESPONSE"))

(in-package "ROS")





(defclass intelligent_collating::SetTargetRequest
  :super ros::object
  :slots (_data ))

(defmethod intelligent_collating::SetTargetRequest
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

(defclass intelligent_collating::SetTargetResponse
  :super ros::object
  :slots (_success _message ))

(defmethod intelligent_collating::SetTargetResponse
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

(defclass intelligent_collating::SetTarget
  :super ros::object
  :slots ())

(setf (get intelligent_collating::SetTarget :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get intelligent_collating::SetTarget :datatype-) "intelligent_collating/SetTarget")
(setf (get intelligent_collating::SetTarget :request) intelligent_collating::SetTargetRequest)
(setf (get intelligent_collating::SetTarget :response) intelligent_collating::SetTargetResponse)

(defmethod intelligent_collating::SetTargetRequest
  (:response () (instance intelligent_collating::SetTargetResponse :init)))

(setf (get intelligent_collating::SetTargetRequest :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get intelligent_collating::SetTargetRequest :datatype-) "intelligent_collating/SetTargetRequest")
(setf (get intelligent_collating::SetTargetRequest :definition-)
      "string data
---
bool success
string message

")

(setf (get intelligent_collating::SetTargetResponse :md5sum-) "546971982e3fbbd5a41e60fb6432e357")
(setf (get intelligent_collating::SetTargetResponse :datatype-) "intelligent_collating/SetTargetResponse")
(setf (get intelligent_collating::SetTargetResponse :definition-)
      "string data
---
bool success
string message

")



(provide :intelligent_collating/SetTarget "546971982e3fbbd5a41e60fb6432e357")


