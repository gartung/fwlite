if(NOT LLVM_ANALYZER_CXXCOMPILER_FOUND)
	mark_as_advanced(LLVM_ANALYZER_CXXCOMPILER_FOUND)
	set(LLVM_ANALYZER_CXXCOMPILER_FOUND TRUE)
	cms_find_package(llvm_cxxcompiler)
endif()
