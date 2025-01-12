// Auto-generated. Do not edit!

// (in-package hiwonder_servo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let RawIdPosDur = require('./RawIdPosDur.js');

//-----------------------------------------------------------

class MultiRawIdPosDur {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id_pos_dur_list = null;
    }
    else {
      if (initObj.hasOwnProperty('id_pos_dur_list')) {
        this.id_pos_dur_list = initObj.id_pos_dur_list
      }
      else {
        this.id_pos_dur_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiRawIdPosDur
    // Serialize message field [id_pos_dur_list]
    // Serialize the length for message field [id_pos_dur_list]
    bufferOffset = _serializer.uint32(obj.id_pos_dur_list.length, buffer, bufferOffset);
    obj.id_pos_dur_list.forEach((val) => {
      bufferOffset = RawIdPosDur.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiRawIdPosDur
    let len;
    let data = new MultiRawIdPosDur(null);
    // Deserialize message field [id_pos_dur_list]
    // Deserialize array length for message field [id_pos_dur_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.id_pos_dur_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.id_pos_dur_list[i] = RawIdPosDur.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 5 * object.id_pos_dur_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_servo_msgs/MultiRawIdPosDur';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '219f46020f0bb7e7755eb26cd4b971ed';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    RawIdPosDur[] id_pos_dur_list
    ================================================================================
    MSG: hiwonder_servo_msgs/RawIdPosDur
    uint8 id
    uint16 position
    uint16 duration
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MultiRawIdPosDur(null);
    if (msg.id_pos_dur_list !== undefined) {
      resolved.id_pos_dur_list = new Array(msg.id_pos_dur_list.length);
      for (let i = 0; i < resolved.id_pos_dur_list.length; ++i) {
        resolved.id_pos_dur_list[i] = RawIdPosDur.Resolve(msg.id_pos_dur_list[i]);
      }
    }
    else {
      resolved.id_pos_dur_list = []
    }

    return resolved;
    }
};

module.exports = MultiRawIdPosDur;
