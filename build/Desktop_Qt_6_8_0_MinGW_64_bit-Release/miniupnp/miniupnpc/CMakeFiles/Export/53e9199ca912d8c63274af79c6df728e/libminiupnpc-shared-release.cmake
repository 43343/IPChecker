#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "miniupnpc::miniupnpc" for configuration "Release"
set_property(TARGET miniupnpc::miniupnpc APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(miniupnpc::miniupnpc PROPERTIES
  IMPORTED_IMPLIB_RELEASE "${_IMPORT_PREFIX}/lib/libminiupnpc.dll.a"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/bin/libminiupnpc.dll"
  )

list(APPEND _cmake_import_check_targets miniupnpc::miniupnpc )
list(APPEND _cmake_import_check_files_for_miniupnpc::miniupnpc "${_IMPORT_PREFIX}/lib/libminiupnpc.dll.a" "${_IMPORT_PREFIX}/bin/libminiupnpc.dll" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
