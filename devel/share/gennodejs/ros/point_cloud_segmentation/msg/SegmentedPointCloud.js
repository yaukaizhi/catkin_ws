// Auto-generated. Do not edit!

// (in-package point_cloud_segmentation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let sensor_msgs = _finder('sensor_msgs');
let pcl_msgs = _finder('pcl_msgs');

//-----------------------------------------------------------

class SegmentedPointCloud {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.colored_cloud = null;
      this.segmented_clouds = null;
      this.Indices = null;
    }
    else {
      if (initObj.hasOwnProperty('colored_cloud')) {
        this.colored_cloud = initObj.colored_cloud
      }
      else {
        this.colored_cloud = new sensor_msgs.msg.PointCloud2();
      }
      if (initObj.hasOwnProperty('segmented_clouds')) {
        this.segmented_clouds = initObj.segmented_clouds
      }
      else {
        this.segmented_clouds = [];
      }
      if (initObj.hasOwnProperty('Indices')) {
        this.Indices = initObj.Indices
      }
      else {
        this.Indices = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SegmentedPointCloud
    // Serialize message field [colored_cloud]
    bufferOffset = sensor_msgs.msg.PointCloud2.serialize(obj.colored_cloud, buffer, bufferOffset);
    // Serialize message field [segmented_clouds]
    // Serialize the length for message field [segmented_clouds]
    bufferOffset = _serializer.uint32(obj.segmented_clouds.length, buffer, bufferOffset);
    obj.segmented_clouds.forEach((val) => {
      bufferOffset = sensor_msgs.msg.PointCloud2.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [Indices]
    // Serialize the length for message field [Indices]
    bufferOffset = _serializer.uint32(obj.Indices.length, buffer, bufferOffset);
    obj.Indices.forEach((val) => {
      bufferOffset = pcl_msgs.msg.PointIndices.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SegmentedPointCloud
    let len;
    let data = new SegmentedPointCloud(null);
    // Deserialize message field [colored_cloud]
    data.colored_cloud = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset);
    // Deserialize message field [segmented_clouds]
    // Deserialize array length for message field [segmented_clouds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.segmented_clouds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.segmented_clouds[i] = sensor_msgs.msg.PointCloud2.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [Indices]
    // Deserialize array length for message field [Indices]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.Indices = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.Indices[i] = pcl_msgs.msg.PointIndices.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += sensor_msgs.msg.PointCloud2.getMessageSize(object.colored_cloud);
    object.segmented_clouds.forEach((val) => {
      length += sensor_msgs.msg.PointCloud2.getMessageSize(val);
    });
    object.Indices.forEach((val) => {
      length += pcl_msgs.msg.PointIndices.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'point_cloud_segmentation/SegmentedPointCloud';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'de2facbd278fbba0807c93f7d2ffd96f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new SegmentedPointCloud(null);
    if (msg.colored_cloud !== undefined) {
      resolved.colored_cloud = sensor_msgs.msg.PointCloud2.Resolve(msg.colored_cloud)
    }
    else {
      resolved.colored_cloud = new sensor_msgs.msg.PointCloud2()
    }

    if (msg.segmented_clouds !== undefined) {
      resolved.segmented_clouds = new Array(msg.segmented_clouds.length);
      for (let i = 0; i < resolved.segmented_clouds.length; ++i) {
        resolved.segmented_clouds[i] = sensor_msgs.msg.PointCloud2.Resolve(msg.segmented_clouds[i]);
      }
    }
    else {
      resolved.segmented_clouds = []
    }

    if (msg.Indices !== undefined) {
      resolved.Indices = new Array(msg.Indices.length);
      for (let i = 0; i < resolved.Indices.length; ++i) {
        resolved.Indices[i] = pcl_msgs.msg.PointIndices.Resolve(msg.Indices[i]);
      }
    }
    else {
      resolved.Indices = []
    }

    return resolved;
    }
};

module.exports = SegmentedPointCloud;
