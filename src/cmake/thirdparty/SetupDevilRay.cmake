message(STATUS "Looking for Devil Ray in: ${DRAY_DIR}")
if (NOT DRAY_DIR)
  message(FATAL_ERROR "Must specify 'DRAY_DIR'")
endif()

set(DRay_DIR ${DRAY_DIR}/lib/cmake)

set(DRAY_DISABLE_LOAD_DEPS TRUE)
find_package(DRay REQUIRED)

message(STATUS "Found Devil Ray")
set(DRAY_FOUND TRUE)

blt_register_library(NAME dray
                     INCLUDES ${DRAY_INCLUDE_DIRS}
                     LIBRARIES dray dray_lodepng)

