if(NOT STDCXX_FS_FOUND)
	mark_as_advanced(STDCXX_FS_FOUND)
	set(STDCXX_FS_FOUND TRUE)
	list(APPEND LIBS stdc++fs)
endif()