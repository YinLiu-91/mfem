# CMake generated Testfile for 
# Source directory: E:/project/fem/mfem/tests/unit
# Build directory: E:/project/fem/mfem/build/tests/unit
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(unit_tests "E:/project/fem/mfem/build/tests/unit/unit_tests.exe")
set_tests_properties(unit_tests PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/tests/unit/CMakeLists.txt;150;add_test;E:/project/fem/mfem/tests/unit/CMakeLists.txt;0;")
add_test(sedov_tests_cpu "E:/project/fem/mfem/build/tests/unit/sedov_tests_cpu.exe")
set_tests_properties(sedov_tests_cpu PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/tests/unit/CMakeLists.txt;151;add_test;E:/project/fem/mfem/tests/unit/CMakeLists.txt;0;")
add_test(sedov_tests_debug "E:/project/fem/mfem/build/tests/unit/sedov_tests_debug.exe")
set_tests_properties(sedov_tests_debug PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/tests/unit/CMakeLists.txt;152;add_test;E:/project/fem/mfem/tests/unit/CMakeLists.txt;0;")
