; Auto-generated. Do not edit!


(cl:in-package point_cloud_segmentation-srv)


;//! \htmlinclude SegmentScene-request.msg.html

(cl:defclass <SegmentScene-request> (roslisp-msg-protocol:ros-message)
  ((cloud_in
    :reader cloud_in
    :initarg :cloud_in
    :type sensor_msgs-msg:PointCloud2
    :initform (cl:make-instance 'sensor_msgs-msg:PointCloud2)))
)

(cl:defclass SegmentScene-request (<SegmentScene-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentScene-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentScene-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<SegmentScene-request> is deprecated: use point_cloud_segmentation-srv:SegmentScene-request instead.")))

(cl:ensure-generic-function 'cloud_in-val :lambda-list '(m))
(cl:defmethod cloud_in-val ((m <SegmentScene-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:cloud_in-val is deprecated.  Use point_cloud_segmentation-srv:cloud_in instead.")
  (cloud_in m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentScene-request>) ostream)
  "Serializes a message object of type '<SegmentScene-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'cloud_in) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentScene-request>) istream)
  "Deserializes a message object of type '<SegmentScene-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'cloud_in) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentScene-request>)))
  "Returns string type for a service object of type '<SegmentScene-request>"
  "point_cloud_segmentation/SegmentSceneRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentScene-request)))
  "Returns string type for a service object of type 'SegmentScene-request"
  "point_cloud_segmentation/SegmentSceneRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentScene-request>)))
  "Returns md5sum for a message object of type '<SegmentScene-request>"
  "d67a831539406124d35c176a9550dd53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentScene-request)))
  "Returns md5sum for a message object of type 'SegmentScene-request"
  "d67a831539406124d35c176a9550dd53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentScene-request>)))
  "Returns full string definition for message of type '<SegmentScene-request>"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud_in~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentScene-request)))
  "Returns full string definition for message of type 'SegmentScene-request"
  (cl:format cl:nil "sensor_msgs/PointCloud2 cloud_in~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentScene-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'cloud_in))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentScene-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentScene-request
    (cl:cons ':cloud_in (cloud_in msg))
))
;//! \htmlinclude SegmentScene-response.msg.html

(cl:defclass <SegmentScene-response> (roslisp-msg-protocol:ros-message)
  ((segmented_scene
    :reader segmented_scene
    :initarg :segmented_scene
    :type point_cloud_segmentation-msg:SegmentedPointCloud
    :initform (cl:make-instance 'point_cloud_segmentation-msg:SegmentedPointCloud)))
)

(cl:defclass SegmentScene-response (<SegmentScene-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SegmentScene-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SegmentScene-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name point_cloud_segmentation-srv:<SegmentScene-response> is deprecated: use point_cloud_segmentation-srv:SegmentScene-response instead.")))

(cl:ensure-generic-function 'segmented_scene-val :lambda-list '(m))
(cl:defmethod segmented_scene-val ((m <SegmentScene-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader point_cloud_segmentation-srv:segmented_scene-val is deprecated.  Use point_cloud_segmentation-srv:segmented_scene instead.")
  (segmented_scene m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SegmentScene-response>) ostream)
  "Serializes a message object of type '<SegmentScene-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmented_scene) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SegmentScene-response>) istream)
  "Deserializes a message object of type '<SegmentScene-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmented_scene) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SegmentScene-response>)))
  "Returns string type for a service object of type '<SegmentScene-response>"
  "point_cloud_segmentation/SegmentSceneResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentScene-response)))
  "Returns string type for a service object of type 'SegmentScene-response"
  "point_cloud_segmentation/SegmentSceneResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SegmentScene-response>)))
  "Returns md5sum for a message object of type '<SegmentScene-response>"
  "d67a831539406124d35c176a9550dd53")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SegmentScene-response)))
  "Returns md5sum for a message object of type 'SegmentScene-response"
  "d67a831539406124d35c176a9550dd53")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SegmentScene-response>)))
  "Returns full string definition for message of type '<SegmentScene-response>"
  (cl:format cl:nil "SegmentedPointCloud segmented_scene~%~%~%================================================================================~%MSG: point_cloud_segmentation/SegmentedPointCloud~%sensor_msgs/PointCloud2 colored_cloud ~%sensor_msgs/PointCloud2[] segmented_clouds~%pcl_msgs/PointIndices[] Indices~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: pcl_msgs/PointIndices~%Header header~%int32[] indices~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SegmentScene-response)))
  "Returns full string definition for message of type 'SegmentScene-response"
  (cl:format cl:nil "SegmentedPointCloud segmented_scene~%~%~%================================================================================~%MSG: point_cloud_segmentation/SegmentedPointCloud~%sensor_msgs/PointCloud2 colored_cloud ~%sensor_msgs/PointCloud2[] segmented_clouds~%pcl_msgs/PointIndices[] Indices~%~%================================================================================~%MSG: sensor_msgs/PointCloud2~%# This message holds a collection of N-dimensional points, which may~%# contain additional information such as normals, intensity, etc. The~%# point data is stored as a binary blob, its layout described by the~%# contents of the \"fields\" array.~%~%# The point cloud data may be organized 2d (image-like) or 1d~%# (unordered). Point clouds organized as 2d images may be produced by~%# camera depth sensors such as stereo or time-of-flight.~%~%# Time of sensor data acquisition, and the coordinate frame ID (for 3d~%# points).~%Header header~%~%# 2D structure of the point cloud. If the cloud is unordered, height is~%# 1 and width is the length of the point cloud.~%uint32 height~%uint32 width~%~%# Describes the channels and their layout in the binary data blob.~%PointField[] fields~%~%bool    is_bigendian # Is this data bigendian?~%uint32  point_step   # Length of a point in bytes~%uint32  row_step     # Length of a row in bytes~%uint8[] data         # Actual point data, size is (row_step*height)~%~%bool is_dense        # True if there are no invalid points~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/PointField~%# This message holds the description of one point entry in the~%# PointCloud2 message format.~%uint8 INT8    = 1~%uint8 UINT8   = 2~%uint8 INT16   = 3~%uint8 UINT16  = 4~%uint8 INT32   = 5~%uint8 UINT32  = 6~%uint8 FLOAT32 = 7~%uint8 FLOAT64 = 8~%~%string name      # Name of field~%uint32 offset    # Offset from start of point struct~%uint8  datatype  # Datatype enumeration, see above~%uint32 count     # How many elements in the field~%~%================================================================================~%MSG: pcl_msgs/PointIndices~%Header header~%int32[] indices~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SegmentScene-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmented_scene))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SegmentScene-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SegmentScene-response
    (cl:cons ':segmented_scene (segmented_scene msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SegmentScene)))
  'SegmentScene-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SegmentScene)))
  'SegmentScene-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SegmentScene)))
  "Returns string type for a service object of type '<SegmentScene>"
  "point_cloud_segmentation/SegmentScene")