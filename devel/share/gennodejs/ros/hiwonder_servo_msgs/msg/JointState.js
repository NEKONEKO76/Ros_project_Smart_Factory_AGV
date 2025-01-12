// Auto-generated. Do not edit!

// (in-package hiwonder_servo_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.servo_ids = null;
      this.servo_temps = null;
      this.goal_pos = null;
      this.current_pos = null;
      this.error = null;
      this.velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('servo_ids')) {
        this.servo_ids = initObj.servo_ids
      }
      else {
        this.servo_ids = [];
      }
      if (initObj.hasOwnProperty('servo_temps')) {
        this.servo_temps = initObj.servo_temps
      }
      else {
        this.servo_temps = [];
      }
      if (initObj.hasOwnProperty('goal_pos')) {
        this.goal_pos = initObj.goal_pos
      }
      else {
        this.goal_pos = 0.0;
      }
      if (initObj.hasOwnProperty('current_pos')) {
        this.current_pos = initObj.current_pos
      }
      else {
        this.current_pos = 0.0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0.0;
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [servo_ids]
    bufferOffset = _arraySerializer.int32(obj.servo_ids, buffer, bufferOffset, null);
    // Serialize message field [servo_temps]
    bufferOffset = _arraySerializer.int32(obj.servo_temps, buffer, bufferOffset, null);
    // Serialize message field [goal_pos]
    bufferOffset = _serializer.float64(obj.goal_pos, buffer, bufferOffset);
    // Serialize message field [current_pos]
    bufferOffset = _serializer.float64(obj.current_pos, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.float64(obj.error, buffer, bufferOffset);
    // Serialize message field [velocity]
    bufferOffset = _serializer.float64(obj.velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointState
    let len;
    let data = new JointState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [servo_ids]
    data.servo_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [servo_temps]
    data.servo_temps = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [goal_pos]
    data.goal_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [current_pos]
    data.current_pos = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [velocity]
    data.velocity = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.name.length;
    length += 4 * object.servo_ids.length;
    length += 4 * object.servo_temps.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'hiwonder_servo_msgs/JointState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '75d2bf646c2006bb7f480fbc9d7d4db7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string name         # joint name
    int32[] servo_ids   # motor ids controlling this joint
    int32[] servo_temps # motor temperatures, same order as motor_ids
    
    float64 goal_pos    # commanded position (in radians)
    float64 current_pos # current joint position (in radians)
    float64 error       # error between commanded and current positions (in radians)
    float64 velocity    # current joint speed (in radians per second)
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.servo_ids !== undefined) {
      resolved.servo_ids = msg.servo_ids;
    }
    else {
      resolved.servo_ids = []
    }

    if (msg.servo_temps !== undefined) {
      resolved.servo_temps = msg.servo_temps;
    }
    else {
      resolved.servo_temps = []
    }

    if (msg.goal_pos !== undefined) {
      resolved.goal_pos = msg.goal_pos;
    }
    else {
      resolved.goal_pos = 0.0
    }

    if (msg.current_pos !== undefined) {
      resolved.current_pos = msg.current_pos;
    }
    else {
      resolved.current_pos = 0.0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0.0
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = 0.0
    }

    return resolved;
    }
};

module.exports = JointState;
