# CMake generated Testfile for 
# Source directory: E:/project/fem/mfem/miniapps/nurbs
# Build directory: E:/project/fem/mfem/build/miniapps/nurbs
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(nurbs_ex1_r0_o4_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-r" "0" "-o" "4")
set_tests_properties(nurbs_ex1_r0_o4_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;16;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_r2_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-r" "2")
set_tests_properties(nurbs_ex1_r2_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;19;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_per_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/beam-hex-nurbs.mesh" "-pm" "1" "-ps" "2")
set_tests_properties(nurbs_ex1_per_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;22;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_lap_r0_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/pipe-nurbs-2d.mesh" "-o" "2" "-no-ibp" "-r" "0")
set_tests_properties(nurbs_ex1_lap_r0_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;26;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_lap_r2_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/pipe-nurbs-2d.mesh" "-o" "2" "-no-ibp" "-r" "2")
set_tests_properties(nurbs_ex1_lap_r2_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;30;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_weak_r0_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/pipe-nurbs-2d.mesh" "-o" "2" "--weak-bc" "-r" "0")
set_tests_properties(nurbs_ex1_weak_r0_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;34;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_weak_r2_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/pipe-nurbs-2d.mesh" "-o" "2" "--weak-bc" "-r" "2")
set_tests_properties(nurbs_ex1_weak_r2_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;38;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_weak_mp_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/ball-nurbs.mesh" "-o" "2" "--weak-bc" "-r" "0")
set_tests_properties(nurbs_ex1_weak_mp_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;42;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_weak_patch_format_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/square-disc-nurbs-patch.mesh" "-o" "2" "--weak-bc" "-r" "0")
set_tests_properties(nurbs_ex1_weak_patch_format_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;46;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
add_test(nurbs_ex1_weak_patch_format_r1_ser "E:/project/fem/mfem/build/miniapps/nurbs/nurbs_ex1.exe" "-no-vis" "-m" "E:/project/fem/mfem/data/square-disc-nurbs-patch.mesh" "-o" "2" "--weak-bc" "-r" "1")
set_tests_properties(nurbs_ex1_weak_patch_format_r1_ser PROPERTIES  _BACKTRACE_TRIPLES "E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;50;add_test;E:/project/fem/mfem/miniapps/nurbs/CMakeLists.txt;0;")
