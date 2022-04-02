cmake_minimum_required(VERSION 3.0.0)
project(2009106014_Yanuar VERSION 0.1.0)

include(CTest)
enable_testing()

add_library(2009106014_Yanuar 2009106014_Yanuar.cpp)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
