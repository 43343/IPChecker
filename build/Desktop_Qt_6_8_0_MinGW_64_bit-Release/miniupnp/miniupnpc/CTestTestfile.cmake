# CMake generated Testfile for 
# Source directory: C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc
# Build directory: C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/miniupnp/miniupnpc
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(validateminixml "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/minixmlvalid.exe")
set_tests_properties(validateminixml PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;255;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
add_test(validateminiwget "C:/Users/Forty/Documents/IPChacker/testminiwget.sh")
set_tests_properties(validateminiwget PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;257;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
add_test(validateupnpreplyparse "C:/Users/Forty/Documents/IPChacker/testupnpreplyparse.sh")
set_tests_properties(validateupnpreplyparse PROPERTIES  ENVIRONMENT "TESTUPNPREPLYPARSE=C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/testupnpreplyparse" WORKING_DIRECTORY "C:/Users/Forty/Documents/IPChacker" _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;265;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
add_test(validateportlistingparse "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/testportlistingparse.exe")
set_tests_properties(validateportlistingparse PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;271;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
add_test(validateigddescparse1 "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/testigddescparse.exe" "new_LiveBox_desc.xml" "new_LiveBox_desc.values")
set_tests_properties(validateigddescparse1 PROPERTIES  WORKING_DIRECTORY "C:/Users/Forty/Documents/IPChacker/testdesc" _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;273;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
add_test(validateigddescparse2 "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/testigddescparse.exe" "linksys_WAG200G_desc.xml" "linksys_WAG200G_desc.values")
set_tests_properties(validateigddescparse2 PROPERTIES  WORKING_DIRECTORY "C:/Users/Forty/Documents/IPChacker/testdesc" _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;276;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
add_test(validateaddr_is_reserved "C:/Users/Forty/Documents/IPChacker/build/Desktop_Qt_6_8_0_MinGW_64_bit-Release/bin/testaddr_is_reserved.exe")
set_tests_properties(validateaddr_is_reserved PROPERTIES  _BACKTRACE_TRIPLES "C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;279;add_test;C:/Users/Forty/Documents/IPChacker/miniupnp/miniupnpc/CMakeLists.txt;0;")
