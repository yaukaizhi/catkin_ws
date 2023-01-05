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

class BaseSegmentationParamsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.x_cutoff = null;
      this.y_cutoff = null;
      this.z_cutoff = null;
    }
    else {
      if (initObj.hasOwnProperty('x_cutoff')) {
        this.x_cutoff = initObj.x_cutoff
      }
      else {
        this.x_cutoff = [];
      }
      if (initObj.hasOwnProperty('y_cutoff')) {
        this.y_cutoff = initObj.y_cutoff
      }
      else {
        this.y_cutoff = [];
      }
      if (initObj.hasOwnProperty('z_cutoff')) {
        this.z_cutoff = initObj.z_cutoff
      }
      else {
        this.z_cutoff = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BaseSegmentationParamsRequest
    // Serialize message field [x_cutoff]
    bufferOffset = _arraySerializer.float32(obj.x_cutoff, buffer, bufferOffset, null);
    // Serialize message field [y_cutoff]
    bufferOffset = _arraySerializer.float32(obj.y_cutoff, buffer, bufferOffset, null);
    // Serialize message field [z_cutoff]
    bufferOffset = _arraySerializer.float32(obj.z_cutoff, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseSegmentationParamsRequest
    let len;
    let data = new BaseSegmentationParamsRequest(null);
    // Deserialize message field [x_cutoff]
    data.x_cutoff = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y_cutoff]
    data.y_cutoff = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z_cutoff]
    data.z_cutoff = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.x_cutoff.length;
    length += 4 * object.y_cutoff.length;
    length += 4 * object.z_cutoff.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/BaseSegmentationParamsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0f6f54b90feaf8d3f28f0f1c6adf313b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] x_cutoff
    float32[] y_cutoff
    float32[] z_cutoff
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new BaseSegmentationParamsRequest(null);
    if (msg.x_cutoff !== undefined) {
      resolved.x_cutoff = msg.x_cutoff;
    }
    else {
      resolved.x_cutoff = []
    }

    if (msg.y_cutoff !== undefined) {
      resolved.y_cutoff = msg.y_cutoff;
    }
    else {
      resolved.y_cutoff = []
    }

    if (msg.z_cutoff !== undefined) {
      resolved.z_cutoff = msg.z_cutoff;
    }
    else {
      resolved.z_cutoff = []
    }

    return resolved;
    }
};

class BaseSegmentationParamsResponse {
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
    // Serializes a message object of type BaseSegmentationParamsResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BaseSegmentationParamsResponse
    let len;
    let data = new BaseSegmentationParamsResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/BaseSegmentationParamsResponse';
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
    const resolved = new BaseSegmentationParamsResponse(null);
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
  Request: BaseSegmentationParamsRequest,
  Response: BaseSegmentationParamsResponse,
  md5sum() { return 'cc22b1ef630d46c7f989e768fadb8c56'; },
  datatype() { return 'point_cloud_segmentation/BaseSegmentationParams'; }
};
