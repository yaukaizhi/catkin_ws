
(cl:in-package :asdf)

(defsystem "point_cloud_segmentation-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :pcl_msgs-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "SegmentedPointCloud" :depends-on ("_package_SegmentedPointCloud"))
    (:file "_package_SegmentedPointCloud" :depends-on ("_package"))
  ))