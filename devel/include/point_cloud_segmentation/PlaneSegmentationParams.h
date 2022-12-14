// Generated by gencpp from file point_cloud_segmentation/PlaneSegmentationParams.msg
// DO NOT EDIT!


#ifndef POINT_CLOUD_SEGMENTATION_MESSAGE_PLANESEGMENTATIONPARAMS_H
#define POINT_CLOUD_SEGMENTATION_MESSAGE_PLANESEGMENTATIONPARAMS_H

#include <ros/service_traits.h>


#include <point_cloud_segmentation/PlaneSegmentationParamsRequest.h>
#include <point_cloud_segmentation/PlaneSegmentationParamsResponse.h>


namespace point_cloud_segmentation
{

struct PlaneSegmentationParams
{

typedef PlaneSegmentationParamsRequest Request;
typedef PlaneSegmentationParamsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PlaneSegmentationParams
} // namespace point_cloud_segmentation


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParams > {
  static const char* value()
  {
    return "d02ed7e78b432c5e664e517844ee3d93";
  }

  static const char* value(const ::point_cloud_segmentation::PlaneSegmentationParams&) { return value(); }
};

template<>
struct DataType< ::point_cloud_segmentation::PlaneSegmentationParams > {
  static const char* value()
  {
    return "point_cloud_segmentation/PlaneSegmentationParams";
  }

  static const char* value(const ::point_cloud_segmentation::PlaneSegmentationParams&) { return value(); }
};


// service_traits::MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParamsRequest> should match
// service_traits::MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParams >
template<>
struct MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParamsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::PlaneSegmentationParamsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::point_cloud_segmentation::PlaneSegmentationParamsRequest> should match
// service_traits::DataType< ::point_cloud_segmentation::PlaneSegmentationParams >
template<>
struct DataType< ::point_cloud_segmentation::PlaneSegmentationParamsRequest>
{
  static const char* value()
  {
    return DataType< ::point_cloud_segmentation::PlaneSegmentationParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::PlaneSegmentationParamsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParamsResponse> should match
// service_traits::MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParams >
template<>
struct MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParamsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::point_cloud_segmentation::PlaneSegmentationParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::PlaneSegmentationParamsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::point_cloud_segmentation::PlaneSegmentationParamsResponse> should match
// service_traits::DataType< ::point_cloud_segmentation::PlaneSegmentationParams >
template<>
struct DataType< ::point_cloud_segmentation::PlaneSegmentationParamsResponse>
{
  static const char* value()
  {
    return DataType< ::point_cloud_segmentation::PlaneSegmentationParams >::value();
  }
  static const char* value(const ::point_cloud_segmentation::PlaneSegmentationParamsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // POINT_CLOUD_SEGMENTATION_MESSAGE_PLANESEGMENTATIONPARAMS_H
