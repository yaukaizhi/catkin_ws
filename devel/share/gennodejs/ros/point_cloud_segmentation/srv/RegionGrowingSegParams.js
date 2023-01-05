// Auto-generated. Do not edit!

// (in-package point_cloud_segmentation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class RegionGrowingSegParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.min_cluster_size = null;
      this.max_cluster_size = null;
      this.number_of_neighbors = null;
      this.smoothness_threshold = null;
      this.curvature_threshold = null;
    }
    else {
      if (initObj.hasOwnProperty('min_cluster_size')) {
        this.min_cluster_size = initObj.min_cluster_size
      }
      else {
        this.min_cluster_size = 0;
      }
      if (initObj.hasOwnProperty('max_cluster_size')) {
        this.max_cluster_size = initObj.max_cluster_size
      }
      else {
        this.max_cluster_size = 0;
      }
      if (initObj.hasOwnProperty('number_of_neighbors')) {
        this.number_of_neighbors = initObj.number_of_neighbors
      }
      else {
        this.number_of_neighbors = 0;
      }
      if (initObj.hasOwnProperty('smoothness_threshold')) {
        this.smoothness_threshold = initObj.smoothness_threshold
      }
      else {
        this.smoothness_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('curvature_threshold')) {
        this.curvature_threshold = initObj.curvature_threshold
      }
      else {
        this.curvature_threshold = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegionGrowingSegParamsRequest
    // Serialize message field [min_cluster_size]
    bufferOffset = _serializer.int32(obj.min_cluster_size, buffer, bufferOffset);
    // Serialize message field [max_cluster_size]
    bufferOffset = _serializer.int32(obj.max_cluster_size, buffer, bufferOffset);
    // Serialize message field [number_of_neighbors]
    bufferOffset = _serializer.int32(obj.number_of_neighbors, buffer, bufferOffset);
    // Serialize message field [smoothness_threshold]
    bufferOffset = _serializer.float32(obj.smoothness_threshold, buffer, bufferOffset);
    // Serialize message field [curvature_threshold]
    bufferOffset = _serializer.float32(obj.curvature_threshold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegionGrowingSegParamsRequest
    let len;
    let data = new RegionGrowingSegParamsRequest(null);
    // Deserialize message field [min_cluster_size]
    data.min_cluster_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_cluster_size]
    data.max_cluster_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [number_of_neighbors]
    data.number_of_neighbors = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [smoothness_threshold]
    data.smoothness_threshold = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [curvature_threshold]
    data.curvature_threshold = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/RegionGrowingSegParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd9520a3184deb762b75616b536b765e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 min_cluster_size
    int32 max_cluster_size
    int32 number_of_neighbors
    float32 smoothness_threshold
    float32 curvature_threshold
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegionGrowingSegParamsRequest(null);
    if (msg.min_cluster_size !== undefined) {
      resolved.min_cluster_size = msg.min_cluster_size;
    }
    else {
      resolved.min_cluster_size = 0
    }

    if (msg.max_cluster_size !== undefined) {
      resolved.max_cluster_size = msg.max_cluster_size;
    }
    else {
      resolved.max_cluster_size = 0
    }

    if (msg.number_of_neighbors !== undefined) {
      resolved.number_of_neighbors = msg.number_of_neighbors;
    }
    else {
      resolved.number_of_neighbors = 0
    }

    if (msg.smoothness_threshold !== undefined) {
      resolved.smoothness_threshold = msg.smoothness_threshold;
    }
    else {
      resolved.smoothness_threshold = 0.0
    }

    if (msg.curvature_threshold !== undefined) {
      resolved.curvature_threshold = msg.curvature_threshold;
    }
    else {
      resolved.curvature_threshold = 0.0
    }

    return resolved;
    }
};

class RegionGrowingSegParamsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RegionGrowingSegParamsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RegionGrowingSegParamsResponse
    let len;
    let data = new RegionGrowingSegParamsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/RegionGrowingSegParamsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RegionGrowingSegParamsResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: RegionGrowingSegParamsRequest,
  Response: RegionGrowingSegParamsResponse,
  md5sum() { return '38336d175b585d3b451f02cd0a82d0d1'; },
  datatype() { return 'point_cloud_segmentation/RegionGrowingSegParams'; }
};
