;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::SuperClusteringSegParams)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'SuperClusteringSegParams (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SUPERCLUSTERINGSEGPARAMS")
  (make-package "POINT_CLOUD_SEGMENTATION::SUPERCLUSTERINGSEGPARAMS"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SUPERCLUSTERINGSEGPARAMSREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::SUPERCLUSTERINGSEGPARAMSREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::SUPERCLUSTERINGSEGPARAMSRESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::SUPERCLUSTERINGSEGPARAMSRESPONSE"))

(in-package "ROS")





(defclass point_cloud_segmentation::SuperClusteringSegParamsRequest
  :super ros::object
  :slots (_voxel_resolution _seed_resolution _color_importance _spatial_importance _normal_importance _threshold _rgb_color_space _convexity_criterion _adapt_lambda _equalization ))

(defmethod point_cloud_segmentation::SuperClusteringSegParamsRequest
  (:init
   (&key
    ((:voxel_resolution __voxel_resolution) 0.0)
    ((:seed_resolution __seed_resolution) 0.0)
    ((:color_importance __color_importance) 0.0)
    ((:spatial_importance __spatial_importance) 0.0)
    ((:normal_importance __normal_importance) 0.0)
    ((:threshold __threshold) 0.0)
    ((:rgb_color_space __rgb_color_space) nil)
    ((:convexity_criterion __convexity_criterion) nil)
    ((:adapt_lambda __adapt_lambda) nil)
    ((:equalization __equalization) nil)
    )
   (send-super :init)
   (setq _voxel_resolution (float __voxel_resolution))
   (setq _seed_resolution (float __seed_resolution))
   (setq _color_importance (float __color_importance))
   (setq _spatial_importance (float __spatial_importance))
   (setq _normal_importance (float __normal_importance))
   (setq _threshold (float __threshold))
   (setq _rgb_color_space __rgb_color_space)
   (setq _convexity_criterion __convexity_criterion)
   (setq _adapt_lambda __adapt_lambda)
   (setq _equalization __equalization)
   self)
  (:voxel_resolution
   (&optional __voxel_resolution)
   (if __voxel_resolution (setq _voxel_resolution __voxel_resolution)) _voxel_resolution)
  (:seed_resolution
   (&optional __seed_resolution)
   (if __seed_resolution (setq _seed_resolution __seed_resolution)) _seed_resolution)
  (:color_importance
   (&optional __color_importance)
   (if __color_importance (setq _color_importance __color_importance)) _color_importance)
  (:spatial_importance
   (&optional __spatial_importance)
   (if __spatial_importance (setq _spatial_importance __spatial_importance)) _spatial_importance)
  (:normal_importance
   (&optional __normal_importance)
   (if __normal_importance (setq _normal_importance __normal_importance)) _normal_importance)
  (:threshold
   (&optional __threshold)
   (if __threshold (setq _threshold __threshold)) _threshold)
  (:rgb_color_space
   (&optional (__rgb_color_space :null))
   (if (not (eq __rgb_color_space :null)) (setq _rgb_color_space __rgb_color_space)) _rgb_color_space)
  (:convexity_criterion
   (&optional (__convexity_criterion :null))
   (if (not (eq __convexity_criterion :null)) (setq _convexity_criterion __convexity_criterion)) _convexity_criterion)
  (:adapt_lambda
   (&optional (__adapt_lambda :null))
   (if (not (eq __adapt_lambda :null)) (setq _adapt_lambda __adapt_lambda)) _adapt_lambda)
  (:equalization
   (&optional (__equalization :null))
   (if (not (eq __equalization :null)) (setq _equalization __equalization)) _equalization)
  (:serialization-length
   ()
   (+
    ;; float32 _voxel_resolution
    4
    ;; float32 _seed_resolution
    4
    ;; float32 _color_importance
    4
    ;; float32 _spatial_importance
    4
    ;; float32 _normal_importance
    4
    ;; float32 _threshold
    4
    ;; bool _rgb_color_space
    1
    ;; bool _convexity_criterion
    1
    ;; bool _adapt_lambda
    1
    ;; bool _equalization
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _voxel_resolution
       (sys::poke _voxel_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _seed_resolution
       (sys::poke _seed_resolution (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _color_importance
       (sys::poke _color_importance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _spatial_importance
       (sys::poke _spatial_importance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _normal_importance
       (sys::poke _normal_importance (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _threshold
       (sys::poke _threshold (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _rgb_color_space
       (if _rgb_color_space (write-byte -1 s) (write-byte 0 s))
     ;; bool _convexity_criterion
       (if _convexity_criterion (write-byte -1 s) (write-byte 0 s))
     ;; bool _adapt_lambda
       (if _adapt_lambda (write-byte -1 s) (write-byte 0 s))
     ;; bool _equalization
       (if _equalization (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _voxel_resolution
     (setq _voxel_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _seed_resolution
     (setq _seed_resolution (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _color_importance
     (setq _color_importance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _spatial_importance
     (setq _spatial_importance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _normal_importance
     (setq _normal_importance (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _threshold
     (setq _threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _rgb_color_space
     (setq _rgb_color_space (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _convexity_criterion
     (setq _convexity_criterion (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _adapt_lambda
     (setq _adapt_lambda (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _equalization
     (setq _equalization (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass point_cloud_segmentation::SuperClusteringSegParamsResponse
  :super ros::object
  :slots (_success ))

(defmethod point_cloud_segmentation::SuperClusteringSegParamsResponse
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

(defclass point_cloud_segmentation::SuperClusteringSegParams
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::SuperClusteringSegParams :md5sum-) "856257f6ec8c4470a3201718c51e1da6")
(setf (get point_cloud_segmentation::SuperClusteringSegParams :datatype-) "point_cloud_segmentation/SuperClusteringSegParams")
(setf (get point_cloud_segmentation::SuperClusteringSegParams :request) point_cloud_segmentation::SuperClusteringSegParamsRequest)
(setf (get point_cloud_segmentation::SuperClusteringSegParams :response) point_cloud_segmentation::SuperClusteringSegParamsResponse)

(defmethod point_cloud_segmentation::SuperClusteringSegParamsRequest
  (:response () (instance point_cloud_segmentation::SuperClusteringSegParamsResponse :init)))

(setf (get point_cloud_segmentation::SuperClusteringSegParamsRequest :md5sum-) "856257f6ec8c4470a3201718c51e1da6")
(setf (get point_cloud_segmentation::SuperClusteringSegParamsRequest :datatype-) "point_cloud_segmentation/SuperClusteringSegParamsRequest")
(setf (get point_cloud_segmentation::SuperClusteringSegParamsRequest :definition-)
      "float32 voxel_resolution
float32 seed_resolution
float32 color_importance
float32 spatial_importance
float32 normal_importance
float32 threshold
bool rgb_color_space
bool convexity_criterion
bool adapt_lambda
bool equalization
---
bool success

")

(setf (get point_cloud_segmentation::SuperClusteringSegParamsResponse :md5sum-) "856257f6ec8c4470a3201718c51e1da6")
(setf (get point_cloud_segmentation::SuperClusteringSegParamsResponse :datatype-) "point_cloud_segmentation/SuperClusteringSegParamsResponse")
(setf (get point_cloud_segmentation::SuperClusteringSegParamsResponse :definition-)
      "float32 voxel_resolution
float32 seed_resolution
float32 color_importance
float32 spatial_importance
float32 normal_importance
float32 threshold
bool rgb_color_space
bool convexity_criterion
bool adapt_lambda
bool equalization
---
bool success

")



(provide :point_cloud_segmentation/SuperClusteringSegParams "856257f6ec8c4470a3201718c51e1da6")


