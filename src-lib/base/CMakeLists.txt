project(base)

find_package(Qt5Core)

add_library(base STATIC)
target_sources(base PUBLIC base.h PRIVATE base.cpp)
target_link_libraries(base PRIVATE Qt5::Core)

install(TARGETS base)
