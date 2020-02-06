macro(process_subdirs)
  set(SUBDIR_EXP "*")
  if(${ARGC} GREATER 1)
    set(SUBDIR_EXP ${ARGV})
  endif()
  file(GLOB subdirs ${SUBDIR_EXP})
  foreach(dir ${subdirs})
    if(IS_DIRECTORY ${dir} AND EXISTS ${dir}/CMakeLists.txt)
      get_filename_component(subdir ${dir} NAME)
      add_subdirectory(${subdir})
    endif()
  endforeach()
endmacro()

function(cms_add_interface name)
  set(singleValueArgs TYPE)
  set(multiValueArgs DEPS)
  cmake_parse_arguments(cms_add_interface "" "${singleValueArgs}" "${multiValueArgs}" ${ARGN})
  foreach(dep ${cms_add_interface_DEPS})
    cms_find_package(${dep})
  endforeach()
  add_library(${name} INTERFACE)
  foreach(inc ${INCLUDE_DIRS})
    target_include_directories(${name} INTERFACE ${inc})
  endforeach()
  if(LIBS)
    target_link_libraries (${name} INTERFACE ${LIBS})
  endif()
endfunction()

function(cms_add_library name)
  set(singleValueArgs TYPE)
  set(multiValueArgs SOURCES PUBLIC)
  message("Processing library ${name}")
  cmake_parse_arguments(cms_add_library "" "${singleValueArgs}" "${multiValueArgs}" ${ARGN})
  foreach(dep ${cms_add_library_PUBLIC})
    cms_find_package(${dep})
  endforeach()
  file(GLOB PRODUCT_SOURCES ${cms_add_library_SOURCES})
  add_library(${name} SHARED ${PRODUCT_SOURCES} ${${name}_EXTRA_SOURCES})
  if ("${cms_add_library_TYPE}" STREQUAL "PLUGINS")
    SET_TARGET_PROPERTIES(${name} PROPERTIES PREFIX "plugin")
    edmplugingen(${name})
  endif()
  target_compile_definitions(${name} PRIVATE ${PROJECT_CPPDEFINES})
  target_compile_options(${name} PRIVATE ${PROJECT_CXXFLAGS})
  if(INCLUDE_DIRS)
    list(REMOVE_DUPLICATES INCLUDE_DIRS)
    target_include_directories(${name} PUBLIC ${INCLUDE_DIRS})
  endif()
  if (LIBRARY_DIRS)
    list(REMOVE_DUPLICATES LIBRARY_DIRS)
    foreach (libdir ${LIBRARY_DIRS})
      target_link_libraries (${name} LINK_PUBLIC "-L${libdir}")
    endforeach()
  endif()
  if(LIBS)
    list(REMOVE_DUPLICATES LIBS)
    target_link_libraries (${name} LINK_PUBLIC ${LIBS})
    unset(LIBS)
  endif()
  add_rootdict_rules(${name})
# skip this since Serialization.cc can be generated on linux and add to fwlite source
#  if (EXISTS ${CMAKE_CURRENT_SOURCE_DIR}/headers.h)
#    condformat_serialization(${name} headers.h)
#  endif()
  if ("${cms_add_library_TYPE}" STREQUAL "TEST")
    set_target_properties(${name} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/test/${SCRAM_ARCH})
  else()
    set_target_properties(${name} PROPERTIES LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib)
    install(TARGETS ${name} EXPORT DESTINATION lib/${SCRAM_ARCH})  
  endif()
endfunction()

function(cms_add_binary name)
  set(singleValueArgs TYPE)
  set(multiValueArgs SOURCES PUBLIC)
  message("Processing binary ${name}")
  cmake_parse_arguments(cms_add_binary "" "${singleValueArgs}" "${multiValueArgs}" ${ARGN})
  foreach(dep ${cms_add_binary_PUBLIC})
    cms_find_package(${dep})
  endforeach()
  file(GLOB PRODUCT_SOURCES ${cms_add_binary_SOURCES})
  add_executable(${name} ${PRODUCT_SOURCES})
  target_compile_definitions(${name} PRIVATE ${PROJECT_CPPDEFINES})
  target_compile_options(${name} PRIVATE ${PROJECT_CXXFLAGS})
  if(INCLUDE_DIRS)
    list(REMOVE_DUPLICATES INCLUDE_DIRS)
    target_include_directories(${name} PUBLIC ${INCLUDE_DIRS})
  endif()
  if(LIBRARY_DIRS)
    list(REMOVE_DUPLICATES LIBRARY_DIRS)
    foreach (libdir ${LIBRARY_DIRS})
      target_link_libraries (${name} LINK_PUBLIC "-L${libdir}")
    endforeach()
  endif()
  if(LIBS)
    list(REMOVE_DUPLICATES LIBS)
    target_link_libraries (${name} LINK_PUBLIC ${LIBS})
    unset(LIBS)
  endif()
  if("${cms_add_binary_TYPE}" STREQUAL "TEST")
    set_target_properties(${name} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/../test/${SCRAM_ARCH})
  else()
    set_target_properties(${name} PROPERTIES RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
    install(TARGETS ${name} EXPORT DESTINATION bin)
  endif()
endfunction()

function(cms_add_test NAME)
  set(testdir ${CMAKE_SOURCE_DIR}/../test/${SCRAM_ARCH})
  set(singleValueArgs COMMAND)
  set(multiValueArgs TRARGS)
  message("Processing test ${NAME}")
  cmake_parse_arguments(cms_add_test "" "${singleValueArgs}" "${multiValueArgs}" ${ARGN})
  if(cms_add_test_TRARGS)
    add_test(NAME ${NAME} COMMAND ${cms_add_test_COMMAND} ${cms_add_test_TRARGS})
  else()
    add_test(NAME ${NAME} COMMAND ${cms_add_test_COMMAND})
  endif()
  cms_find_package(Runtime)
  set_tests_properties( ${NAME} PROPERTIES WORKING_DIR ${CMAKE_SOURCE_DIR}/.. )
  set_tests_properties( ${NAME} PROPERTIES ENVIRONMENT "CMSSW_SEARCH_PATH=$ENV{CMSSW_SEARCH_PATH};ROOT_GCC_TOOLCHAIN=$ENV{ROOT_GCC_TOOLCHAIN};ROOT_INCLUDE_PATH=$ENV{ROOT_INCLUDE_PATH};PYTHONPATH=${CMAKE_SOURCE_DIR}:$ENV{PYTHON27PATH}:$ENV{PYTHONPATH};PATH=${testdir}:${CMAKE_BINARY_DIR}/bin:$ENV{PATH};LD_LIBRARY_PATH=${testdir}:${CMAKE_BINARY_DIR}/lib:$ENV{LD_LIBRARY_PATH};LOCAL_TMP_DIR=${CMAKE_SOURCE_DIR}/..;LOCAL_TEST_DIR=${CMAKE_CURRENT_SOURCE_DIR}/;CMSSW_BASE=${CMAKE_SOURCE_DIR}/..;SCRAM_ARCH=${SCRAM_ARCH}")
endfunction()

macro(cms_find_package package)
  if(NOT ${package}_FOUND)
    include(${CMAKE_SOURCE_DIR}/cmssw-cmake/modules/Find${package}.cmake OPTIONAL RESULT_VARIABLE f)
    if("${f}" STREQUAL "NOTFOUND")
        list(APPEND LIBS ${package} )
    endif()
  endif()
endmacro()
