; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude RegionGrowingSegParams-request.msg.html

(cl:defclass <RegionGrowingSegParams-request> (roslisp-msg-protocol:ros-message)
  ((min_cluster_size
    :reader min_cluster_size
    :initarg :min_cluster_size
    :type cl:integer
    :initform 0)
   (max_cluster_size
    :reader max_cluster_size
    :initarg :max_cluster_size
    :type cl:integer
    :initform 0)
   (number_of_neighbors
    :reader number_of_neighbors
    :initarg :number_of_neighbors
    :type cl:integer
    :initform 0)
   (smoothness_threshold
    :reader smoothness_threshold
    :initarg :smoothness_threshold
    :type cl:float
    :initform 0.0)
   (curvature_threshold
    :reader curvature_threshold
    :initarg :curvature_threshold
    :type cl:float
    :initform 0.0))
)

(cl:defclass RegionGrowingSegParams-request (<RegionGrowingSegParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegionGrowingSegParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegionGrowingSegParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<RegionGrowingSegParams-request> is deprecated: use point_cloud_segmentation-srv:RegionGrowingSegParams-request instead.")))

(cl:ensure-generic-function 'min_cluster_size-val :lambda-list '(m))
(cl:defmethod min_cluster_size-val ((m <RegionGrowingSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:min_cluster_size-val is deprecated.  Use point_cloud_segmentation-srv:min_cluster_size instead.")
  (min_cluster_size m))

(cl:ensure-generic-function 'max_cluster_size-val :lambda-list '(m))
(cl:defmethod max_cluster_size-val ((m <RegionGrowingSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:max_cluster_size-val is deprecated.  Use point_cloud_segmentation-srv:max_cluster_size instead.")
  (max_cluster_size m))

(cl:ensure-generic-function 'number_of_neighbors-val :lambda-list '(m))
(cl:defmethod number_of_neighbors-val ((m <RegionGrowingSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:number_of_neighbors-val is deprecated.  Use point_cloud_segmentation-srv:number_of_neighbors instead.")
  (number_of_neighbors m))

(cl:ensure-generic-function 'smoothness_threshold-val :lambda-list '(m))
(cl:defmethod smoothness_threshold-val ((m <RegionGrowingSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:smoothness_threshold-val is deprecated.  Use point_cloud_segmentation-srv:smoothness_threshold instead.")
  (smoothness_threshold m))

(cl:ensure-generic-function 'curvature_threshold-val :lambda-list '(m))
(cl:defmethod curvature_threshold-val ((m <RegionGrowingSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:curvature_threshold-val is deprecated.  Use point_cloud_segmentation-srv:curvature_threshold instead.")
  (curvature_threshold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegionGrowingSegParams-request>) ostream)
  "Serializes a message object of type '<RegionGrowingSegParams-request>"
  (cl:let* ((signed (cl:slot-value msg 'min_cluster_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'max_cluster_size)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'number_of_neighbors)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'smoothness_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'curvature_threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegionGrowingSegParams-request>) istream)
  "Deserializes a message object of type '<RegionGrowingSegParams-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'min_cluster_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_cluster_size) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'number_of_neighbors) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'smoothness_threshold) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'curvature_threshold) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegionGrowingSegParams-request>)))
  "Returns string type for a service object of type '<RegionGrowingSegParams-request>"
  "point_cloud_segmentation/RegionGrowingSegParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegionGrowingSegParams-request)))
  "Returns string type for a service object of type 'RegionGrowingSegParams-request"
  "point_cloud_segmentation/RegionGrowingSegParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegionGrowingSegParams-request>)))
  "Returns md5sum for a message object of type '<RegionGrowingSegParams-request>"
  "38336d175b585d3b451f02cd0a82d0d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegionGrowingSegParams-request)))
  "Returns md5sum for a message object of type 'RegionGrowingSegParams-request"
  "38336d175b585d3b451f02cd0a82d0d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegionGrowingSegParams-request>)))
  "Returns full string definition for message of type '<RegionGrowingSegParams-request>"
  (cl:format cl:nil "int32 min_cluster_size~%int32 max_cluster_size~%int32 number_of_neighbors~%float32 smoothness_threshold~%float32 curvature_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegionGrowingSegParams-request)))
  "Returns full string definition for message of type 'RegionGrowingSegParams-request"
  (cl:format cl:nil "int32 min_cluster_size~%int32 max_cluster_size~%int32 number_of_neighbors~%float32 smoothness_threshold~%float32 curvature_threshold~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegionGrowingSegParams-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegionGrowingSegParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'RegionGrowingSegParams-request
    (cl:cons ':min_cluster_size (min_cluster_size msg))
    (cl:cons ':max_cluster_size (max_cluster_size msg))
    (cl:cons ':number_of_neighbors (number_of_neighbors msg))
    (cl:cons ':smoothness_threshold (smoothness_threshold msg))
    (cl:cons ':curvature_threshold (curvature_threshold msg))
))
;//! \htmlinclude RegionGrowingSegParams-response.msg.html

(cl:defclass <RegionGrowingSegParams-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass RegionGrowingSegParams-response (<RegionGrowingSegParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RegionGrowingSegParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RegionGrowingSegParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<RegionGrowingSegParams-response> is deprecated: use point_cloud_segmentation-srv:RegionGrowingSegParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <RegionGrowingSegParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:success-val is deprecated.  Use point_cloud_segmentation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RegionGrowingSegParams-response>) ostream)
  "Serializes a message object of type '<RegionGrowingSegParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RegionGrowingSegParams-response>) istream)
  "Deserializes a message object of type '<RegionGrowingSegParams-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RegionGrowingSegParams-response>)))
  "Returns string type for a service object of type '<RegionGrowingSegParams-response>"
  "point_cloud_segmentation/RegionGrowingSegParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegionGrowingSegParams-response)))
  "Returns string type for a service object of type 'RegionGrowingSegParams-response"
  "point_cloud_segmentation/RegionGrowingSegParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RegionGrowingSegParams-response>)))
  "Returns md5sum for a message object of type '<RegionGrowingSegParams-response>"
  "38336d175b585d3b451f02cd0a82d0d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RegionGrowingSegParams-response)))
  "Returns md5sum for a message object of type 'RegionGrowingSegParams-response"
  "38336d175b585d3b451f02cd0a82d0d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RegionGrowingSegParams-response>)))
  "Returns full string definition for message of type '<RegionGrowingSegParams-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RegionGrowingSegParams-response)))
  "Returns full string definition for message of type 'RegionGrowingSegParams-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RegionGrowingSegParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RegionGrowingSegParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'RegionGrowingSegParams-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'RegionGrowingSegParams)))
  'RegionGrowingSegParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'RegionGrowingSegParams)))
  'RegionGrowingSegParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RegionGrowingSegParams)))
  "Returns string type for a service object of type '<RegionGrowingSegParams>"
  "point_cloud_segmentation/RegionGrowingSegParams")