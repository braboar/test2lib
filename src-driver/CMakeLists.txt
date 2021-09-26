cmake_minimum_required(VERSION 3.14)

set(PROJECT testrt)
project(${PROJECT})

include(${CMAKE_SOURCE_DIR}/lib.cmake)

message("CMAKE_PREFIX_PATH: " ${CMAKE_PREFIX_PATH})
find_package(Qt5Core)

set(CMAKE_AUTOMOC ON)

set(SOURCES main.cpp)

include_directories(${CMAKE_SOURCE_DIR}/../bin-lib)
link_directories(${CMAKE_SOURCE_DIR}/../bin-lib/lib)

set(ALL_LIBS)                                                                                                                                                                                                                       
init_linked_libs(ALL_LIBS)                                                                                                                                                                                                          

set(ALL_LIBS
    ${ALL_LIBS}
    base
    test1
    test2
    Qt5::Core
)

finalize_linked_libs(ALL_LIBS)

add_executable(${PROJECT} ${SOURCES})

target_link_libraries(${PROJECT} ${ALL_LIBS} Qt5::Core)

install(TARGETS ${PROJECT})
