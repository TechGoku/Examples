cmake_minimum_required(VERSION 3.7)
project(mqconnet)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)
add_executable(server server.cpp)

add_subdirectory(oxen-mq)
message(${CMAKE_CURRENT_SOURCE_DIR})

target_link_directories(server PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/oxen-mq)
target_link_libraries(server oxenmq::oxenmq)



#target_link_directories(check PUBLIC ${CMAKE_CURRENT_SOURCE_DIR}/external)
