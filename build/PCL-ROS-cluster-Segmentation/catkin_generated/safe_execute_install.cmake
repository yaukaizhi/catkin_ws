execute_process(COMMAND "/home/kai/catkin_ws/build/PCL-ROS-cluster-Segmentation/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/kai/catkin_ws/build/PCL-ROS-cluster-Segmentation/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
