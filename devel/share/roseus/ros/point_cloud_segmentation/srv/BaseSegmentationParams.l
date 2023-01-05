;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::BaseSegmentationParams)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'BaseSegmentationParams (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::BASESEGMENTATIONPARAMS")
  (make-package "POINT_CLOUD_SEGMENTATION::BASESEGMENTATIONPARAMS"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::BASESEGMENTATIONPARAMSREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::BASESEGMENTATIONPARAMSREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::BASESEGMENTATIONPARAMSRESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::BASESEGMENTATIONPARAMSRESPONSE"))

(in-package "ROS")





(defclass point_cloud_segmentation::BaseSegmentationParamsRequest
  :super ros::object
  :slots (_x_cutoff _y_cutoff _z_cutoff ))

(defmethod point_cloud_segmentation::BaseSegmentationParamsRequest
  (:init
   (&key
    ((:x_cutoff __x_cutoff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:y_cutoff __y_cutoff) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:z_cutoff __z_cutoff) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _x_cutoff __x_cutoff)
   (setq _y_cutoff __y_cutoff)
   (setq _z_cutoff __z_cutoff)
   self)
  (:x_cutoff
   (&optional __x_cutoff)
   (if __x_cutoff (setq _x_cutoff __x_cutoff)) _x_cutoff)
  (:y_cutoff
   (&optional __y_cutoff)
   (if __y_cutoff (setq _y_cutoff __y_cutoff)) _y_cutoff)
  (:z_cutoff
   (&optional __z_cutoff)
   (if __z_cutoff (setq _z_cutoff __z_cutoff)) _z_cutoff)
  (:serialization-length
   ()
   (+
    ;; float32[] _x_cutoff
    (* 4    (length _x_cutoff)) 4
    ;; float32[] _y_cutoff
    (* 4    (length _y_cutoff)) 4
    ;; float32[] _z_cutoff
    (* 4    (length _z_cutoff)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _x_cutoff
     (write-long (length _x_cutoff) s)
     (dotimes (i (length _x_cutoff))
       (sys::poke (elt _x_cutoff i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _y_cutoff
     (write-long (length _y_cutoff) s)
     (dotimes (i (length _y_cutoff))
       (sys::poke (elt _y_cutoff i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _z_cutoff
     (write-long (length _z_cutoff) s)
     (dotimes (i (length _z_cutoff))
       (sys::poke (elt _z_cutoff i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _x_cutoff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _x_cutoff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _x_cutoff i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _y_cutoff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _y_cutoff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _y_cutoff i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _z_cutoff
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _z_cutoff (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _z_cutoff i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(defclass point_cloud_segmentation::BaseSegmentationParamsResponse
  :super ros::object
  :slots (_success ))

(defmethod point_cloud_segmentation::BaseSegmentationParamsResponse
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

(defclass point_cloud_segmentation::BaseSegmentationParams
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::BaseSegmentationParams :md5sum-) "cc22b1ef630d46c7f989e768fadb8c56")
(setf (get point_cloud_segmentation::BaseSegmentationParams :datatype-) "point_cloud_segmentation/BaseSegmentationParams")
(setf (get point_cloud_segmentation::BaseSegmentationParams :request) point_cloud_segmentation::BaseSegmentationParamsRequest)
(setf (get point_cloud_segmentation::BaseSegmentationParams :response) point_cloud_segmentation::BaseSegmentationParamsResponse)

(defmethod point_cloud_segmentation::BaseSegmentationParamsRequest
  (:response () (instance point_cloud_segmentation::BaseSegmentationParamsResponse :init)))

(setf (get point_cloud_segmentation::BaseSegmentationParamsRequest :md5sum-) "cc22b1ef630d46c7f989e768fadb8c56")
(setf (get point_cloud_segmentation::BaseSegmentationParamsRequest :datatype-) "point_cloud_segmentation/BaseSegmentationParamsRequest")
(setf (get point_cloud_segmentation::BaseSegmentationParamsRequest :definition-)
      "float32[] x_cutoff
float32[] y_cutoff
float32[] z_cutoff
---
bool success

")

(setf (get point_cloud_segmentation::BaseSegmentationParamsResponse :md5sum-) "cc22b1ef630d46c7f989e768fadb8c56")
(setf (get point_cloud_segmentation::BaseSegmentationParamsResponse :datatype-) "point_cloud_segmentation/BaseSegmentationParamsResponse")
(setf (get point_cloud_segmentation::BaseSegmentationParamsResponse :definition-)
      "float32[] x_cutoff
float32[] y_cutoff
float32[] z_cutoff
---
bool success

")



(provide :point_cloud_segmentation/BaseSegmentationParams "cc22b1ef630d46c7f989e768fadb8c56")


