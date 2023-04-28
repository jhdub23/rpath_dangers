add_executable(top top.cpp)

target_link_libraries(top PUBLIC 'mylib_level1')
target_link_options(top PUBLIC
    -z origin
    -Wl,-rpath-link,../libs
    -Wl,-rpath,'$ORIGIN/../lib'
    -Wl,-rpath,'$ORIGIN/../libs'
    -L../libs
)

add_executable(top2 top2.cpp)
target_link_libraries(top2 PRIVATE 'mylib_level1' 'mylib_level2')
target_link_options(top2 PRIVATE
    -z origin
    -Wl,-rpath-link,../libs
    -Wl,-rpath,'$ORIGIN/../lib'
    -Wl,-rpath,'$ORIGIN/../libs'
    -L../libs
)
