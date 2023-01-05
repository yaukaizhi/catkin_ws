;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::EucledianClusterParams)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'EucledianClusterParams (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::EUCLEDIANCLUSTERPARAMS")
  (make-package "POINT_CLOUD_SEGMENTATION::EUCLEDIANCLUSTERPARAMS"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::EUCLEDIANCLUSTERPARAMSREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::EUCLEDIANCLUSTERPARAMSREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::EUCLEDIANCLUSTERPARAMSRESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::EUCLEDIANCLUSTERPARAMSRESPONSE"))

(in-package "ROS")





(defclass point_cloud_segmentation::EucledianClusterParamsRequest
  :super ros::object
  :slots (_inlier_threshold _max_iters _leaf_size _min_cluster_size _max_cluster_size _cluster_tolerance ))

(defmethod point_cloud_segmentation::EucledianClusterParamsRequest
  (:init
   (&key
    ((:inlier_threshold __inlier_threshold) 0.0)
    ((:max_iters __max_iters) 0)
    ((:leaf_size __leaf_size) 0.0)
    ((:min_cluster_size __min_cluster_size) 0)
    ((:max_cluster_size __max_cluster_size) 0)
    ((:cluster_tolerance __cluster_tolerance) 0.0)
    )
   (send-super :init)
   (setq _inlier_threshold (float __inlier_threshold))
   (setq _max_iters (round __max_iters))
   (setq _leaf_size (float __leaf_size))
   (setq _min_cluster_size (round __min_cluster_size))
   (setq _max_cluster_size (round __max_cluster_size))
   (setq _cluster_tolerance (float __cluster_tolerance))
   self)
  (:inlier_threshold
   (&optional __inlier_threshold)
   (if __inlier_threshold (setq _inlier_threshold __inlier_threshold)) _inlier_threshold)
  (:max_iters
   (&optional __max_iters)
   (if __max_iters (setq _max_iters __max_iters)) _max_iters)
  (:leaf_size
   (&optional __leaf_size)
   (if __leaf_size (setq _leaf_size __leaf_size)) _leaf_size)
  (:min_cluster_size
   (&optional __min_cluster_size)
   (if __min_cluster_size (setq _min_cluster_size __min_cluster_size)) _min_cluster_size)
  (:max_cluster_size
   (&optional __max_cluster_size)
   (if __max_cluster_size (setq _max_cluster_size __max_cluster_size)) _max_cluster_size)
  (:cluster_tolerance
   (&optional __cluster_tolerance)
   (if __cluster_tolerance (setq _cluster_tolerance __cluster_tolerance)) _cluster_tolerance)
  (:serialization-length
   ()
   (+
    ;; float32 _inlier_threshold
    4
    ;; int32 _max_iters
    4
    ;; float32 _leaf_size
    4
    ;; int32 _min_cluster_size
    4
    ;; int32 _max_cluster_size
    4
    ;; float32 _cluster_tolerance
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _inlier_threshold
       (sys::poke _inlier_threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _max_iters
       (write-long _max_iters s)
     ;; float32 _leaf_size
       (sys::poke _leaf_size (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; int32 _min_cluster_size
       (write-long _min_cluster_size s)
     ;; int32 _max_cluster_size
       (write-long _max_cluster_size s)
     ;; float32 _cluster_tolerance
       (sys::poke _cluster_tolerance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _inlier_threshold
     (setq _inlier_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _max_iters
     (setq _max_iters (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _leaf_size
     (setq _leaf_size (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _min_cluster_size
     (setq _min_cluster_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _max_cluster_size
     (setq _max_cluster_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32 _cluster_tolerance
     (setq _cluster_tolerance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass point_cloud_segmentation::EucledianClusterParamsResponse
  :super ros::object
  :slots (_success ))

(defmethod point_cloud_segmentation::EucledianClusterParamsResponse
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

(defclass point_cloud_segmentation::EucledianClusterParams
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::EucledianClusterParams :md5sum-) "d48de43a8ae594a80e6df131e81e4f77")
(setf (get point_cloud_segmentation::EucledianClusterParams :datatype-) "point_cloud_segmentation/EucledianClusterParams")
(setf (get point_cloud_segmentation::EucledianClusterParams :request) point_cloud_segmentation::EucledianClusterParamsRequest)
(setf (get point_cloud_segmentation::EucledianClusterParams :response) point_cloud_segmentation::EucledianClusterParamsResponse)

(defmethod point_cloud_segmentation::EucledianClusterParamsRequest
  (:response () (instance point_cloud_segmentation::EucledianClusterParamsResponse :init)))

(setf (get point_cloud_segmentation::EucledianClusterParamsRequest :md5sum-) "d48de43a8ae594a80e6df131e81e4f77")
(setf (get point_cloud_segmentation::EucledianClusterParamsRequest :datatype-) "point_cloud_segmentation/EucledianClusterParamsRequest")
(setf (get point_cloud_segmentation::EucledianClusterParamsRequest :definition-)
      "float32 inlier_threshold
int32 max_iters
float32 leaf_size
int32 min_cluster_size
int32 max_cluster_size
float32 cluster_tolerance
---
bool success

")

(setf (get point_cloud_segmentation::EucledianClusterParamsResponse :md5sum-) "d48de43a8ae594a80e6df131e81e4f77")
(setf (get point_cloud_segmentation::EucledianClusterParamsResponse :datatype-) "point_cloud_segmentation/EucledianClusterParamsResponse")
(setf (get point_cloud_segmentation::EucledianClusterParamsResponse :definition-)
      "float32 inlier_threshold
int32 max_iters
float32 leaf_size
int32 min_cluster_size
int32 max_cluster_size
float32 cluster_tolerance
---
bool success

")



(provide :point_cloud_segmentation/EucledianClusterParams "d48de43a8ae594a80e6df131e81e4f77")


