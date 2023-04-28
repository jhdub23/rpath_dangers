# Use NO_SONAME to simulate the same library being compiled with code changes and archived with some sort of unique hash.  Be able to select the library at runtime.

add_library(mylib_level2 SHARED mylib_level2.cpp)
target_link_options(mylib_level2 PRIVATE
    -z origin
    -Wl,-rpath,'$ORIGIN/../lib'
    -Wl,-rpath,'$ORIGIN/../libs'
    )
set_target_properties(mylib_level2 PROPERTIES
    NO_SONAME ON
    PUBLIC_HEADER mylib_level2.hpp
    )

add_library(mylib_level1 SHARED mylib_level1.cpp)
target_link_libraries(mylib_level1 'mylib_level2')
target_link_options(mylib_level1 PRIVATE
    -z origin
    -Wl,-rpath,'$ORIGIN/../lib'
    -Wl,-rpath,'$ORIGIN/../libs'
    -L.)
set_target_properties(mylib_level1 PROPERTIES
    NO_SONAME ON
    PUBLIC_HEADER mylib_level1.hpp)

add_library(mylib_level2_v1 SHARED mylib_level2_v1.cpp)
target_link_options(mylib_level2_v1 PRIVATE
    -z origin
    -Wl,-rpath,'$ORIGIN/../lib'
    -Wl,-rpath,'$ORIGIN/../libs'
    )
set_target_properties(mylib_level2_v1 PROPERTIES
    NO_SONAME ON
    PUBLIC_HEADER mylib_level2_v1.hpp)
