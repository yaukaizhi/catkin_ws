; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude ChangeSegmentationMethod-request.msg.html

(cl:defclass <ChangeSegmentationMethod-request> (roslisp-msg-protocol:ros-message)
  ((segmentation_method
    :reader segmentation_method
    :initarg :segmentation_method
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeSegmentationMethod-request (<ChangeSegmentationMethod-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeSegmentationMethod-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeSegmentationMethod-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<ChangeSegmentationMethod-request> is deprecated: use point_cloud_segmentation-srv:ChangeSegmentationMethod-request instead.")))

(cl:ensure-generic-function 'segmentation_method-val :lambda-list '(m))
(cl:defmethod segmentation_method-val ((m <ChangeSegmentationMethod-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:segmentation_method-val is deprecated.  Use point_cloud_segmentation-srv:segmentation_method instead.")
  (segmentation_method m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeSegmentationMethod-request>) ostream)
  "Serializes a message object of type '<ChangeSegmentationMethod-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'segmentation_method))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'segmentation_method))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeSegmentationMethod-request>) istream)
  "Deserializes a message object of type '<ChangeSegmentationMethod-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'segmentation_method) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'segmentation_method) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeSegmentationMethod-request>)))
  "Returns string type for a service object of type '<ChangeSegmentationMethod-request>"
  "point_cloud_segmentation/ChangeSegmentationMethodRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeSegmentationMethod-request)))
  "Returns string type for a service object of type 'ChangeSegmentationMethod-request"
  "point_cloud_segmentation/ChangeSegmentationMethodRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeSegmentationMethod-request>)))
  "Returns md5sum for a message object of type '<ChangeSegmentationMethod-request>"
  "0291f58b1b9fc66d8f5c8659995fd485")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeSegmentationMethod-request)))
  "Returns md5sum for a message object of type 'ChangeSegmentationMethod-request"
  "0291f58b1b9fc66d8f5c8659995fd485")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeSegmentationMethod-request>)))
  "Returns full string definition for message of type '<ChangeSegmentationMethod-request>"
  (cl:format cl:nil "string segmentation_method ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeSegmentationMethod-request)))
  "Returns full string definition for message of type 'ChangeSegmentationMethod-request"
  (cl:format cl:nil "string segmentation_method ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeSegmentationMethod-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'segmentation_method))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeSegmentationMethod-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeSegmentationMethod-request
    (cl:cons ':segmentation_method (segmentation_method msg))
))
;//! \htmlinclude ChangeSegmentationMethod-response.msg.html

(cl:defclass <ChangeSegmentationMethod-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass ChangeSegmentationMethod-response (<ChangeSegmentationMethod-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeSegmentationMethod-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeSegmentationMethod-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<ChangeSegmentationMethod-response> is deprecated: use point_cloud_segmentation-srv:ChangeSegmentationMethod-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ChangeSegmentationMethod-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:success-val is deprecated.  Use point_cloud_segmentation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeSegmentationMethod-response>) ostream)
  "Serializes a message object of type '<ChangeSegmentationMethod-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeSegmentationMethod-response>) istream)
  "Deserializes a message object of type '<ChangeSegmentationMethod-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeSegmentationMethod-response>)))
  "Returns string type for a service object of type '<ChangeSegmentationMethod-response>"
  "point_cloud_segmentation/ChangeSegmentationMethodResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeSegmentationMethod-response)))
  "Returns string type for a service object of type 'ChangeSegmentationMethod-response"
  "point_cloud_segmentation/ChangeSegmentationMethodResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeSegmentationMethod-response>)))
  "Returns md5sum for a message object of type '<ChangeSegmentationMethod-response>"
  "0291f58b1b9fc66d8f5c8659995fd485")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeSegmentationMethod-response)))
  "Returns md5sum for a message object of type 'ChangeSegmentationMethod-response"
  "0291f58b1b9fc66d8f5c8659995fd485")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeSegmentationMethod-response>)))
  "Returns full string definition for message of type '<ChangeSegmentationMethod-response>"
  (cl:format cl:nil "bool success ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeSegmentationMethod-response)))
  "Returns full string definition for message of type 'ChangeSegmentationMethod-response"
  (cl:format cl:nil "bool success ~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeSegmentationMethod-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeSegmentationMethod-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeSegmentationMethod-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeSegmentationMethod)))
  'ChangeSegmentationMethod-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeSegmentationMethod)))
  'ChangeSegmentationMethod-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeSegmentationMethod)))
  "Returns string type for a service object of type '<ChangeSegmentationMethod>"
  "point_cloud_segmentation/ChangeSegmentationMethod")