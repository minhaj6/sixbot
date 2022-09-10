# generated from ament/cmake/core/templates/nameConfig.cmake.in

# prevent multiple inclusion
if(_sixbot_CONFIG_INCLUDED)
  # ensure to keep the found flag the same
  if(NOT DEFINED sixbot_FOUND)
    # explicitly set it to FALSE, otherwise CMake will set it to TRUE
    set(sixbot_FOUND FALSE)
  elseif(NOT sixbot_FOUND)
    # use separate condition to avoid uninitialized variable warning
    set(sixbot_FOUND FALSE)
  endif()
  return()
endif()
set(_sixbot_CONFIG_INCLUDED TRUE)

# output package information
if(NOT sixbot_FIND_QUIETLY)
  message(STATUS "Found sixbot: 0.0.0 (${sixbot_DIR})")
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "Package 'sixbot' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  # optionally quiet the deprecation message
  if(NOT ${sixbot_DEPRECATED_QUIET})
    message(DEPRECATION "${_msg}")
  endif()
endif()

# flag package as ament-based to distinguish it after being find_package()-ed
set(sixbot_FOUND_AMENT_PACKAGE TRUE)

# include all config extra files
set(_extras "")
foreach(_extra ${_extras})
  include("${sixbot_DIR}/${_extra}")
endforeach()
