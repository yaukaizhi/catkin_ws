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

class SuperClusteringSegParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.voxel_resolution = null;
      this.seed_resolution = null;
      this.color_importance = null;
      this.spatial_importance = null;
      this.normal_importance = null;
      this.threshold = null;
      this.rgb_color_space = null;
      this.convexity_criterion = null;
      this.adapt_lambda = null;
      this.equalization = null;
    }
    else {
      if (initObj.hasOwnProperty('voxel_resolution')) {
        this.voxel_resolution = initObj.voxel_resolution
      }
      else {
        this.voxel_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('seed_resolution')) {
        this.seed_resolution = initObj.seed_resolution
      }
      else {
        this.seed_resolution = 0.0;
      }
      if (initObj.hasOwnProperty('color_importance')) {
        this.color_importance = initObj.color_importance
      }
      else {
        this.color_importance = 0.0;
      }
      if (initObj.hasOwnProperty('spatial_importance')) {
        this.spatial_importance = initObj.spatial_importance
      }
      else {
        this.spatial_importance = 0.0;
      }
      if (initObj.hasOwnProperty('normal_importance')) {
        this.normal_importance = initObj.normal_importance
      }
      else {
        this.normal_importance = 0.0;
      }
      if (initObj.hasOwnProperty('threshold')) {
        this.threshold = initObj.threshold
      }
      else {
        this.threshold = 0.0;
      }
      if (initObj.hasOwnProperty('rgb_color_space')) {
        this.rgb_color_space = initObj.rgb_color_space
      }
      else {
        this.rgb_color_space = false;
      }
      if (initObj.hasOwnProperty('convexity_criterion')) {
        this.convexity_criterion = initObj.convexity_criterion
      }
      else {
        this.convexity_criterion = false;
      }
      if (initObj.hasOwnProperty('adapt_lambda')) {
        this.adapt_lambda = initObj.adapt_lambda
      }
      else {
        this.adapt_lambda = false;
      }
      if (initObj.hasOwnProperty('equalization')) {
        this.equalization = initObj.equalization
      }
      else {
        this.equalization = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SuperClusteringSegParamsRequest
    // Serialize message field [voxel_resolution]
    bufferOffset = _serializer.float32(obj.voxel_resolution, buffer, bufferOffset);
    // Serialize message field [seed_resolution]
    bufferOffset = _serializer.float32(obj.seed_resolution, buffer, bufferOffset);
    // Serialize message field [color_importance]
    bufferOffset = _serializer.float32(obj.color_importance, buffer, bufferOffset);
    // Serialize message field [spatial_importance]
    bufferOffset = _serializer.float32(obj.spatial_importance, buffer, bufferOffset);
    // Serialize message field [normal_importance]
    bufferOffset = _serializer.float32(obj.normal_importance, buffer, bufferOffset);
    // Serialize message field [threshold]
    bufferOffset = _serializer.float32(obj.threshold, buffer, bufferOffset);
    // Serialize message field [rgb_color_space]
    bufferOffset = _serializer.bool(obj.rgb_color_space, buffer, bufferOffset);
    // Serialize message field [convexity_criterion]
    bufferOffset = _serializer.bool(obj.convexity_criterion, buffer, bufferOffset);
    // Serialize message field [adapt_lambda]
    bufferOffset = _serializer.bool(obj.adapt_lambda, buffer, bufferOffset);
    // Serialize message field [equalization]
    bufferOffset = _serializer.bool(obj.equalization, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuperClusteringSegParamsRequest
    let len;
    let data = new SuperClusteringSegParamsRequest(null);
    // Deserialize message field [voxel_resolution]
    data.voxel_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [seed_resolution]
    data.seed_resolution = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [color_importance]
    data.color_importance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [spatial_importance]
    data.spatial_importance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [normal_importance]
    data.normal_importance = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [threshold]
    data.threshold = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [rgb_color_space]
    data.rgb_color_space = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [convexity_criterion]
    data.convexity_criterion = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [adapt_lambda]
    data.adapt_lambda = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [equalization]
    data.equalization = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/SuperClusteringSegParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7dd191b5149b3c94cf53205856b53c7f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 voxel_resolution
    float32 seed_resolution
    float32 color_importance
    float32 spatial_importance
    float32 normal_importance
    float32 threshold
    bool rgb_color_space
    bool convexity_criterion
    bool adapt_lambda
    bool equalization
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SuperClusteringSegParamsRequest(null);
    if (msg.voxel_resolution !== undefined) {
      resolved.voxel_resolution = msg.voxel_resolution;
    }
    else {
      resolved.voxel_resolution = 0.0
    }

    if (msg.seed_resolution !== undefined) {
      resolved.seed_resolution = msg.seed_resolution;
    }
    else {
      resolved.seed_resolution = 0.0
    }

    if (msg.color_importance !== undefined) {
      resolved.color_importance = msg.color_importance;
    }
    else {
      resolved.color_importance = 0.0
    }

    if (msg.spatial_importance !== undefined) {
      resolved.spatial_importance = msg.spatial_importance;
    }
    else {
      resolved.spatial_importance = 0.0
    }

    if (msg.normal_importance !== undefined) {
      resolved.normal_importance = msg.normal_importance;
    }
    else {
      resolved.normal_importance = 0.0
    }

    if (msg.threshold !== undefined) {
      resolved.threshold = msg.threshold;
    }
    else {
      resolved.threshold = 0.0
    }

    if (msg.rgb_color_space !== undefined) {
      resolved.rgb_color_space = msg.rgb_color_space;
    }
    else {
      resolved.rgb_color_space = false
    }

    if (msg.convexity_criterion !== undefined) {
      resolved.convexity_criterion = msg.convexity_criterion;
    }
    else {
      resolved.convexity_criterion = false
    }

    if (msg.adapt_lambda !== undefined) {
      resolved.adapt_lambda = msg.adapt_lambda;
    }
    else {
      resolved.adapt_lambda = false
    }

    if (msg.equalization !== undefined) {
      resolved.equalization = msg.equalization;
    }
    else {
      resolved.equalization = false
    }

    return resolved;
    }
};

class SuperClusteringSegParamsResponse {
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
    // Serializes a message object of type SuperClusteringSegParamsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SuperClusteringSegParamsResponse
    let len;
    let data = new SuperClusteringSegParamsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/SuperClusteringSegParamsResponse';
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
    const resolved = new SuperClusteringSegParamsResponse(null);
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
  Request: SuperClusteringSegParamsRequest,
  Response: SuperClusteringSegParamsResponse,
  md5sum() { return '856257f6ec8c4470a3201718c51e1da6'; },
  datatype() { return 'point_cloud_segmentation/SuperClusteringSegParams'; }
};
