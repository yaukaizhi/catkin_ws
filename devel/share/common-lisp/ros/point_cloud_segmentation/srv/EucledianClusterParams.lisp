; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude EucledianClusterParams-request.msg.html

(cl:defclass <EucledianClusterParams-request> (roslisp-msg-protocol:ros-message)
  ((inlier_threshold
    :reader inlier_threshold
    :initarg :inlier_threshold
    :type cl:float
    :initform 0.0)
   (max_iters
    :reader max_iters
    :initarg :max_iters
    :type cl:integer
    :initform 0)
   (leaf_size
    :reader leaf_size
    :initarg :leaf_size
    :type cl:float
    :initform 0.0)
   (min_cluster_size
    :reader min_cluster_size
    :initarg :min_cluster_size
    :type cl:integer
    :initform 0)
   (max_cluster_size
    :reader max_cluster_size
    :initarg :max_cluster_size
    :type cl:integer
    :initform 0)
   (cluster_tolerance
    :reader cluster_tolerance
    :initarg :cluster_tolerance
    :type cl:float
    :initform 0.0))
)

(cl:defclass EucledianClusterParams-request (<EucledianClusterParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EucledianClusterParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EucledianClusterParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<EucledianClusterParams-request> is deprecated: use point_cloud_segmentation-srv:EucledianClusterParams-request instead.")))

(cl:ensure-generic-function 'inlier_threshold-val :lambda-list '(m))
(cl:defmethod inlier_threshold-val ((m <EucledianClusterParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:inlier_threshold-val is deprecated.  Use point_cloud_segmentation-srv:inlier_threshold instead.")
  (inlier_threshold m))

(cl:ensure-generic-function 'max_iters-val :lambda-list '(m))
(cl:defmethod max_iters-val ((m <EucledianClusterParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:max_iters-val is deprecated.  Use point_cloud_segmentation-srv:max_iters instead.")
  (max_iters m))

(cl:ensure-generic-function 'leaf_size-val :lambda-list '(m))
(cl:defmethod leaf_size-val ((m <EucledianClusterParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:leaf_size-val is deprecated.  Use point_cloud_segmentation-srv:leaf_size instead.")
  (leaf_size m))

(cl:ensure-generic-function 'min_cluster_size-val :lambda-list '(m))
(cl:defmethod min_cluster_size-val ((m <EucledianClusterParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:min_cluster_size-val is deprecated.  Use point_cloud_segmentation-srv:min_cluster_size instead.")
  (min_cluster_size m))

(cl:ensure-generic-function 'max_cluster_size-val :lambda-list '(m))
(cl:defmethod max_cluster_size-val ((m <EucledianClusterParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:max_cluster_size-val is deprecated.  Use point_cloud_segmentation-srv:max_cluster_size instead.")
  (max_cluster_size m))

(cl:ensure-generic-function 'cluster_tolerance-val :lambda-list '(m))
(cl:defmethod cluster_tolerance-val ((m <EucledianClusterParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:cluster_tolerance-val is deprecated.  Use point_cloud_segmentation-srv:cluster_tolerance instead.")
  (cluster_tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EucledianClusterParams-request>) ostream)
  "Serializes a message object of type '<EucledianClusterParams-request>"
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'leaf_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
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
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'cluster_tolerance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EucledianClusterParams-request>) istream)
  "Deserializes a message object of type '<EucledianClusterParams-request>"
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leaf_size) (roslisp-utils:decode-single-float-bits bits)))
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
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'cluster_tolerance) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EucledianClusterParams-request>)))
  "Returns string type for a service object of type '<EucledianClusterParams-request>"
  "point_cloud_segmentation/EucledianClusterParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EucledianClusterParams-request)))
  "Returns string type for a service object of type 'EucledianClusterParams-request"
  "point_cloud_segmentation/EucledianClusterParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EucledianClusterParams-request>)))
  "Returns md5sum for a message object of type '<EucledianClusterParams-request>"
  "d48de43a8ae594a80e6df131e81e4f77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EucledianClusterParams-request)))
  "Returns md5sum for a message object of type 'EucledianClusterParams-request"
  "d48de43a8ae594a80e6df131e81e4f77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EucledianClusterParams-request>)))
  "Returns full string definition for message of type '<EucledianClusterParams-request>"
  (cl:format cl:nil "float32 inlier_threshold~%int32 max_iters~%float32 leaf_size~%int32 min_cluster_size~%int32 max_cluster_size~%float32 cluster_tolerance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EucledianClusterParams-request)))
  "Returns full string definition for message of type 'EucledianClusterParams-request"
  (cl:format cl:nil "float32 inlier_threshold~%int32 max_iters~%float32 leaf_size~%int32 min_cluster_size~%int32 max_cluster_size~%float32 cluster_tolerance~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EucledianClusterParams-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EucledianClusterParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EucledianClusterParams-request
    (cl:cons ':inlier_threshold (inlier_threshold msg))
    (cl:cons ':max_iters (max_iters msg))
    (cl:cons ':leaf_size (leaf_size msg))
    (cl:cons ':min_cluster_size (min_cluster_size msg))
    (cl:cons ':max_cluster_size (max_cluster_size msg))
    (cl:cons ':cluster_tolerance (cluster_tolerance msg))
))
;//! \htmlinclude EucledianClusterParams-response.msg.html

(cl:defclass <EucledianClusterParams-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass EucledianClusterParams-response (<EucledianClusterParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EucledianClusterParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EucledianClusterParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<EucledianClusterParams-response> is deprecated: use point_cloud_segmentation-srv:EucledianClusterParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <EucledianClusterParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:success-val is deprecated.  Use point_cloud_segmentation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EucledianClusterParams-response>) ostream)
  "Serializes a message object of type '<EucledianClusterParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EucledianClusterParams-response>) istream)
  "Deserializes a message object of type '<EucledianClusterParams-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EucledianClusterParams-response>)))
  "Returns string type for a service object of type '<EucledianClusterParams-response>"
  "point_cloud_segmentation/EucledianClusterParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EucledianClusterParams-response)))
  "Returns string type for a service object of type 'EucledianClusterParams-response"
  "point_cloud_segmentation/EucledianClusterParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EucledianClusterParams-response>)))
  "Returns md5sum for a message object of type '<EucledianClusterParams-response>"
  "d48de43a8ae594a80e6df131e81e4f77")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EucledianClusterParams-response)))
  "Returns md5sum for a message object of type 'EucledianClusterParams-response"
  "d48de43a8ae594a80e6df131e81e4f77")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EucledianClusterParams-response>)))
  "Returns full string definition for message of type '<EucledianClusterParams-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EucledianClusterParams-response)))
  "Returns full string definition for message of type 'EucledianClusterParams-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EucledianClusterParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EucledianClusterParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EucledianClusterParams-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EucledianClusterParams)))
  'EucledianClusterParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EucledianClusterParams)))
  'EucledianClusterParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EucledianClusterParams)))
  "Returns string type for a service object of type '<EucledianClusterParams>"
  "point_cloud_segmentation/EucledianClusterParams")