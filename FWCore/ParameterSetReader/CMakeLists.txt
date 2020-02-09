include_directories(${Python_INCLUDE_DIRS})
link_libraries(${Python_LIBRARIES})
get_filename_component(CMS_PACKAGE_NAME ${CMAKE_CURRENT_SOURCE_DIR} NAME)
process_subdirs(src bin )
