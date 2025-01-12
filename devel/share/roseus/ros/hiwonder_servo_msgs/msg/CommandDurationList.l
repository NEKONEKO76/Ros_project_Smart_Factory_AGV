;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::CommandDurationList)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'CommandDurationList (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::COMMANDDURATIONLIST")
  (make-package "HIWONDER_SERVO_MSGS::COMMANDDURATIONLIST"))

(in-package "ROS")
;;//! \htmlinclude CommandDurationList.msg.html


(defclass hiwonder_servo_msgs::CommandDurationList
  :super ros::object
  :slots (_duration _ids _positions ))

(defmethod hiwonder_servo_msgs::CommandDurationList
  (:init
   (&key
    ((:duration __duration) 0.0)
    ((:ids __ids) (make-array 0 :initial-element 0 :element-type :integer))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _duration (float __duration))
   (setq _ids __ids)
   (setq _positions __positions)
   self)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:ids
   (&optional __ids)
   (if __ids (setq _ids __ids)) _ids)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; float64 _duration
    8
    ;; uint16[] _ids
    (* 2    (length _ids)) 4
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _duration
       (sys::poke _duration (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16[] _ids
     (write-long (length _ids) s)
     (dotimes (i (length _ids))
       (write-word (elt _ids i) s)
       )
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _duration
     (setq _duration (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16[] _ids
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ids (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _ids i) (sys::peek buf ptr- :short)) (incf ptr- 2)
     ))
   ;; float64[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::CommandDurationList :md5sum-) "ee846be6e4a1d12d4044e7694b9b051b")
(setf (get hiwonder_servo_msgs::CommandDurationList :datatype-) "hiwonder_servo_msgs/CommandDurationList")
(setf (get hiwonder_servo_msgs::CommandDurationList :definition-)
      "float64 duration
uint16[] ids
float64[] positions
")



(provide :hiwonder_servo_msgs/CommandDurationList "ee846be6e4a1d12d4044e7694b9b051b")


