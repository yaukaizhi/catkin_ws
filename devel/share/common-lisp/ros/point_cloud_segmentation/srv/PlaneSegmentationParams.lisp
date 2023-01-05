; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude PlaneSegmentationParams-request.msg.html

(cl:defclass <PlaneSegmentationParams-request> (roslisp-msg-protocol:ros-message)
  ((inlier_threshold
    :reader inlier_threshold
    :initarg :inlier_threshold
    :type cl:float
    :initform 0.0)
   (max_iters
    :reader max_iters
    :initarg :max_iters
    :type cl:integer
    :initform 0))
)

(cl:defclass PlaneSegmentationParams-request (<PlaneSegmentationParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaneSegmentationParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaneSegmentationParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<PlaneSegmentationParams-request> is deprecated: use point_cloud_segmentation-srv:PlaneSegmentationParams-request instead.")))

(cl:ensure-generic-function 'inlier_threshold-val :lambda-list '(m))
(cl:defmethod inlier_threshold-val ((m <PlaneSegmentationParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:inlier_threshold-val is deprecated.  Use point_cloud_segmentation-srv:inlier_threshold instead.")
  (inlier_threshold m))

(cl:ensure-generic-function 'max_iters-val :lambda-list '(m))
(cl:defmethod max_iters-val ((m <PlaneSegmentationParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:max_iters-val is deprecated.  Use point_cloud_segmentation-srv:max_iters instead.")
  (max_iters m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaneSegmentationParams-request>) ostream)
  "Serializes a message object of type '<PlaneSegmentationParams-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'inlier_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let* ((signed (cl:slot-value msg 'max_iters)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaneSegmentationParams-request>) istream)
  "Deserializes a message object of type '<PlaneSegmentationParams-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'inlier_threshold) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_iters) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaneSegmentationParams-request>)))
  "Returns string type for a service object of type '<PlaneSegmentationParams-request>"
  "point_cloud_segmentation/PlaneSegmentationParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneSegmentationParams-request)))
  "Returns string type for a service object of type 'PlaneSegmentationParams-request"
  "point_cloud_segmentation/PlaneSegmentationParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaneSegmentationParams-request>)))
  "Returns md5sum for a message object of type '<PlaneSegmentationParams-request>"
  "d02ed7e78b432c5e664e517844ee3d93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaneSegmentationParams-request)))
  "Returns md5sum for a message object of type 'PlaneSegmentationParams-request"
  "d02ed7e78b432c5e664e517844ee3d93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaneSegmentationParams-request>)))
  "Returns full string definition for message of type '<PlaneSegmentationParams-request>"
  (cl:format cl:nil "float32 inlier_threshold~%int32 max_iters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaneSegmentationParams-request)))
  "Returns full string definition for message of type 'PlaneSegmentationParams-request"
  (cl:format cl:nil "float32 inlier_threshold~%int32 max_iters~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaneSegmentationParams-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaneSegmentationParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaneSegmentationParams-request
    (cl:cons ':inlier_threshold (inlier_threshold msg))
    (cl:cons ':max_iters (max_iters msg))
))
;//! \htmlinclude PlaneSegmentationParams-response.msg.html

(cl:defclass <PlaneSegmentationParams-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PlaneSegmentationParams-response (<PlaneSegmentationParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlaneSegmentationParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlaneSegmentationParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<PlaneSegmentationParams-response> is deprecated: use point_cloud_segmentation-srv:PlaneSegmentationParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlaneSegmentationParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:success-val is deprecated.  Use point_cloud_segmentation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlaneSegmentationParams-response>) ostream)
  "Serializes a message object of type '<PlaneSegmentationParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlaneSegmentationParams-response>) istream)
  "Deserializes a message object of type '<PlaneSegmentationParams-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlaneSegmentationParams-response>)))
  "Returns string type for a service object of type '<PlaneSegmentationParams-response>"
  "point_cloud_segmentation/PlaneSegmentationParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneSegmentationParams-response)))
  "Returns string type for a service object of type 'PlaneSegmentationParams-response"
  "point_cloud_segmentation/PlaneSegmentationParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlaneSegmentationParams-response>)))
  "Returns md5sum for a message object of type '<PlaneSegmentationParams-response>"
  "d02ed7e78b432c5e664e517844ee3d93")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlaneSegmentationParams-response)))
  "Returns md5sum for a message object of type 'PlaneSegmentationParams-response"
  "d02ed7e78b432c5e664e517844ee3d93")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlaneSegmentationParams-response>)))
  "Returns full string definition for message of type '<PlaneSegmentationParams-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlaneSegmentationParams-response)))
  "Returns full string definition for message of type 'PlaneSegmentationParams-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlaneSegmentationParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlaneSegmentationParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlaneSegmentationParams-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlaneSegmentationParams)))
  'PlaneSegmentationParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlaneSegmentationParams)))
  'PlaneSegmentationParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlaneSegmentationParams)))
  "Returns string type for a service object of type '<PlaneSegmentationParams>"
  "point_cloud_segmentation/PlaneSegmentationParams")