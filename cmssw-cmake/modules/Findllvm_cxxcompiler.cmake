if(NOT LLVM_CXXCOMPILER_FOUND)
	mark_as_advanced(LLVM_CXXCOMPILER_FOUND)
	set(LLVM_CXXCOMPILER_FOUND TRUE)
	cms_find_package(gcc_cxxcompiler)
	list( REMOVE_ITEM  -Wno-non-template-friend PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -Werror=format-contains-nul PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -Werror=maybe-uninitialized PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -Werror=unused-but-set-variable PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -Werror=return-local-addr PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -fipa-pta PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -frounding-math PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -mrecip PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -Wno-psabi PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -fno-crossjumping PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -fno-aggressive-loop-optimizations PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -mlong-double-64 PROJECT_CXXFLAGS )
	list( REMOVE_ITEM  -funroll-all-loops PROJECT_CXXFLAGS )
	list(APPEND  PROJECT_CXXFLAGS  -Wno-c99-extensions)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-c++11-narrowing)
	list(APPEND  PROJECT_CXXFLAGS  -D__STRICT_ANSI__)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-unused-private-field)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-unknown-pragmas)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-unused-command-line-argument)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-unknown-warning-option)
	list(APPEND  PROJECT_CXXFLAGS  -ftemplate-depth=512)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-error=potentially-evaluated-expression)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-tautological-type-limit-compare)
	list(APPEND  PROJECT_CXXFLAGS  -fsized-deallocation)
endif()
