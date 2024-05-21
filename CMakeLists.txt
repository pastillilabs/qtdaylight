cmake_minimum_required(VERSION 3.27)

project(qtdaylight LANGUAGES CXX)

file(GLOB SOURCES CONFIGURE_DEPENDS daylight/source/*.cpp daylight/include/daylight/*.hpp)
add_library(${PROJECT_NAME}
    ${SOURCES}
)

set_target_properties(${PROJECT_NAME}
    PROPERTIES
        CXX_STANDARD 11
        POSITION_INDEPENDENT_CODE ON
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

add_custom_target(${PROJECT_NAME}-root
    SOURCES
        .gitignore
        AUTHORS
        LICENSE
        README.md
)

include(GNUInstallDirs)
install(TARGETS ${PROJECT_NAME}
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
