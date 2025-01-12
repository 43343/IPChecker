# Install script for directory: C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "C:/Program Files (x86)/IPChecker")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "C:/Qt/Tools/mingw1310_64/bin/objdump.exe")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/miniupnpc-private.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/miniupnpc-private.cmake"
         "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/miniupnpc-private.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/miniupnpc-private-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/miniupnpc-private.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/miniupnpc-private.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/libminiupnpc.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-static.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-static.cmake"
         "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/libminiupnpc-static.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-static-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-static.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/libminiupnpc-static.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/libminiupnpc-static-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/upnpc-static.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnpc-static.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnpc-static.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Qt/Tools/mingw1310_64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnpc-static.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/upnp-listdevices-static.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnp-listdevices-static.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnp-listdevices-static.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Qt/Tools/mingw1310_64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnp-listdevices-static.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY OPTIONAL FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/libminiupnpc.dll.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE SHARED_LIBRARY FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/libminiupnpc.dll")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libminiupnpc.dll" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libminiupnpc.dll")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Qt/Tools/mingw1310_64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/libminiupnpc.dll")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-shared.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-shared.cmake"
         "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/libminiupnpc-shared.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-shared-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc/libminiupnpc-shared.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/libminiupnpc-shared.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/CMakeFiles/Export/53e9199ca912d8c63274af79c6df728e/libminiupnpc-shared-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/upnpc-shared.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnpc-shared.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnpc-shared.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Qt/Tools/mingw1310_64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnpc-shared.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE EXECUTABLE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/upnp-listdevices-shared.exe")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnp-listdevices-shared.exe" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnp-listdevices-shared.exe")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "C:/Qt/Tools/mingw1310_64/bin/strip.exe" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/bin/upnp-listdevices-shared.exe")
    endif()
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/miniupnpc" TYPE FILE FILES
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/miniupnpc.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/miniwget.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/upnpcommands.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/igd_desc_parse.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/upnpreplyparse.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/upnperrors.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/upnpdev.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/miniupnpctypes.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/portlistingparse.h"
    "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/include/miniupnpc_declspec.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/miniupnpc" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/miniupnpc-config.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc/miniupnpc.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/man/man3" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/man3/miniupnpc.3")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/bin" TYPE FILE FILES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/external-ip.sh")
endif()

