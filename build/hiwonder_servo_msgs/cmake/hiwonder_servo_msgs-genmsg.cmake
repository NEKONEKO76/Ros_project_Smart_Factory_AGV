# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hiwonder_servo_msgs: 14 messages, 0 services")

set(MSG_I_FLAGS "-Ihiwonder_servo_msgs:/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg;-Ihiwonder_servo_msgs:/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/melodic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hiwonder_servo_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" "hiwonder_servo_msgs/ActionGroupRunnerResult:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" "hiwonder_servo_msgs/ServoState"
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" "actionlib_msgs/GoalID:actionlib_msgs/GoalStatus:hiwonder_servo_msgs/ActionGroupRunnerFeedback:std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" "actionlib_msgs/GoalID:hiwonder_servo_msgs/ActionGroupRunnerFeedback:actionlib_msgs/GoalStatus:hiwonder_servo_msgs/ActionGroupRunnerGoal:hiwonder_servo_msgs/ActionGroupRunnerActionFeedback:hiwonder_servo_msgs/ActionGroupRunnerActionGoal:std_msgs/Header:hiwonder_servo_msgs/ActionGroupRunnerResult:hiwonder_servo_msgs/ActionGroupRunnerActionResult"
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" "hiwonder_servo_msgs/RawIdPosDur"
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" ""
)

get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" NAME_WE)
add_custom_target(_hiwonder_servo_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hiwonder_servo_msgs" "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" "actionlib_msgs/GoalID:hiwonder_servo_msgs/ActionGroupRunnerGoal:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_cpp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(hiwonder_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hiwonder_servo_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hiwonder_servo_msgs_generate_messages hiwonder_servo_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_cpp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hiwonder_servo_msgs_gencpp)
add_dependencies(hiwonder_servo_msgs_gencpp hiwonder_servo_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hiwonder_servo_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_eus(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(hiwonder_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hiwonder_servo_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hiwonder_servo_msgs_generate_messages hiwonder_servo_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_eus _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hiwonder_servo_msgs_geneus)
add_dependencies(hiwonder_servo_msgs_geneus hiwonder_servo_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hiwonder_servo_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_lisp(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(hiwonder_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hiwonder_servo_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hiwonder_servo_msgs_generate_messages hiwonder_servo_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_lisp _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hiwonder_servo_msgs_genlisp)
add_dependencies(hiwonder_servo_msgs_genlisp hiwonder_servo_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hiwonder_servo_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_nodejs(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(hiwonder_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hiwonder_servo_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hiwonder_servo_msgs_generate_messages hiwonder_servo_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hiwonder_servo_msgs_gennodejs)
add_dependencies(hiwonder_servo_msgs_gennodejs hiwonder_servo_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hiwonder_servo_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/melodic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg;/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)
_generate_msg_py(hiwonder_servo_msgs
  "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/melodic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(hiwonder_servo_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hiwonder_servo_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hiwonder_servo_msgs_generate_messages hiwonder_servo_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDuration.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/ServoStateList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionFeedback.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerAction.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/MultiRawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/RawIdPosDur.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/CommandDurationList.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerResult.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/hiwonder_servo_msgs/msg/JointState.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/ubuntu/armpi_pro/devel/share/hiwonder_servo_msgs/msg/ActionGroupRunnerActionGoal.msg" NAME_WE)
add_dependencies(hiwonder_servo_msgs_generate_messages_py _hiwonder_servo_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hiwonder_servo_msgs_genpy)
add_dependencies(hiwonder_servo_msgs_genpy hiwonder_servo_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hiwonder_servo_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hiwonder_servo_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hiwonder_servo_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(hiwonder_servo_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hiwonder_servo_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hiwonder_servo_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(hiwonder_servo_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hiwonder_servo_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hiwonder_servo_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(hiwonder_servo_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hiwonder_servo_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(hiwonder_servo_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hiwonder_servo_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hiwonder_servo_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(hiwonder_servo_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
