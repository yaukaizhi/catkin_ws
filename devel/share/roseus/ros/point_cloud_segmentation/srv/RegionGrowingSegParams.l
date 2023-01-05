;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::RegionGrowingSegParams)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'RegionGrowingSegParams (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::REGIONGROWINGSEGPARAMS")
  (make-package "POINT_CLOUD_SEGMENTATION::REGIONGROWINGSEGPARAMS"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::REGIONGROWINGSEGPARAMSREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::REGIONGROWINGSEGPARAMSREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::REGIONGROWINGSEGPARAMSRESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::REGIONGROWINGSEGPARAMSRESPONSE"))

(in-package "ROS")





(defclass point_cloud_segmentation::RegionGrowingSegParamsRequest
  :super ros::object
  :slots (_min_cluster_size _max_cluster_size _number_of_neighbors _smoothness_threshold _curvature_threshold ))

(defmethod point_cloud_segmentation::RegionGrowingSegParamsRequest
  (:init
   (&key
    ((:min_cluster_size __min_cluster_size) 0)
    ((:max_cluster_size __max_cluster_size) 0)
    ((:number_of_neighbors __number_of_neighbors) 0)
    ((:smoothness_threshold __smoothness_threshold) 0.0)
    ((:curvature_threshold __curvature_threshold) 0.0)
    )
   (send-super :init)
   (setq _min_cluster_size (round __min_cluster_size))
   (setq _max_cluster_size (round __max_cluster_size))
   (setq _number_of_neighbors (round __number_of_neighbors))
   (setq _smoothness_threshold (float __smoothness_threshold))
   (setq _curvature_threshold (float __curvature_threshold))
   self)
  (:min_cluster_size
   (&optional __min_cluster_size)
   (if __min_cluster_size (setq _min_cluster_size __min_cluster_size)) _min_cluster_size)
  (:max_cluster_size
   (&optional __max_cluster_size)
   (if __max_cluster_size (setq _max_cluster_size __max_cluster_size)) _max_cluster_size)
  (:number_of_neighbors
   (&optional __number_of_neighbors)
   (if __number_of_neighbors (setq _number_of_neighbors __number_of_neighbors)) _number_of_neighbors)
  (:smoothness_threshold
   (&optional __smoothness_threshold)
   (if __smoothness_threshold (setq _smoothness_threshold __smoothness_threshold)) _smoothness_threshold)
  (:curvature_threshold
   (&optional __curvature_threshold)
   (if __curvature_threshold (setq _curvature_threshold __curvature_threshold)) _curvature_threshold)
  (:serialization-length
   ()
   (+
    ;; int32 _min_cluster_size
    4
    ;; int32 _max_cluster_size
    4
    ;; int32 _number_of_neighbors
    4
    ;; float32 _smoothness_threshold
    4
    ;; float32 _curvature_threshold
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _min_cluster_size
       (write-long _min_cluster_size s)
     ;; int32 _max_cluster_size
       (write-long _max_cluster_size s)
     ;; int32 _number_of_neighbors
       (write-long _number_of_neighbors s)
     ;; float32 _smoothness_threshold
       (sys::poke _smoothness_threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _curvature_threshold
       (sys::poke _curvature_threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _min_cluster_size
     (setq _min_cluster_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _max_cluster_size
     (setq _max_cluster_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _number_of_neighbors
     (setq _number_of_neighbors (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _smoothness_threshold
     (setq _smoothness_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _curvature_threshold
     (setq _curvature_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass point_cloud_segmentation::RegionGrowingSegParamsResponse
  :super ros::object
  :slots (_success ))

(defmethod point_cloud_segmentation::RegionGrowingSegParamsResponse
  (:init
   (&key
    ((:success __success) nil)
    )
   (send-super :init)
   (setq _success __success)
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass point_cloud_segmentation::RegionGrowingSegParams
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::RegionGrowingSegParams :md5sum-) "38336d175b585d3b451f02cd0a82d0d1")
(setf (get point_cloud_segmentation::RegionGrowingSegParams :datatype-) "point_cloud_segmentation/RegionGrowingSegParams")
(setf (get point_cloud_segmentation::RegionGrowingSegParams :request) point_cloud_segmentation::RegionGrowingSegParamsRequest)
(setf (get point_cloud_segmentation::RegionGrowingSegParams :response) point_cloud_segmentation::RegionGrowingSegParamsResponse)

(defmethod point_cloud_segmentation::RegionGrowingSegParamsRequest
  (:response () (instance point_cloud_segmentation::RegionGrowingSegParamsResponse :init)))

(setf (get point_cloud_segmentation::RegionGrowingSegParamsRequest :md5sum-) "38336d175b585d3b451f02cd0a82d0d1")
(setf (get point_cloud_segmentation::RegionGrowingSegParamsRequest :datatype-) "point_cloud_segmentation/RegionGrowingSegParamsRequest")
(setf (get point_cloud_segmentation::RegionGrowingSegParamsRequest :definition-)
      "int32 min_cluster_size
int32 max_cluster_size
int32 number_of_neighbors
float32 smoothness_threshold
float32 curvature_threshold
---
bool success

")

(setf (get point_cloud_segmentation::RegionGrowingSegParamsResponse :md5sum-) "38336d175b585d3b451f02cd0a82d0d1")
(setf (get point_cloud_segmentation::RegionGrowingSegParamsResponse :datatype-) "point_cloud_segmentation/RegionGrowingSegParamsResponse")
(setf (get point_cloud_segmentation::RegionGrowingSegParamsResponse :definition-)
      "int32 min_cluster_size
int32 max_cluster_size
int32 number_of_neighbors
float32 smoothness_threshold
float32 curvature_threshold
---
bool success

")



(provide :point_cloud_segmentation/RegionGrowingSegParams "38336d175b585d3b451f02cd0a82d0d1")


