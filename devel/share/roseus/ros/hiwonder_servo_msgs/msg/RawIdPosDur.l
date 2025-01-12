;; Auto-generated. Do not edit!


(when (boundp 'hiwonder_servo_msgs::RawIdPosDur)
  (if (not (find-package "HIWONDER_SERVO_MSGS"))
    (make-package "HIWONDER_SERVO_MSGS"))
  (shadow 'RawIdPosDur (find-package "HIWONDER_SERVO_MSGS")))
(unless (find-package "HIWONDER_SERVO_MSGS::RAWIDPOSDUR")
  (make-package "HIWONDER_SERVO_MSGS::RAWIDPOSDUR"))

(in-package "ROS")
;;//! \htmlinclude RawIdPosDur.msg.html


(defclass hiwonder_servo_msgs::RawIdPosDur
  :super ros::object
  :slots (_id _position _duration ))

(defmethod hiwonder_servo_msgs::RawIdPosDur
  (:init
   (&key
    ((:id __id) 0)
    ((:position __position) 0)
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _id (round __id))
   (setq _position (round __position))
   (setq _duration (round __duration))
   self)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; uint8 _id
    1
    ;; uint16 _position
    2
    ;; uint16 _duration
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _id
       (write-byte _id s)
     ;; uint16 _position
       (write-word _position s)
     ;; uint16 _duration
       (write-word _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _id
     (setq _id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _position
     (setq _position (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _duration
     (setq _duration (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get hiwonder_servo_msgs::RawIdPosDur :md5sum-) "ee63665fa0c79998dcae740d86109b84")
(setf (get hiwonder_servo_msgs::RawIdPosDur :datatype-) "hiwonder_servo_msgs/RawIdPosDur")
(setf (get hiwonder_servo_msgs::RawIdPosDur :definition-)
      "uint8 id
uint16 position
uint16 duration

")



(provide :hiwonder_servo_msgs/RawIdPosDur "ee63665fa0c79998dcae740d86109b84")


