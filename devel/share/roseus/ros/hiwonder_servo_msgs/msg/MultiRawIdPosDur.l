;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::MultiRawIdPosDur)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'MultiRawIdPosDur (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::MULTIRAWIDPOSDUR")
  (make-package "HIWONDER_SERVO_MSGS::MULTIRAWIDPOSDUR"))

(in-package "ROS")
;;//! \htmlinclude MultiRawIdPosDur.msg.html


(defclass hiwonder_servo_msgs::MultiRawIdPosDur
  :super ros::object
  :slots (_id_pos_dur_list ))

(defmethod hiwonder_servo_msgs::MultiRawIdPosDur
  (:init
   (&key
    ((:id_pos_dur_list __id_pos_dur_list) (let (r) (dotimes (i 0) (push (instance hiwonder_servo_msgs::RawIdPosDur :init) r)) r))
    )
   (send-super :init)
   (setq _id_pos_dur_list __id_pos_dur_list)
   self)
  (:id_pos_dur_list
   (&rest __id_pos_dur_list)
   (if (keywordp (car __id_pos_dur_list))
       (send* _id_pos_dur_list __id_pos_dur_list)
     (progn
       (if __id_pos_dur_list (setq _id_pos_dur_list (car __id_pos_dur_list)))
       _id_pos_dur_list)))
  (:serialization-length
   ()
   (+
    ;; hiwonder_servo_msgs/RawIdPosDur[] _id_pos_dur_list
    (apply #'+ (send-all _id_pos_dur_list :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; hiwonder_servo_msgs/RawIdPosDur[] _id_pos_dur_list
     (write-long (length _id_pos_dur_list) s)
     (dolist (elem _id_pos_dur_list)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; hiwonder_servo_msgs/RawIdPosDur[] _id_pos_dur_list
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _id_pos_dur_list (let (r) (dotimes (i n) (push (instance hiwonder_servo_msgs::RawIdPosDur :init) r)) r))
     (dolist (elem- _id_pos_dur_list)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::MultiRawIdPosDur :md5sum-) "219f46020f0bb7e7755eb26cd4b971ed")
(setf (get hiwonder_servo_msgs::MultiRawIdPosDur :datatype-) "hiwonder_servo_msgs/MultiRawIdPosDur")
(setf (get hiwonder_servo_msgs::MultiRawIdPosDur :definition-)
      "RawIdPosDur[] id_pos_dur_list
================================================================================
MSG: hiwonder_servo_msgs/RawIdPosDur
uint8 id
uint16 position
uint16 duration

")



(provide :hiwonder_servo_msgs/MultiRawIdPosDur "219f46020f0bb7e7755eb26cd4b971ed")


