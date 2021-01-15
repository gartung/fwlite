  cms_rootdict(DataFormatsHepMCCandidate classes.h classes_def.xml)
cms_add_library(DataFormatsHepMCCandidate TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				DataFormatsCommon
				DataFormatsCandidate
				root
			)
