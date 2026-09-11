file(GLOB_RECURSE GREEN_COMPUTE_SCHEDULER_SOURCES CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cc"
    "${CMAKE_CURRENT_SOURCE_DIR}/src/*.cxx"
)

file(GLOB_RECURSE GREEN_COMPUTE_SCHEDULER_HEADERS CONFIGURE_DEPENDS
    "${CMAKE_CURRENT_SOURCE_DIR}/include/*.hpp"
    "${CMAKE_CURRENT_SOURCE_DIR}/include/*.h"
)

add_executable(green_compute_scheduler
    ${GREEN_COMPUTE_SCHEDULER_SOURCES}
    ${GREEN_COMPUTE_SCHEDULER_HEADERS}
)

target_include_directories(green_compute_scheduler
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

target_compile_features(green_compute_scheduler PRIVATE cxx_std_17)
