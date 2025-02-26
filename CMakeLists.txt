cmake_minimum_required(VERSION 3.2)

project(run-cppcheck)

set(CMAKE_CXX_STANDARD 17)

if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static -static-libgcc -static-libstdc++")
endif (UNIX)

if (UNIX)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -static -static-libgcc -static-libstdc++")
elseif (MSVC)
  set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} /MT")
endif (MSVC)

set(SOURCE_FILES main.cpp config.cpp)

add_executable(run-cppcheck main.cpp config.cpp)
install(TARGETS run-cppcheck)

