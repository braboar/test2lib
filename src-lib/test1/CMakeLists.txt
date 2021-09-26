set(PROJ1 test1)
project(${PROJ1})

set(HDRSRT
    test1.h
)

set(SRCSRT
    test1.cpp
)

find_package(Qt5Core)

set(CMAKE_AUTOMOC ON)

#include_directories(${CMAKE_SOURCE_DIR}/base)
add_library(${PROJ1} STATIC ${HDRSRT} ${SRCSRT})
target_link_libraries(${PROJ1} PRIVATE base Qt5::Core)

install(TARGETS ${PROJ1})
install(FILES ../base/base.h DESTINATION ${CMAKE_INSTALL_PREFIX}/base)
install(FILES test1.h DESTINATION ${CMAKE_INSTALL_PREFIX}/test1)
