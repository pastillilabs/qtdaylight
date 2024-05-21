cmake_minimum_required(VERSION 3.27)

project(qtdaylight LANGUAGES CXX)

file(GLOB_RECURSE SOURCES CONFIGURE_DEPENDS daylight/source/*.cpp daylight/include/*.hpp)
add_library(${PROJECT_NAME}
    ${SOURCES}
)

target_include_directories(${PROJECT_NAME}
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/daylight/include
    PRIVATE
        ${CMAKE_CURRENT_SOURCE_DIR}/daylight/capi/include
        ${CMAKE_CURRENT_SOURCE_DIR}/daylight/capi/source
        ${CMAKE_CURRENT_SOURCE_DIR}/daylight/include/daylight
        ${CMAKE_CURRENT_SOURCE_DIR}/daylight/source
)

target_compile_definitions(${PROJECT_NAME}
    PRIVATE
        DAYLIGHT_LIBRARY
)

add_subdirectory(platform)
