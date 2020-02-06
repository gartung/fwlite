cms_add_library(DataFormatsMuonData TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77 *.icc
			)
set_target_properties(DataFormatsMuonData PROPERTIES LINKER_LANGUAGE CXX)
