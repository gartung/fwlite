if(NOT PYCLANG_FOUND)
  mark_as_advanced(PYCLANG_FOUND)
  set(PYCLANG_FOUND TRUE)
  cms_find_package(python)
endif()
