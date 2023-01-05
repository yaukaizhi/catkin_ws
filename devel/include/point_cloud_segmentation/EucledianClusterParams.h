// Generated by gencpp from file point_cloud_segmentation/EucledianClusterParams.msg
// DO NOT EDIT!


#ifndef POINT_CLOUD_SEGMENTATION_MESSAGE_EUCLEDIANCLUSTERPARAMS_H
#define POINT_CLOUD_SEGMENTATION_MESSAGE_EUCLEDIANCLUSTERPARAMS_H

#include <ros/service_traits.h>


#include <point_cloud_segmentation/EucledianClusterParamsRequest.h>
#include <point_cloud_segmentation/EucledianClusterParamsResponse.h>


namespace point_cloud_segmentation
{

struct EucledianClusterParams
{

typedef EucledianClusterParamsRequest Request;
typedef EucledianClusterParamsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct EucledianClusterParams
} // namespace point_cloud_segmentation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::point_cloud_segmentation::EucledianClusterParams > {
  static const char* value()
  {
    return "d48de43a8ae594a80e6df131e81e4f77";
  }

  static const char* value(const ::point_cloud_segmentation::EucledianClusterParams&) { return value(); }
};

template<>
struct DataType< ::point_cloud_segmentation::EucledianClusterParams > {
  static const char* value()
  {
    return "point_cloud_segmentation/EucledianClusterParams";
  }

  static const char* value(const ::point_cloud_segmentation::EucledianClusterParams&) { return value(); }
};


// service_traits::MD5Sum< ::point_cloud_segmentation::EucledianClusterParamsRequest> should match
// service_traits::MD5Sum< ::point_cloud_segmentation::EucledianClusterParams >
template<>
struct MD5Sum< ::point_cloud_segmentation::EucledianClusterParamsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::point_cloud_segmentation::EucledianClusterParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::EucledianClusterParamsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::point_cloud_segmentation::EucledianClusterParamsRequest> should match
// service_traits::DataType< ::point_cloud_segmentation::EucledianClusterParams >
template<>
struct DataType< ::point_cloud_segmentation::EucledianClusterParamsRequest>
{
  static const char* value()
  {
    return DataType< ::point_cloud_segmentation::EucledianClusterParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::EucledianClusterParamsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::point_cloud_segmentation::EucledianClusterParamsResponse> should match
// service_traits::MD5Sum< ::point_cloud_segmentation::EucledianClusterParams >
template<>
struct MD5Sum< ::point_cloud_segmentation::EucledianClusterParamsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::point_cloud_segmentation::EucledianClusterParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::EucledianClusterParamsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::point_cloud_segmentation::EucledianClusterParamsResponse> should match
// service_traits::DataType< ::point_cloud_segmentation::EucledianClusterParams >
template<>
struct DataType< ::point_cloud_segmentation::EucledianClusterParamsResponse>
{
  static const char* value()
  {
    return DataType< ::point_cloud_segmentation::EucledianClusterParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::EucledianClusterParamsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POINT_CLOUD_SEGMENTATION_MESSAGE_EUCLEDIANCLUSTERPARAMS_H