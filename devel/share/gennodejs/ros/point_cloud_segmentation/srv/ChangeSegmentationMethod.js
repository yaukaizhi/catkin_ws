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

class ChangeSegmentationMethodRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segmentation_method = null;
    }
    else {
      if (initObj.hasOwnProperty('segmentation_method')) {
        this.segmentation_method = initObj.segmentation_method
      }
      else {
        this.segmentation_method = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ChangeSegmentationMethodRequest
    // Serialize message field [segmentation_method]
    bufferOffset = _serializer.string(obj.segmentation_method, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeSegmentationMethodRequest
    let len;
    let data = new ChangeSegmentationMethodRequest(null);
    // Deserialize message field [segmentation_method]
    data.segmentation_method = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.segmentation_method);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/ChangeSegmentationMethodRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0a78fc2bf16f4378a3aaddc60b5dcbf3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string segmentation_method 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ChangeSegmentationMethodRequest(null);
    if (msg.segmentation_method !== undefined) {
      resolved.segmentation_method = msg.segmentation_method;
    }
    else {
      resolved.segmentation_method = ''
    }

    return resolved;
    }
};

class ChangeSegmentationMethodResponse {
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
    // Serializes a message object of type ChangeSegmentationMethodResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ChangeSegmentationMethodResponse
    let len;
    let data = new ChangeSegmentationMethodResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'point_cloud_segmentation/ChangeSegmentationMethodResponse';
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
    const resolved = new ChangeSegmentationMethodResponse(null);
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
  Request: ChangeSegmentationMethodRequest,
  Response: ChangeSegmentationMethodResponse,
  md5sum() { return '0291f58b1b9fc66d8f5c8659995fd485'; },
  datatype() { return 'point_cloud_segmentation/ChangeSegmentationMethod'; }
};
