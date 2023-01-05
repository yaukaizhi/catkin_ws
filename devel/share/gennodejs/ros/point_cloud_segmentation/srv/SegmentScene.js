// Auto-generated. Do not edit!

// (in-package point_cloud_segmentation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');

//-----------------------------------------------------------

let SegmentedPointCloud = require('../msg/SegmentedPointCloud.js');

//-----------------------------------------------------------

class SegmentSceneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cloud_in = null;
    }
    else {
      if (initObj.hasOwnProperty('cloud_in')) {
        this.cloud_in = initObj.cloud_in
      }
      else {
        this.cloud_in = new sensor_msgs.msg.PointCloud2();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SegmentSceneRequest
    // Serialize message field [cloud_in]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.cloud_in, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SegmentSceneRequest
    let len;
    let data = new SegmentSceneRequest(null);
    // Deserialize message field [cloud_in]
    data.cloud_in = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.cloud_in);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/SegmentSceneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd6baad1c61b70905e9fb3abd9ede0480';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    sensor_msgs/PointCloud2 cloud_in
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SegmentSceneRequest(null);
    if (msg.cloud_in !== undefined) {
      resolved.cloud_in = sensor_msgs.msg.PointCloud2.Resolve(msg.cloud_in)
    }
    else {
      resolved.cloud_in = new sensor_msgs.msg.PointCloud2()
    }

    return resolved;
    }
};

class SegmentSceneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segmented_scene = null;
    }
    else {
      if (initObj.hasOwnProperty('segmented_scene')) {
        this.segmented_scene = initObj.segmented_scene
      }
      else {
        this.segmented_scene = new SegmentedPointCloud();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SegmentSceneResponse
    // Serialize message field [segmented_scene]
    bufferOffset = SegmentedPointCloud.serialize(obj.segmented_scene, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SegmentSceneResponse
    let len;
    let data = new SegmentSceneResponse(null);
    // Deserialize message field [segmented_scene]
    data.segmented_scene = SegmentedPointCloud.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += SegmentedPointCloud.getMessageSize(object.segmented_scene);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/SegmentSceneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1af69f9ffcca366c2db4a28db23c35fe';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    SegmentedPointCloud segmented_scene
    
    
    ================================================================================
    MSG: point_cloud_segmentation/SegmentedPointCloud
    sensor_msgs/PointCloud2 colored_cloud 
    sensor_msgs/PointCloud2[] segmented_clouds
    pcl_msgs/PointIndices[] Indices
    
    ================================================================================
    MSG: sensor_msgs/PointCloud2
    # This message holds a collection of N-dimensional points, which may
    # contain additional information such as normals, intensity, etc. The
    # point data is stored as a binary blob, its layout described by the
    # contents of the "fields" array.
    
    # The point cloud data may be organized 2d (image-like) or 1d
    # (unordered). Point clouds organized as 2d images may be produced by
    # camera depth sensors such as stereo or time-of-flight.
    
    # Time of sensor data acquisition, and the coordinate frame ID (for 3d
    # points).
    Header header
    
    # 2D structure of the point cloud. If the cloud is unordered, height is
    # 1 and width is the length of the point cloud.
    uint32 height
    uint32 width
    
    # Describes the channels and their layout in the binary data blob.
    PointField[] fields
    
    bool    is_bigendian # Is this data bigendian?
    uint32  point_step   # Length of a point in bytes
    uint32  row_step     # Length of a row in bytes
    uint8[] data         # Actual point data, size is (row_step*height)
    
    bool is_dense        # True if there are no invalid points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: sensor_msgs/PointField
    # This message holds the description of one point entry in the
    # PointCloud2 message format.
    uint8 INT8    = 1
    uint8 UINT8   = 2
    uint8 INT16   = 3
    uint8 UINT16  = 4
    uint8 INT32   = 5
    uint8 UINT32  = 6
    uint8 FLOAT32 = 7
    uint8 FLOAT64 = 8
    
    string name      # Name of field
    uint32 offset    # Offset from start of point struct
    uint8  datatype  # Datatype enumeration, see above
    uint32 count     # How many elements in the field
    
    ================================================================================
    MSG: pcl_msgs/PointIndices
    Header header
    int32[] indices
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SegmentSceneResponse(null);
    if (msg.segmented_scene !== undefined) {
      resolved.segmented_scene = SegmentedPointCloud.Resolve(msg.segmented_scene)
    }
    else {
      resolved.segmented_scene = new SegmentedPointCloud()
    }

    return resolved;
    }
};

module.exports = {
  Request: SegmentSceneRequest,
  Response: SegmentSceneResponse,
  md5sum() { return 'd67a831539406124d35c176a9550dd53'; },
  datatype() { return 'point_cloud_segmentation/SegmentScene'; }
};
