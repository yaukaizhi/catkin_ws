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

class EucledianClusterParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inlier_threshold = null;
      this.max_iters = null;
      this.leaf_size = null;
      this.min_cluster_size = null;
      this.max_cluster_size = null;
      this.cluster_tolerance = null;
    }
    else {
      if (initObj.hasOwnProperty('inlier_threshold')) {
        this.inlier_threshold = initObj.inlier_threshold
      }
      else {
        this.inlier_threshold = 0.0;
      }
      if (initObj.hasOwnProperty('max_iters')) {
        this.max_iters = initObj.max_iters
      }
      else {
        this.max_iters = 0;
      }
      if (initObj.hasOwnProperty('leaf_size')) {
        this.leaf_size = initObj.leaf_size
      }
      else {
        this.leaf_size = 0.0;
      }
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
      if (initObj.hasOwnProperty('cluster_tolerance')) {
        this.cluster_tolerance = initObj.cluster_tolerance
      }
      else {
        this.cluster_tolerance = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EucledianClusterParamsRequest
    // Serialize message field [inlier_threshold]
    bufferOffset = _serializer.float32(obj.inlier_threshold, buffer, bufferOffset);
    // Serialize message field [max_iters]
    bufferOffset = _serializer.int32(obj.max_iters, buffer, bufferOffset);
    // Serialize message field [leaf_size]
    bufferOffset = _serializer.float32(obj.leaf_size, buffer, bufferOffset);
    // Serialize message field [min_cluster_size]
    bufferOffset = _serializer.int32(obj.min_cluster_size, buffer, bufferOffset);
    // Serialize message field [max_cluster_size]
    bufferOffset = _serializer.int32(obj.max_cluster_size, buffer, bufferOffset);
    // Serialize message field [cluster_tolerance]
    bufferOffset = _serializer.float32(obj.cluster_tolerance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EucledianClusterParamsRequest
    let len;
    let data = new EucledianClusterParamsRequest(null);
    // Deserialize message field [inlier_threshold]
    data.inlier_threshold = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_iters]
    data.max_iters = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [leaf_size]
    data.leaf_size = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [min_cluster_size]
    data.min_cluster_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [max_cluster_size]
    data.max_cluster_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cluster_tolerance]
    data.cluster_tolerance = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/EucledianClusterParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '71ff36b3407f0aba984bdadb41334b11';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 inlier_threshold
    int32 max_iters
    float32 leaf_size
    int32 min_cluster_size
    int32 max_cluster_size
    float32 cluster_tolerance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EucledianClusterParamsRequest(null);
    if (msg.inlier_threshold !== undefined) {
      resolved.inlier_threshold = msg.inlier_threshold;
    }
    else {
      resolved.inlier_threshold = 0.0
    }

    if (msg.max_iters !== undefined) {
      resolved.max_iters = msg.max_iters;
    }
    else {
      resolved.max_iters = 0
    }

    if (msg.leaf_size !== undefined) {
      resolved.leaf_size = msg.leaf_size;
    }
    else {
      resolved.leaf_size = 0.0
    }

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

    if (msg.cluster_tolerance !== undefined) {
      resolved.cluster_tolerance = msg.cluster_tolerance;
    }
    else {
      resolved.cluster_tolerance = 0.0
    }

    return resolved;
    }
};

class EucledianClusterParamsResponse {
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
    // Serializes a message object of type EucledianClusterParamsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EucledianClusterParamsResponse
    let len;
    let data = new EucledianClusterParamsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/EucledianClusterParamsResponse';
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
    const resolved = new EucledianClusterParamsResponse(null);
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
  Request: EucledianClusterParamsRequest,
  Response: EucledianClusterParamsResponse,
  md5sum() { return 'd48de43a8ae594a80e6df131e81e4f77'; },
  datatype() { return 'point_cloud_segmentation/EucledianClusterParams'; }
};
