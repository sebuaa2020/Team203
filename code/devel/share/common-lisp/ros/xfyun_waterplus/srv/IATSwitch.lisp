; Auto-generated. Do not edit!


(cl:in-package xfyun_waterplus-srv)


;//! \htmlinclude IATSwitch-request.msg.html

(cl:defclass <IATSwitch-request> (roslisp-msg-protocol:ros-message)
  ((active
    :reader active
    :initarg :active
    :type cl:boolean
    :initform cl:nil)
   (duration
    :reader duration
    :initarg :duration
    :type cl:integer
    :initform 0))
)

(cl:defclass IATSwitch-request (<IATSwitch-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IATSwitch-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IATSwitch-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xfyun_waterplus-srv:<IATSwitch-request> is deprecated: use xfyun_waterplus-srv:IATSwitch-request instead.")))

(cl:ensure-generic-function 'active-val :lambda-list '(m))
(cl:defmethod active-val ((m <IATSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xfyun_waterplus-srv:active-val is deprecated.  Use xfyun_waterplus-srv:active instead.")
  (active m))

(cl:ensure-generic-function 'duration-val :lambda-list '(m))
(cl:defmethod duration-val ((m <IATSwitch-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader xfyun_waterplus-srv:duration-val is deprecated.  Use xfyun_waterplus-srv:duration instead.")
  (duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IATSwitch-request>) ostream)
  "Serializes a message object of type '<IATSwitch-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'active) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'duration)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IATSwitch-request>) istream)
  "Deserializes a message object of type '<IATSwitch-request>"
    (cl:setf (cl:slot-value msg 'active) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'duration) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IATSwitch-request>)))
  "Returns string type for a service object of type '<IATSwitch-request>"
  "xfyun_waterplus/IATSwitchRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IATSwitch-request)))
  "Returns string type for a service object of type 'IATSwitch-request"
  "xfyun_waterplus/IATSwitchRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IATSwitch-request>)))
  "Returns md5sum for a message object of type '<IATSwitch-request>"
  "d1f8595ffdb7d3156100a6358d5facc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IATSwitch-request)))
  "Returns md5sum for a message object of type 'IATSwitch-request"
  "d1f8595ffdb7d3156100a6358d5facc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IATSwitch-request>)))
  "Returns full string definition for message of type '<IATSwitch-request>"
  (cl:format cl:nil "bool active~%int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IATSwitch-request)))
  "Returns full string definition for message of type 'IATSwitch-request"
  (cl:format cl:nil "bool active~%int32 duration~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IATSwitch-request>))
  (cl:+ 0
     1
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IATSwitch-request>))
  "Converts a ROS message object to a list"
  (cl:list 'IATSwitch-request
    (cl:cons ':active (active msg))
    (cl:cons ':duration (duration msg))
))
;//! \htmlinclude IATSwitch-response.msg.html

(cl:defclass <IATSwitch-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass IATSwitch-response (<IATSwitch-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IATSwitch-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IATSwitch-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name xfyun_waterplus-srv:<IATSwitch-response> is deprecated: use xfyun_waterplus-srv:IATSwitch-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IATSwitch-response>) ostream)
  "Serializes a message object of type '<IATSwitch-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IATSwitch-response>) istream)
  "Deserializes a message object of type '<IATSwitch-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IATSwitch-response>)))
  "Returns string type for a service object of type '<IATSwitch-response>"
  "xfyun_waterplus/IATSwitchResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IATSwitch-response)))
  "Returns string type for a service object of type 'IATSwitch-response"
  "xfyun_waterplus/IATSwitchResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IATSwitch-response>)))
  "Returns md5sum for a message object of type '<IATSwitch-response>"
  "d1f8595ffdb7d3156100a6358d5facc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IATSwitch-response)))
  "Returns md5sum for a message object of type 'IATSwitch-response"
  "d1f8595ffdb7d3156100a6358d5facc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IATSwitch-response>)))
  "Returns full string definition for message of type '<IATSwitch-response>"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IATSwitch-response)))
  "Returns full string definition for message of type 'IATSwitch-response"
  (cl:format cl:nil "~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IATSwitch-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IATSwitch-response>))
  "Converts a ROS message object to a list"
  (cl:list 'IATSwitch-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'IATSwitch)))
  'IATSwitch-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'IATSwitch)))
  'IATSwitch-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IATSwitch)))
  "Returns string type for a service object of type '<IATSwitch>"
  "xfyun_waterplus/IATSwitch")