; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-msg)


;//! \htmlinclude SegmentedPointCloud.msg.html

(cl:defclass <SegmentedPointCloud> (roslisp-msg-protocol:ros-message)
  ((colored_cloud
    :reader colored_cloud
    :initarg :colored_cloud
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2))
   (segmented_clouds
    :reader segmented_clouds
    :initarg :segmented_clouds
    :type (cl:vector sensor_msgs-msg:PointCloud2)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:PointCloud2 :initial-element (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
   (Indices
    :reader Indices
    :initarg :Indices
    :type (cl:vector pcl_msgs-msg:PointIndices)
   :initform (cl:make-array 0 :element-type 'pcl_msgs-msg:PointIndices :initial-element (cl:make-instance 'pcl_msgs-msg:PointIndices))))
)

(cl:defclass SegmentedPointCloud (<SegmentedPointCloud>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentedPointCloud>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentedPointCloud)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-msg:<SegmentedPointCloud> is deprecated: use point_cloud_segmentation-msg:SegmentedPointCloud instead.")))

(cl:ensure-generic-function 'colored_cloud-val :lambda-list '(m))
(cl:defmethod colored_cloud-val ((m <SegmentedPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-msg:colored_cloud-val is deprecated.  Use point_cloud_segmentation-msg:colored_cloud instead.")
  (colored_cloud m))

(cl:ensure-generic-function 'segmented_clouds-val :lambda-list '(m))
(cl:defmethod segmented_clouds-val ((m <SegmentedPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-msg:segmented_clouds-val is deprecated.  Use point_cloud_segmentation-msg:segmented_clouds instead.")
  (segmented_clouds m))

(cl:ensure-generic-function 'Indices-val :lambda-list '(m))
(cl:defmethod Indices-val ((m <SegmentedPointCloud>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-msg:Indices-val is deprecated.  Use point_cloud_segmentation-msg:Indices instead.")
  (Indices m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentedPointCloud>) ostream)
  "Serializes a message object of type '<SegmentedPointCloud>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'colored_cloud) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'segmented_clouds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'segmented_clouds))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'Indices))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'Indices))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentedPointCloud>) istream)
  "Deserializes a message object of type '<SegmentedPointCloud>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'colored_cloud) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'segmented_clouds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'segmented_clouds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:PointCloud2))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'Indices) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'Indices)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'pcl_msgs-msg:PointIndices))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentedPointCloud>)))
  "Returns string type for a message object of type '<SegmentedPointCloud>"
  "point_cloud_segmentation/SegmentedPointCloud")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentedPointCloud)))
  "Returns string type for a message object of type 'SegmentedPointCloud"
  "point_cloud_segmentation/SegmentedPointCloud")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentedPointCloud>)))
  "Returns md5sum for a message object of type '<SegmentedPointCloud>"
  "de2facbd278fbba0807c93f7d2ffd96f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentedPointCloud)))
  "Returns md5sum for a message object of type 'SegmentedPointCloud"
  "de2facbd278fbba0807c93f7d2ffd96f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentedPointCloud>)))
  "Returns full string definition for message of type '<SegmentedPointCloud>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 colored_cloud ~%sensor_msgs/PointCloud2[] segmented_clouds~%pcl_msgs/PointIndices[] Indices~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: pcl_msgs/PointIndices~%Header header~%int32[] indices~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentedPointCloud)))
  "Returns full string definition for message of type 'SegmentedPointCloud"
  (cl:format cl:nil "sensor_msgs/PointCloud2 colored_cloud ~%sensor_msgs/PointCloud2[] segmented_clouds~%pcl_msgs/PointIndices[] Indices~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: pcl_msgs/PointIndices~%Header header~%int32[] indices~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentedPointCloud>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'colored_cloud))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'segmented_clouds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'Indices) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentedPointCloud>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentedPointCloud
    (cl:cons ':colored_cloud (colored_cloud msg))
    (cl:cons ':segmented_clouds (segmented_clouds msg))
    (cl:cons ':Indices (Indices msg))
))
