set(PROJ2 test2)
project(${PROJ2})

set(HDRSLT
    test2.h
)

set(SRCSLT
    test2.cpp
)

find_package(Qt5Core)

set(CMAKE_AUTOMOC ON)

add_library(${PROJ2} STATIC ${HDRSLT} ${SRCSLT})
target_link_libraries(${PROJ2} PRIVATE base Qt5::Core)
install(TARGETS ${PROJ2})
install(FILES test2.h DESTINATION ${CMAKE_INSTALL_PREFIX}/test2)

