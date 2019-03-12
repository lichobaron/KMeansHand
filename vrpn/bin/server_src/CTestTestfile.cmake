# CMake generated Testfile for 
# Source directory: /Users/licho/Downloads/vrpn/server_src
# Build directory: /Users/licho/Downloads/bin/server_src
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(test_vrpn "test_vrpn")
add_test(test_loopback "test_loopback")
add_test(test_analogfly "test_analogfly")
add_test(test_logging "test_logging")
subdirs("timecode_generator_server")
