cmake_minimum_required (VERSION 3.10)

function (init_linked_libs LIBS)
    if(CMAKE_COMPILER_IS_GNUCXX)
        set(${LIBS} "${${LIBS}}" -Wl,--start-group PARENT_SCOPE)
    endif()
endfunction()

function (finalize_linked_libs LIBS)
    if(CMAKE_COMPILER_IS_GNUCXX)
        set(${LIBS} "${${LIBS}}" -Wl,--end-group PARENT_SCOPE)
    endif()
endfunction()
