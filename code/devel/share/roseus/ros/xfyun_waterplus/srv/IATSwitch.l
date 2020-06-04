;; Auto-generated. Do not edit!


(when (boundp 'xfyun_waterplus::IATSwitch)
  (if (not (find-package "XFYUN_WATERPLUS"))
    (make-package "XFYUN_WATERPLUS"))
  (shadow 'IATSwitch (find-package "XFYUN_WATERPLUS")))
(unless (find-package "XFYUN_WATERPLUS::IATSWITCH")
  (make-package "XFYUN_WATERPLUS::IATSWITCH"))
(unless (find-package "XFYUN_WATERPLUS::IATSWITCHREQUEST")
  (make-package "XFYUN_WATERPLUS::IATSWITCHREQUEST"))
(unless (find-package "XFYUN_WATERPLUS::IATSWITCHRESPONSE")
  (make-package "XFYUN_WATERPLUS::IATSWITCHRESPONSE"))

(in-package "ROS")





(defclass xfyun_waterplus::IATSwitchRequest
  :super ros::object
  :slots (_active _duration ))

(defmethod xfyun_waterplus::IATSwitchRequest
  (:init
   (&key
    ((:active __active) nil)
    ((:duration __duration) 0)
    )
   (send-super :init)
   (setq _active __active)
   (setq _duration (round __duration))
   self)
  (:active
   (&optional __active)
   (if __active (setq _active __active)) _active)
  (:duration
   (&optional __duration)
   (if __duration (setq _duration __duration)) _duration)
  (:serialization-length
   ()
   (+
    ;; bool _active
    1
    ;; int32 _duration
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _active
       (if _active (write-byte -1 s) (write-byte 0 s))
     ;; int32 _duration
       (write-long _duration s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _active
     (setq _active (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _duration
     (setq _duration (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass xfyun_waterplus::IATSwitchResponse
  :super ros::object
  :slots ())

(defmethod xfyun_waterplus::IATSwitchResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass xfyun_waterplus::IATSwitch
  :super ros::object
  :slots ())

(setf (get xfyun_waterplus::IATSwitch :md5sum-) "d1f8595ffdb7d3156100a6358d5facc1")
(setf (get xfyun_waterplus::IATSwitch :datatype-) "xfyun_waterplus/IATSwitch")
(setf (get xfyun_waterplus::IATSwitch :request) xfyun_waterplus::IATSwitchRequest)
(setf (get xfyun_waterplus::IATSwitch :response) xfyun_waterplus::IATSwitchResponse)

(defmethod xfyun_waterplus::IATSwitchRequest
  (:response () (instance xfyun_waterplus::IATSwitchResponse :init)))

(setf (get xfyun_waterplus::IATSwitchRequest :md5sum-) "d1f8595ffdb7d3156100a6358d5facc1")
(setf (get xfyun_waterplus::IATSwitchRequest :datatype-) "xfyun_waterplus/IATSwitchRequest")
(setf (get xfyun_waterplus::IATSwitchRequest :definition-)
      "bool active
int32 duration
---
")

(setf (get xfyun_waterplus::IATSwitchResponse :md5sum-) "d1f8595ffdb7d3156100a6358d5facc1")
(setf (get xfyun_waterplus::IATSwitchResponse :datatype-) "xfyun_waterplus/IATSwitchResponse")
(setf (get xfyun_waterplus::IATSwitchResponse :definition-)
      "bool active
int32 duration
---
")



(provide :xfyun_waterplus/IATSwitch "d1f8595ffdb7d3156100a6358d5facc1")


