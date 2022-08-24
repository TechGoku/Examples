# Install script for directory: /home/blockhash/Examples/zmq-omq-handler/server/oxen-mq

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/blockhash/Examples/zmq-omq-handler/server/build/oxen-mq/liboxenmq.so.0")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so.0")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/blockhash/Examples/zmq-omq-handler/server/build/oxen-mq/liboxenmq.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so"
         OLD_RPATH "/usr/local/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liboxenmq.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/oxenmq" TYPE FILE FILES
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/address.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/auth.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/base32z.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/base64.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/batch.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/bt_serialize.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/bt_value.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/connections.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/hex.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/oxenmq.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/message.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/oxenmq/variant.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/build/oxen-mq/oxenmq/version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/oxenmq" TYPE FILE FILES "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/cppzmq/zmq.hpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/blockhash/Examples/zmq-omq-handler/server/build/oxen-mq/liboxenmq.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/lokimq" TYPE FILE FILES
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/address.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/auth.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/base32z.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/base64.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/batch.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/bt_serialize.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/bt_value.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/connections.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/hex.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/lokimq.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/message.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/variant.h"
    "/home/blockhash/Examples/zmq-omq-handler/server/oxen-mq/lokimq/version.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/blockhash/Examples/zmq-omq-handler/server/build/oxen-mq/liblokimq.pc")
endif()

