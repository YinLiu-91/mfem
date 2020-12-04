# CMake generated Testfile for 
# Source directory: E:/project/fem/mfem/miniapps/meshing
# Build directory: E:/project/fem/mfem/build/miniapps/meshing
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(mesh-optimizer "E:/project/fem/mfem/build/miniapps/meshing/mesh-optimizer.exe" "-no-vis" "-m" "E:/project/fem/mfem/miniapps/meshing/icf.mesh")
set_tests_properties(mesh-optimizer PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/meshing/CMakeLists.txt;58;add_test;E:/project/fem/mfem/miniapps/meshing/CMakeLists.txt;0;")
add_test(minimal-surface "E:/project/fem/mfem/build/miniapps/meshing/minimal-surface.exe" "-no-vis")
set_tests_properties(minimal-surface PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/meshing/CMakeLists.txt;61;add_test;E:/project/fem/mfem/miniapps/meshing/CMakeLists.txt;0;")
