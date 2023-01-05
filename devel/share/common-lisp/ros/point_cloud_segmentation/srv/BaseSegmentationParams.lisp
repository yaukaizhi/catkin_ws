; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude BaseSegmentationParams-request.msg.html

(cl:defclass <BaseSegmentationParams-request> (roslisp-msg-protocol:ros-message)
  ((x_cutoff
    :reader x_cutoff
    :initarg :x_cutoff
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (y_cutoff
    :reader y_cutoff
    :initarg :y_cutoff
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (z_cutoff
    :reader z_cutoff
    :initarg :z_cutoff
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass BaseSegmentationParams-request (<BaseSegmentationParams-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaseSegmentationParams-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaseSegmentationParams-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<BaseSegmentationParams-request> is deprecated: use point_cloud_segmentation-srv:BaseSegmentationParams-request instead.")))

(cl:ensure-generic-function 'x_cutoff-val :lambda-list '(m))
(cl:defmethod x_cutoff-val ((m <BaseSegmentationParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:x_cutoff-val is deprecated.  Use point_cloud_segmentation-srv:x_cutoff instead.")
  (x_cutoff m))

(cl:ensure-generic-function 'y_cutoff-val :lambda-list '(m))
(cl:defmethod y_cutoff-val ((m <BaseSegmentationParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:y_cutoff-val is deprecated.  Use point_cloud_segmentation-srv:y_cutoff instead.")
  (y_cutoff m))

(cl:ensure-generic-function 'z_cutoff-val :lambda-list '(m))
(cl:defmethod z_cutoff-val ((m <BaseSegmentationParams-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:z_cutoff-val is deprecated.  Use point_cloud_segmentation-srv:z_cutoff instead.")
  (z_cutoff m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaseSegmentationParams-request>) ostream)
  "Serializes a message object of type '<BaseSegmentationParams-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'x_cutoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'x_cutoff))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'y_cutoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'y_cutoff))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'z_cutoff))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'z_cutoff))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaseSegmentationParams-request>) istream)
  "Deserializes a message object of type '<BaseSegmentationParams-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'x_cutoff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'x_cutoff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'y_cutoff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'y_cutoff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'z_cutoff) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'z_cutoff)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaseSegmentationParams-request>)))
  "Returns string type for a service object of type '<BaseSegmentationParams-request>"
  "point_cloud_segmentation/BaseSegmentationParamsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseSegmentationParams-request)))
  "Returns string type for a service object of type 'BaseSegmentationParams-request"
  "point_cloud_segmentation/BaseSegmentationParamsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaseSegmentationParams-request>)))
  "Returns md5sum for a message object of type '<BaseSegmentationParams-request>"
  "cc22b1ef630d46c7f989e768fadb8c56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaseSegmentationParams-request)))
  "Returns md5sum for a message object of type 'BaseSegmentationParams-request"
  "cc22b1ef630d46c7f989e768fadb8c56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaseSegmentationParams-request>)))
  "Returns full string definition for message of type '<BaseSegmentationParams-request>"
  (cl:format cl:nil "float32[] x_cutoff~%float32[] y_cutoff~%float32[] z_cutoff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaseSegmentationParams-request)))
  "Returns full string definition for message of type 'BaseSegmentationParams-request"
  (cl:format cl:nil "float32[] x_cutoff~%float32[] y_cutoff~%float32[] z_cutoff~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaseSegmentationParams-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'x_cutoff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'y_cutoff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'z_cutoff) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaseSegmentationParams-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BaseSegmentationParams-request
    (cl:cons ':x_cutoff (x_cutoff msg))
    (cl:cons ':y_cutoff (y_cutoff msg))
    (cl:cons ':z_cutoff (z_cutoff msg))
))
;//! \htmlinclude BaseSegmentationParams-response.msg.html

(cl:defclass <BaseSegmentationParams-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BaseSegmentationParams-response (<BaseSegmentationParams-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BaseSegmentationParams-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BaseSegmentationParams-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<BaseSegmentationParams-response> is deprecated: use point_cloud_segmentation-srv:BaseSegmentationParams-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <BaseSegmentationParams-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:success-val is deprecated.  Use point_cloud_segmentation-srv:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BaseSegmentationParams-response>) ostream)
  "Serializes a message object of type '<BaseSegmentationParams-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BaseSegmentationParams-response>) istream)
  "Deserializes a message object of type '<BaseSegmentationParams-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BaseSegmentationParams-response>)))
  "Returns string type for a service object of type '<BaseSegmentationParams-response>"
  "point_cloud_segmentation/BaseSegmentationParamsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseSegmentationParams-response)))
  "Returns string type for a service object of type 'BaseSegmentationParams-response"
  "point_cloud_segmentation/BaseSegmentationParamsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BaseSegmentationParams-response>)))
  "Returns md5sum for a message object of type '<BaseSegmentationParams-response>"
  "cc22b1ef630d46c7f989e768fadb8c56")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BaseSegmentationParams-response)))
  "Returns md5sum for a message object of type 'BaseSegmentationParams-response"
  "cc22b1ef630d46c7f989e768fadb8c56")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BaseSegmentationParams-response>)))
  "Returns full string definition for message of type '<BaseSegmentationParams-response>"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BaseSegmentationParams-response)))
  "Returns full string definition for message of type 'BaseSegmentationParams-response"
  (cl:format cl:nil "bool success~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BaseSegmentationParams-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BaseSegmentationParams-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BaseSegmentationParams-response
    (cl:cons ':success (success msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BaseSegmentationParams)))
  'BaseSegmentationParams-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BaseSegmentationParams)))
  'BaseSegmentationParams-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BaseSegmentationParams)))
  "Returns string type for a service object of type '<BaseSegmentationParams>"
  "point_cloud_segmentation/BaseSegmentationParams")