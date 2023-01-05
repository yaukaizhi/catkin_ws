// Generated by gencpp from file point_cloud_segmentation/SuperClusteringSegParamsResponse.msg
// DO NOT EDIT!


#ifndef POINT_CLOUD_SEGMENTATION_MESSAGE_SUPERCLUSTERINGSEGPARAMSRESPONSE_H
#define POINT_CLOUD_SEGMENTATION_MESSAGE_SUPERCLUSTERINGSEGPARAMSRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace point_cloud_segmentation
{
template <class ContainerAllocator>
struct SuperClusteringSegParamsResponse_
{
  typedef SuperClusteringSegParamsResponse_<ContainerAllocator> Type;

  SuperClusteringSegParamsResponse_()
    : success(false)  {
    }
  SuperClusteringSegParamsResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;





  typedef boost::shared_ptr< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> const> ConstPtr;

}; // struct SuperClusteringSegParamsResponse_

typedef ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<std::allocator<void> > SuperClusteringSegParamsResponse;

typedef boost::shared_ptr< ::point_cloud_segmentation::SuperClusteringSegParamsResponse > SuperClusteringSegParamsResponsePtr;
typedef boost::shared_ptr< ::point_cloud_segmentation::SuperClusteringSegParamsResponse const> SuperClusteringSegParamsResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator1> & lhs, const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator2> & rhs)
{
  return lhs.success == rhs.success;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator1> & lhs, const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace point_cloud_segmentation

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "point_cloud_segmentation/SuperClusteringSegParamsResponse";
  }

  static const char* value(const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n"
"\n"
;
  }

  static const char* value(const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct SuperClusteringSegParamsResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::point_cloud_segmentation::SuperClusteringSegParamsResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // POINT_CLOUD_SEGMENTATION_MESSAGE_SUPERCLUSTERINGSEGPARAMSRESPONSE_H