if(NOT GCC_CXXCOMPILER_FOUND)
	mark_as_advanced(GCC_CXXCOMPILER_FOUND)
	set(GCC_CXXCOMPILER_FOUND TRUE)
	list(APPEND  PROJECT_CXXFLAGS  -O2)
	list(APPEND  PROJECT_CXXFLAGS  -pthread)
	list(APPEND  PROJECT_CXXFLAGS  -pipe)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=main)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=pointer-arith)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=overlength-strings)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-vla)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=overflow)
	list(APPEND  PROJECT_CXXFLAGS  -std=c++1z)
	list(APPEND  PROJECT_CXXFLAGS  -ftree-vectorize)
	list(APPEND  PROJECT_CXXFLAGS  -Wstrict-overflow)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=array-bounds)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=format-contains-nul)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=type-limits)
	list(APPEND  PROJECT_CXXFLAGS  -fvisibility-inlines-hidden)
	list(APPEND  PROJECT_CXXFLAGS  -fno-math-errno)
	list(APPEND  PROJECT_CXXFLAGS  --param)
	list(APPEND  PROJECT_CXXFLAGS  vect-max-version-for-alias-checks=50)
	list(APPEND  PROJECT_CXXFLAGS  -Xassembler)
	list(APPEND  PROJECT_CXXFLAGS  --compress-debug-sections)
	list(APPEND  PROJECT_CXXFLAGS  -msse3)
	list(APPEND  PROJECT_CXXFLAGS  -felide-constructors)
	list(APPEND  PROJECT_CXXFLAGS  -fmessage-length=0)
	list(APPEND  PROJECT_CXXFLAGS  -Wall)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-non-template-friend)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-long-long)
	list(APPEND  PROJECT_CXXFLAGS  -Wreturn-type)
	list(APPEND  PROJECT_CXXFLAGS  -Wunused)
	list(APPEND  PROJECT_CXXFLAGS  -Wparentheses)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-deprecated)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=return-type)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=missing-braces)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=unused-value)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=address)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=format)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=sign-compare)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=write-strings)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=delete-non-virtual-dtor)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=strict-aliasing)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=narrowing)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=unused-but-set-variable)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=reorder)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=unused-variable)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=conversion-null)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=return-local-addr)
	list(APPEND  PROJECT_CXXFLAGS  -Wnon-virtual-dtor)
	list(APPEND  PROJECT_CXXFLAGS  -Werror=switch)
	list(APPEND  PROJECT_CXXFLAGS  -fdiagnostics-show-option)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-unused-local-typedefs)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-attributes)
	list(APPEND  PROJECT_CXXFLAGS  -Wno-psabi)
	list(APPEND PROJECT_CPPDEFINES GNU_GCC)
	list(APPEND PROJECT_CPPDEFINES _GNU_SOURCE)
endif()
