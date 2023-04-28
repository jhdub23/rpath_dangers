cmake_minimum_required(VERSION 3.5)

project(mylib VERSION 0.0.0)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(libs)
add_subdirectory(bins)
