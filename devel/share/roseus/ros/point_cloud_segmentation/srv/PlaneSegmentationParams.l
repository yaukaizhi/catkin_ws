;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::PlaneSegmentationParams)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'PlaneSegmentationParams (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::PLANESEGMENTATIONPARAMS")
  (make-package "POINT_CLOUD_SEGMENTATION::PLANESEGMENTATIONPARAMS"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::PLANESEGMENTATIONPARAMSREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::PLANESEGMENTATIONPARAMSREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::PLANESEGMENTATIONPARAMSRESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::PLANESEGMENTATIONPARAMSRESPONSE"))

(in-package "ROS")





(defclass point_cloud_segmentation::PlaneSegmentationParamsRequest
  :super ros::object
  :slots (_inlier_threshold _max_iters ))

(defmethod point_cloud_segmentation::PlaneSegmentationParamsRequest
  (:init
   (&key
    ((:inlier_threshold __inlier_threshold) 0.0)
    ((:max_iters __max_iters) 0)
    )
   (send-super :init)
   (setq _inlier_threshold (float __inlier_threshold))
   (setq _max_iters (round __max_iters))
   self)
  (:inlier_threshold
   (&optional __inlier_threshold)
   (if __inlier_threshold (setq _inlier_threshold __inlier_threshold)) _inlier_threshold)
  (:max_iters
   (&optional __max_iters)
   (if __max_iters (setq _max_iters __max_iters)) _max_iters)
  (:serialization-length
   ()
   (+
    ;; float32 _inlier_threshold
    4
    ;; int32 _max_iters
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _inlier_threshold
     (setq _inlier_threshold (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; int32 _max_iters
     (setq _max_iters (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass point_cloud_segmentation::PlaneSegmentationParamsResponse
  :super ros::object
  :slots (_success ))

(defmethod point_cloud_segmentation::PlaneSegmentationParamsResponse
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

(defclass point_cloud_segmentation::PlaneSegmentationParams
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::PlaneSegmentationParams :md5sum-) "d02ed7e78b432c5e664e517844ee3d93")
(setf (get point_cloud_segmentation::PlaneSegmentationParams :datatype-) "point_cloud_segmentation/PlaneSegmentationParams")
(setf (get point_cloud_segmentation::PlaneSegmentationParams :request) point_cloud_segmentation::PlaneSegmentationParamsRequest)
(setf (get point_cloud_segmentation::PlaneSegmentationParams :response) point_cloud_segmentation::PlaneSegmentationParamsResponse)

(defmethod point_cloud_segmentation::PlaneSegmentationParamsRequest
  (:response () (instance point_cloud_segmentation::PlaneSegmentationParamsResponse :init)))

(setf (get point_cloud_segmentation::PlaneSegmentationParamsRequest :md5sum-) "d02ed7e78b432c5e664e517844ee3d93")
(setf (get point_cloud_segmentation::PlaneSegmentationParamsRequest :datatype-) "point_cloud_segmentation/PlaneSegmentationParamsRequest")
(setf (get point_cloud_segmentation::PlaneSegmentationParamsRequest :definition-)
      "float32 inlier_threshold
int32 max_iters
---
bool success

")

(setf (get point_cloud_segmentation::PlaneSegmentationParamsResponse :md5sum-) "d02ed7e78b432c5e664e517844ee3d93")
(setf (get point_cloud_segmentation::PlaneSegmentationParamsResponse :datatype-) "point_cloud_segmentation/PlaneSegmentationParamsResponse")
(setf (get point_cloud_segmentation::PlaneSegmentationParamsResponse :definition-)
      "float32 inlier_threshold
int32 max_iters
---
bool success

")



(provide :point_cloud_segmentation/PlaneSegmentationParams "d02ed7e78b432c5e664e517844ee3d93")


