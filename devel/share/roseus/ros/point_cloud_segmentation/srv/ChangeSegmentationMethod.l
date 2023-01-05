;; Auto-generated. Do not edit!


(when (boundp 'point_cloud_segmentation::ChangeSegmentationMethod)
  (if (not (find-package "POINT_CLOUD_SEGMENTATION"))
    (make-package "POINT_CLOUD_SEGMENTATION"))
  (shadow 'ChangeSegmentationMethod (find-package "POINT_CLOUD_SEGMENTATION")))
(unless (find-package "POINT_CLOUD_SEGMENTATION::CHANGESEGMENTATIONMETHOD")
  (make-package "POINT_CLOUD_SEGMENTATION::CHANGESEGMENTATIONMETHOD"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::CHANGESEGMENTATIONMETHODREQUEST")
  (make-package "POINT_CLOUD_SEGMENTATION::CHANGESEGMENTATIONMETHODREQUEST"))
(unless (find-package "POINT_CLOUD_SEGMENTATION::CHANGESEGMENTATIONMETHODRESPONSE")
  (make-package "POINT_CLOUD_SEGMENTATION::CHANGESEGMENTATIONMETHODRESPONSE"))

(in-package "ROS")





(defclass point_cloud_segmentation::ChangeSegmentationMethodRequest
  :super ros::object
  :slots (_segmentation_method ))

(defmethod point_cloud_segmentation::ChangeSegmentationMethodRequest
  (:init
   (&key
    ((:segmentation_method __segmentation_method) "")
    )
   (send-super :init)
   (setq _segmentation_method (string __segmentation_method))
   self)
  (:segmentation_method
   (&optional __segmentation_method)
   (if __segmentation_method (setq _segmentation_method __segmentation_method)) _segmentation_method)
  (:serialization-length
   ()
   (+
    ;; string _segmentation_method
    4 (length _segmentation_method)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _segmentation_method
       (write-long (length _segmentation_method) s) (princ _segmentation_method s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _segmentation_method
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _segmentation_method (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass point_cloud_segmentation::ChangeSegmentationMethodResponse
  :super ros::object
  :slots (_success ))

(defmethod point_cloud_segmentation::ChangeSegmentationMethodResponse
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

(defclass point_cloud_segmentation::ChangeSegmentationMethod
  :super ros::object
  :slots ())

(setf (get point_cloud_segmentation::ChangeSegmentationMethod :md5sum-) "0291f58b1b9fc66d8f5c8659995fd485")
(setf (get point_cloud_segmentation::ChangeSegmentationMethod :datatype-) "point_cloud_segmentation/ChangeSegmentationMethod")
(setf (get point_cloud_segmentation::ChangeSegmentationMethod :request) point_cloud_segmentation::ChangeSegmentationMethodRequest)
(setf (get point_cloud_segmentation::ChangeSegmentationMethod :response) point_cloud_segmentation::ChangeSegmentationMethodResponse)

(defmethod point_cloud_segmentation::ChangeSegmentationMethodRequest
  (:response () (instance point_cloud_segmentation::ChangeSegmentationMethodResponse :init)))

(setf (get point_cloud_segmentation::ChangeSegmentationMethodRequest :md5sum-) "0291f58b1b9fc66d8f5c8659995fd485")
(setf (get point_cloud_segmentation::ChangeSegmentationMethodRequest :datatype-) "point_cloud_segmentation/ChangeSegmentationMethodRequest")
(setf (get point_cloud_segmentation::ChangeSegmentationMethodRequest :definition-)
      "string segmentation_method 
---
bool success 

")

(setf (get point_cloud_segmentation::ChangeSegmentationMethodResponse :md5sum-) "0291f58b1b9fc66d8f5c8659995fd485")
(setf (get point_cloud_segmentation::ChangeSegmentationMethodResponse :datatype-) "point_cloud_segmentation/ChangeSegmentationMethodResponse")
(setf (get point_cloud_segmentation::ChangeSegmentationMethodResponse :definition-)
      "string segmentation_method 
---
bool success 

")



(provide :point_cloud_segmentation/ChangeSegmentationMethod "0291f58b1b9fc66d8f5c8659995fd485")


