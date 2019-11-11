cmake_minimum_required(VERSION 2.8)

project(Calculator)

set(SOURCE_EXE main.cpp)

add_library(hello STATIC hello.cpp)

add_library(calculator STATIC calculator.cpp)

add_executable(main ${SOURCE_EXE})

target_link_libraries(main hello calculator)
