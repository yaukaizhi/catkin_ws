;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::SegmentedPointCloud)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'SegmentedPointCloud (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SEGMENTEDPOINTCLOUD")
  (make-package "POINT_CLOUD_SEGMENTATION::SEGMENTEDPOINTCLOUD"))

(in-package "ROS")
;;//! \htmlinclude SegmentedPointCloud.msg.html
(if (not (find-package "PCL_MSGS"))
  (ros::roseus-add-msgs "pcl_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass point_cloud_segmentation::SegmentedPointCloud
  :super ros::object
  :slots (_colored_cloud _segmented_clouds _Indices ))

(defmethod point_cloud_segmentation::SegmentedPointCloud
  (:init
   (&key
    ((:colored_cloud __colored_cloud) (instance sensor_msgs::PointCloud2 :init))
    ((:segmented_clouds __segmented_clouds) ())
    ((:Indices __Indices) ())
    )
   (send-super :init)
   (setq _colored_cloud __colored_cloud)
   (setq _segmented_clouds __segmented_clouds)
   (setq _Indices __Indices)
   self)
  (:colored_cloud
   (&rest __colored_cloud)
   (if (keywordp (car __colored_cloud))
       (send* _colored_cloud __colored_cloud)
     (progn
       (if __colored_cloud (setq _colored_cloud (car __colored_cloud)))
       _colored_cloud)))
  (:segmented_clouds
   (&rest __segmented_clouds)
   (if (keywordp (car __segmented_clouds))
       (send* _segmented_clouds __segmented_clouds)
     (progn
       (if __segmented_clouds (setq _segmented_clouds (car __segmented_clouds)))
       _segmented_clouds)))
  (:Indices
   (&rest __Indices)
   (if (keywordp (car __Indices))
       (send* _Indices __Indices)
     (progn
       (if __Indices (setq _Indices (car __Indices)))
       _Indices)))
  (:serialization-length
   ()
   (+
    ;; sensor_msgs/PointCloud2 _colored_cloud
    (send _colored_cloud :serialization-length)
    ;; sensor_msgs/PointCloud2[] _segmented_clouds
    (apply #'+ (send-all _segmented_clouds :serialization-length)) 4
    ;; pcl_msgs/PointIndices[] _Indices
    (apply #'+ (send-all _Indices :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; sensor_msgs/PointCloud2 _colored_cloud
       (send _colored_cloud :serialize s)
     ;; sensor_msgs/PointCloud2[] _segmented_clouds
     (write-long (length _segmented_clouds) s)
     (dolist (elem _segmented_clouds)
       (send elem :serialize s)
       )
     ;; pcl_msgs/PointIndices[] _Indices
     (write-long (length _Indices) s)
     (dolist (elem _Indices)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; sensor_msgs/PointCloud2 _colored_cloud
     (send _colored_cloud :deserialize buf ptr-) (incf ptr- (send _colored_cloud :serialization-length))
   ;; sensor_msgs/PointCloud2[] _segmented_clouds
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _segmented_clouds (let (r) (dotimes (i n) (push (instance sensor_msgs::PointCloud2 :init) r)) r))
     (dolist (elem- _segmented_clouds)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; pcl_msgs/PointIndices[] _Indices
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _Indices (let (r) (dotimes (i n) (push (instance pcl_msgs::PointIndices :init) r)) r))
     (dolist (elem- _Indices)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get point_cloud_segmentation::SegmentedPointCloud :md5sum-) "de2facbd278fbba0807c93f7d2ffd96f")
(setf (get point_cloud_segmentation::SegmentedPointCloud :datatype-) "point_cloud_segmentation/SegmentedPointCloud")
(setf (get point_cloud_segmentation::SegmentedPointCloud :definition-)
      "sensor_msgs/PointCloud2 colored_cloud 
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



(provide :point_cloud_segmentation/SegmentedPointCloud "de2facbd278fbba0807c93f7d2ffd96f")


