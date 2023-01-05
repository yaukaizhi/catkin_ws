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

class PlaneSegmentationParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.inlier_threshold = null;
      this.max_iters = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PlaneSegmentationParamsRequest
    // Serialize message field [inlier_threshold]
    bufferOffset = _serializer.float32(obj.inlier_threshold, buffer, bufferOffset);
    // Serialize message field [max_iters]
    bufferOffset = _serializer.int32(obj.max_iters, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaneSegmentationParamsRequest
    let len;
    let data = new PlaneSegmentationParamsRequest(null);
    // Deserialize message field [inlier_threshold]
    data.inlier_threshold = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [max_iters]
    data.max_iters = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/PlaneSegmentationParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4f59114d8d02ae7d822f03227e75ae1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 inlier_threshold
    int32 max_iters
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaneSegmentationParamsRequest(null);
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

    return resolved;
    }
};

class PlaneSegmentationParamsResponse {
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
    // Serializes a message object of type PlaneSegmentationParamsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaneSegmentationParamsResponse
    let len;
    let data = new PlaneSegmentationParamsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/PlaneSegmentationParamsResponse';
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
    const resolved = new PlaneSegmentationParamsResponse(null);
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
  Request: PlaneSegmentationParamsRequest,
  Response: PlaneSegmentationParamsResponse,
  md5sum() { return 'd02ed7e78b432c5e664e517844ee3d93'; },
  datatype() { return 'point_cloud_segmentation/PlaneSegmentationParams'; }
};
