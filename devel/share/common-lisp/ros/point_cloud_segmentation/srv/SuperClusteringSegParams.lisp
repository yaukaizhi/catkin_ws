; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude SuperClusteringSegParams-request.msg.html

(cl:defclass <SuperClusteringSegParams-request> (roslisp-msg-protocol:ros-message)
  ((voxel_resolution
    :reader voxel_resolution
    :initarg :voxel_resolution
    :type cl:float
    :initform 0.0)
   (seed_resolution
    :reader seed_resolution
    :initarg :seed_resolution
    :type cl:float
    :initform 0.0)
   (color_importance
    :reader color_importance
    :initarg :color_importance
    :type cl:float
    :initform 0.0)
   (spatial_importance
    :reader spatial_importance
    :initarg :spatial_importance
    :type cl:float
    :initform 0.0)
   (normal_importance
    :reader normal_importance
    :initarg :normal_importance
    :type cl:float
    :initform 0.0)
   (threshold
    :reader threshold
    :initarg :threshold
    :type cl:float
    :initform 0.0)
   (rgb_color_space
    :reader rgb_color_space
    :initarg :rgb_color_space
    :type cl:boolean
    :initform cl:nil)
   (convexity_criterion
    :reader convexity_criterion
    :initarg :convexity_criterion
    :type cl:boolean
    :initform cl:nil)
   (adapt_lambda
    :reader adapt_lambda
    :initarg :adapt_lambda
    :type cl:boolean
    :initform cl:nil)
   (equalization
    :reader equalization
    :initarg :equalization
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SuperClusteringSegParams-request (<SuperClusteringSegParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuperClusteringSegParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuperClusteringSegParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<SuperClusteringSegParams-request> is deprecated: use point_cloud_segmentation-srv:SuperClusteringSegParams-request instead.")))

(cl:ensure-generic-function 'voxel_resolution-val :lambda-list '(m))
(cl:defmethod voxel_resolution-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:voxel_resolution-val is deprecated.  Use point_cloud_segmentation-srv:voxel_resolution instead.")
  (voxel_resolution m))

(cl:ensure-generic-function 'seed_resolution-val :lambda-list '(m))
(cl:defmethod seed_resolution-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:seed_resolution-val is deprecated.  Use point_cloud_segmentation-srv:seed_resolution instead.")
  (seed_resolution m))

(cl:ensure-generic-function 'color_importance-val :lambda-list '(m))
(cl:defmethod color_importance-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:color_importance-val is deprecated.  Use point_cloud_segmentation-srv:color_importance instead.")
  (color_importance m))

(cl:ensure-generic-function 'spatial_importance-val :lambda-list '(m))
(cl:defmethod spatial_importance-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:spatial_importance-val is deprecated.  Use point_cloud_segmentation-srv:spatial_importance instead.")
  (spatial_importance m))

(cl:ensure-generic-function 'normal_importance-val :lambda-list '(m))
(cl:defmethod normal_importance-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:normal_importance-val is deprecated.  Use point_cloud_segmentation-srv:normal_importance instead.")
  (normal_importance m))

(cl:ensure-generic-function 'threshold-val :lambda-list '(m))
(cl:defmethod threshold-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:threshold-val is deprecated.  Use point_cloud_segmentation-srv:threshold instead.")
  (threshold m))

(cl:ensure-generic-function 'rgb_color_space-val :lambda-list '(m))
(cl:defmethod rgb_color_space-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:rgb_color_space-val is deprecated.  Use point_cloud_segmentation-srv:rgb_color_space instead.")
  (rgb_color_space m))

(cl:ensure-generic-function 'convexity_criterion-val :lambda-list '(m))
(cl:defmethod convexity_criterion-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:convexity_criterion-val is deprecated.  Use point_cloud_segmentation-srv:convexity_criterion instead.")
  (convexity_criterion m))

(cl:ensure-generic-function 'adapt_lambda-val :lambda-list '(m))
(cl:defmethod adapt_lambda-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:adapt_lambda-val is deprecated.  Use point_cloud_segmentation-srv:adapt_lambda instead.")
  (adapt_lambda m))

(cl:ensure-generic-function 'equalization-val :lambda-list '(m))
(cl:defmethod equalization-val ((m <SuperClusteringSegParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:equalization-val is deprecated.  Use point_cloud_segmentation-srv:equalization instead.")
  (equalization m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuperClusteringSegParams-request>) ostream)
  "Serializes a message object of type '<SuperClusteringSegParams-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'voxel_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'seed_resolution))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'color_importance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'spatial_importance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'normal_importance))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'threshold))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'rgb_color_space) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'convexity_criterion) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'adapt_lambda) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'equalization) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuperClusteringSegParams-request>) istream)
  "Deserializes a message object of type '<SuperClusteringSegParams-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'voxel_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'seed_resolution) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'color_importance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'spatial_importance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'normal_importance) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'threshold) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'rgb_color_space) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'convexity_criterion) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'adapt_lambda) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'equalization) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuperClusteringSegParams-request>)))
  "Returns string type for a service object of type '<SuperClusteringSegParams-request>"
  "point_cloud_segmentation/SuperClusteringSegParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuperClusteringSegParams-request)))
  "Returns string type for a service object of type 'SuperClusteringSegParams-request"
  "point_cloud_segmentation/SuperClusteringSegParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuperClusteringSegParams-request>)))
  "Returns md5sum for a message object of type '<SuperClusteringSegParams-request>"
  "856257f6ec8c4470a3201718c51e1da6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuperClusteringSegParams-request)))
  "Returns md5sum for a message object of type 'SuperClusteringSegParams-request"
  "856257f6ec8c4470a3201718c51e1da6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuperClusteringSegParams-request>)))
  "Returns full string definition for message of type '<SuperClusteringSegParams-request>"
  (cl:format cl:nil "float32 voxel_resolution~%float32 seed_resolution~%float32 color_importance~%float32 spatial_importance~%float32 normal_importance~%float32 threshold~%bool rgb_color_space~%bool convexity_criterion~%bool adapt_lambda~%bool equalization~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuperClusteringSegParams-request)))
  "Returns full string definition for message of type 'SuperClusteringSegParams-request"
  (cl:format cl:nil "float32 voxel_resolution~%float32 seed_resolution~%float32 color_importance~%float32 spatial_importance~%float32 normal_importance~%float32 threshold~%bool rgb_color_space~%bool convexity_criterion~%bool adapt_lambda~%bool equalization~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuperClusteringSegParams-request>))
  (cl:+ 0
     4
     4
     4
     4
     4
     4
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuperClusteringSegParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SuperClusteringSegParams-request
    (cl:cons ':voxel_resolution (voxel_resolution msg))
    (cl:cons ':seed_resolution (seed_resolution msg))
    (cl:cons ':color_importance (color_importance msg))
    (cl:cons ':spatial_importance (spatial_importance msg))
    (cl:cons ':normal_importance (normal_importance msg))
    (cl:cons ':threshold (threshold msg))
    (cl:cons ':rgb_color_space (rgb_color_space msg))
    (cl:cons ':convexity_criterion (convexity_criterion msg))
    (cl:cons ':adapt_lambda (adapt_lambda msg))
    (cl:cons ':equalization (equalization msg))
))
;//! \htmlinclude SuperClusteringSegParams-response.msg.html

(cl:defclass <SuperClusteringSegParams-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass SuperClusteringSegParams-response (<SuperClusteringSegParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SuperClusteringSegParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SuperClusteringSegParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<SuperClusteringSegParams-response> is deprecated: use point_cloud_segmentation-srv:SuperClusteringSegParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SuperClusteringSegParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:success-val is deprecated.  Use point_cloud_segmentation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SuperClusteringSegParams-response>) ostream)
  "Serializes a message object of type '<SuperClusteringSegParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SuperClusteringSegParams-response>) istream)
  "Deserializes a message object of type '<SuperClusteringSegParams-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SuperClusteringSegParams-response>)))
  "Returns string type for a service object of type '<SuperClusteringSegParams-response>"
  "point_cloud_segmentation/SuperClusteringSegParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuperClusteringSegParams-response)))
  "Returns string type for a service object of type 'SuperClusteringSegParams-response"
  "point_cloud_segmentation/SuperClusteringSegParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SuperClusteringSegParams-response>)))
  "Returns md5sum for a message object of type '<SuperClusteringSegParams-response>"
  "856257f6ec8c4470a3201718c51e1da6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SuperClusteringSegParams-response)))
  "Returns md5sum for a message object of type 'SuperClusteringSegParams-response"
  "856257f6ec8c4470a3201718c51e1da6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SuperClusteringSegParams-response>)))
  "Returns full string definition for message of type '<SuperClusteringSegParams-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SuperClusteringSegParams-response)))
  "Returns full string definition for message of type 'SuperClusteringSegParams-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SuperClusteringSegParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SuperClusteringSegParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SuperClusteringSegParams-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SuperClusteringSegParams)))
  'SuperClusteringSegParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SuperClusteringSegParams)))
  'SuperClusteringSegParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SuperClusteringSegParams)))
  "Returns string type for a service object of type '<SuperClusteringSegParams>"
  "point_cloud_segmentation/SuperClusteringSegParams")