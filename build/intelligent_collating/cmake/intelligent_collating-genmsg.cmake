# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "intelligent_collating: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(intelligent_collating_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" NAME_WE)
add_custom_target(_intelligent_collating_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "intelligent_collating" "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(intelligent_collating
  "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intelligent_collating
)

### Generating Module File
_generate_module_cpp(intelligent_collating
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intelligent_collating
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(intelligent_collating_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(intelligent_collating_generate_messages intelligent_collating_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" NAME_WE)
add_dependencies(intelligent_collating_generate_messages_cpp _intelligent_collating_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intelligent_collating_gencpp)
add_dependencies(intelligent_collating_gencpp intelligent_collating_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intelligent_collating_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(intelligent_collating
  "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intelligent_collating
)

### Generating Module File
_generate_module_eus(intelligent_collating
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intelligent_collating
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(intelligent_collating_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(intelligent_collating_generate_messages intelligent_collating_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" NAME_WE)
add_dependencies(intelligent_collating_generate_messages_eus _intelligent_collating_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intelligent_collating_geneus)
add_dependencies(intelligent_collating_geneus intelligent_collating_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intelligent_collating_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(intelligent_collating
  "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intelligent_collating
)

### Generating Module File
_generate_module_lisp(intelligent_collating
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intelligent_collating
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(intelligent_collating_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(intelligent_collating_generate_messages intelligent_collating_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" NAME_WE)
add_dependencies(intelligent_collating_generate_messages_lisp _intelligent_collating_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intelligent_collating_genlisp)
add_dependencies(intelligent_collating_genlisp intelligent_collating_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intelligent_collating_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(intelligent_collating
  "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intelligent_collating
)

### Generating Module File
_generate_module_nodejs(intelligent_collating
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intelligent_collating
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(intelligent_collating_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(intelligent_collating_generate_messages intelligent_collating_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" NAME_WE)
add_dependencies(intelligent_collating_generate_messages_nodejs _intelligent_collating_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intelligent_collating_gennodejs)
add_dependencies(intelligent_collating_gennodejs intelligent_collating_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intelligent_collating_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(intelligent_collating
  "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intelligent_collating
)

### Generating Module File
_generate_module_py(intelligent_collating
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intelligent_collating
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(intelligent_collating_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(intelligent_collating_generate_messages intelligent_collating_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ubuntu/armpi_pro/src/intelligent_collating/srv/SetTarget.srv" NAME_WE)
add_dependencies(intelligent_collating_generate_messages_py _intelligent_collating_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(intelligent_collating_genpy)
add_dependencies(intelligent_collating_genpy intelligent_collating_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS intelligent_collating_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intelligent_collating)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/intelligent_collating
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(intelligent_collating_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(intelligent_collating_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intelligent_collating)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/intelligent_collating
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(intelligent_collating_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(intelligent_collating_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intelligent_collating)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/intelligent_collating
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(intelligent_collating_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(intelligent_collating_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intelligent_collating)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/intelligent_collating
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(intelligent_collating_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(intelligent_collating_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intelligent_collating)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intelligent_collating\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/intelligent_collating
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(intelligent_collating_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(intelligent_collating_generate_messages_py std_srvs_generate_messages_py)
endif()
