
(cl:in-package :asdf)

(defsystem "point_cloud_segmentation-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :point_cloud_segmentation-msg
               :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "BaseSegmentationParams" :depends-on ("_package_BaseSegmentationParams"))
    (:file "_package_BaseSegmentationParams" :depends-on ("_package"))
    (:file "ChangeSegmentationMethod" :depends-on ("_package_ChangeSegmentationMethod"))
    (:file "_package_ChangeSegmentationMethod" :depends-on ("_package"))
    (:file "EucledianClusterParams" :depends-on ("_package_EucledianClusterParams"))
    (:file "_package_EucledianClusterParams" :depends-on ("_package"))
    (:file "PlaneSegmentationParams" :depends-on ("_package_PlaneSegmentationParams"))
    (:file "_package_PlaneSegmentationParams" :depends-on ("_package"))
    (:file "RegionGrowingSegParams" :depends-on ("_package_RegionGrowingSegParams"))
    (:file "_package_RegionGrowingSegParams" :depends-on ("_package"))
    (:file "SegmentScene" :depends-on ("_package_SegmentScene"))
    (:file "_package_SegmentScene" :depends-on ("_package"))
    (:file "SuperClusteringSegParams" :depends-on ("_package_SuperClusteringSegParams"))
    (:file "_package_SuperClusteringSegParams" :depends-on ("_package"))
  ))