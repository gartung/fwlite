if(NOT SOCKETS_FOUND)
  mark_as_advanced(SOCKETS_FOUND)
  set(SOCKETS_FOUND TRUE)
  list(APPEND LIBS nsl)
  list(APPEND LIBS crypt)
  list(APPEND LIBS dl)
  list(APPEND LIBS rt)
endif()
