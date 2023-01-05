;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::SegmentScene)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'SegmentScene (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SEGMENTSCENE")
  (make-package "POINT_CLOUD_SEGMENTATION::SEGMENTSCENE"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SEGMENTSCENEREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::SEGMENTSCENEREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SEGMENTSCENERESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::SEGMENTSCENERESPONSE"))

(in-package "ROS")

(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))




(defclass point_cloud_segmentation::SegmentSceneRequest
  :super ros::object
  :slots (_cloud_in ))

(defmethod point_cloud_segmentation::SegmentSceneRequest
  (:init
   (&key
    ((:cloud_in __cloud_in) (instance sensor_msgs::PointCloud2 :init))
    )
   (send-super :init)
   (setq _cloud_in __cloud_in)
   self)
  (:cloud_in
   (&rest __cloud_in)
   (if (keywordp (car __cloud_in))
       (send* _cloud_in __cloud_in)
     (progn
       (if __cloud_in (setq _cloud_in (car __cloud_in)))
       _cloud_in)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _cloud_in
    (send _cloud_in :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _cloud_in
       (send _cloud_in :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _cloud_in
     (send _cloud_in :deserialize buf ptr-) (incf ptr- (send _cloud_in :serialization-length))
   ;;
   self)
  )

(defclass point_cloud_segmentation::SegmentSceneResponse
  :super ros::object
  :slots (_segmented_scene ))

(defmethod point_cloud_segmentation::SegmentSceneResponse
  (:init
   (&key
    ((:segmented_scene __segmented_scene) (instance point_cloud_segmentation::SegmentedPointCloud :init))
    )
   (send-super :init)
   (setq _segmented_scene __segmented_scene)
   self)
  (:segmented_scene
   (&rest __segmented_scene)
   (if (keywordp (car __segmented_scene))
       (send* _segmented_scene __segmented_scene)
     (progn
       (if __segmented_scene (setq _segmented_scene (car __segmented_scene)))
       _segmented_scene)))
  (:serialization-length
   ()
   (+
    ;; point_cloud_segmentation/SegmentedPointCloud _segmented_scene
    (send _segmented_scene :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; point_cloud_segmentation/SegmentedPointCloud _segmented_scene
       (send _segmented_scene :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; point_cloud_segmentation/SegmentedPointCloud _segmented_scene
     (send _segmented_scene :deserialize buf ptr-) (incf ptr- (send _segmented_scene :serialization-length))
   ;;
   self)
  )

(defclass point_cloud_segmentation::SegmentScene
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::SegmentScene :md5sum-) "d67a831539406124d35c176a9550dd53")
(setf (get point_cloud_segmentation::SegmentScene :datatype-) "point_cloud_segmentation/SegmentScene")
(setf (get point_cloud_segmentation::SegmentScene :request) point_cloud_segmentation::SegmentSceneRequest)
(setf (get point_cloud_segmentation::SegmentScene :response) point_cloud_segmentation::SegmentSceneResponse)

(defmethod point_cloud_segmentation::SegmentSceneRequest
  (:response () (instance point_cloud_segmentation::SegmentSceneResponse :init)))

(setf (get point_cloud_segmentation::SegmentSceneRequest :md5sum-) "d67a831539406124d35c176a9550dd53")
(setf (get point_cloud_segmentation::SegmentSceneRequest :datatype-) "point_cloud_segmentation/SegmentSceneRequest")
(setf (get point_cloud_segmentation::SegmentSceneRequest :definition-)
      "sensor_msgs/PointCloud2 cloud_in

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
SegmentedPointCloud segmented_scene


================================================================================
MSG: point_cloud_segmentation/SegmentedPointCloud
sensor_msgs/PointCloud2 colored_cloud 
sensor_msgs/PointCloud2[] segmented_clouds
pcl_msgs/PointIndices[] Indices

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: pcl_msgs/PointIndices
Header header
int32[] indices

")

(setf (get point_cloud_segmentation::SegmentSceneResponse :md5sum-) "d67a831539406124d35c176a9550dd53")
(setf (get point_cloud_segmentation::SegmentSceneResponse :datatype-) "point_cloud_segmentation/SegmentSceneResponse")
(setf (get point_cloud_segmentation::SegmentSceneResponse :definition-)
      "sensor_msgs/PointCloud2 cloud_in

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field
---
SegmentedPointCloud segmented_scene


================================================================================
MSG: point_cloud_segmentation/SegmentedPointCloud
sensor_msgs/PointCloud2 colored_cloud 
sensor_msgs/PointCloud2[] segmented_clouds
pcl_msgs/PointIndices[] Indices

================================================================================
MSG: sensor_msgs/PointCloud2
# This message holds a collection of N-dimensional points, which may
# contain additional information such as normals, intensity, etc. The
# point data is stored as a binary blob, its layout described by the
# contents of the \"fields\" array.

# The point cloud data may be organized 2d (image-like) or 1d
# (unordered). Point clouds organized as 2d images may be produced by
# camera depth sensors such as stereo or time-of-flight.

# Time of sensor data acquisition, and the coordinate frame ID (for 3d
# points).
Header header

# 2D structure of the point cloud. If the cloud is unordered, height is
# 1 and width is the length of the point cloud.
uint32 height
uint32 width

# Describes the channels and their layout in the binary data blob.
PointField[] fields

bool    is_bigendian # Is this data bigendian?
uint32  point_step   # Length of a point in bytes
uint32  row_step     # Length of a row in bytes
uint8[] data         # Actual point data, size is (row_step*height)

bool is_dense        # True if there are no invalid points

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: sensor_msgs/PointField
# This message holds the description of one point entry in the
# PointCloud2 message format.
uint8 INT8    = 1
uint8 UINT8   = 2
uint8 INT16   = 3
uint8 UINT16  = 4
uint8 INT32   = 5
uint8 UINT32  = 6
uint8 FLOAT32 = 7
uint8 FLOAT64 = 8

string name      # Name of field
uint32 offset    # Offset from start of point struct
uint8  datatype  # Datatype enumeration, see above
uint32 count     # How many elements in the field

================================================================================
MSG: pcl_msgs/PointIndices
Header header
int32[] indices

")



(provide :point_cloud_segmentation/SegmentScene "d67a831539406124d35c176a9550dd53")


