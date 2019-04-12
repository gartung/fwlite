cms_add_library(CondFormatsSerialization TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				boost_serialization
			)
