  cms_rootdict(PhysicsToolsFWLite classes.h classes_def.xml)
cms_add_library(PhysicsToolsFWLite TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				PhysicsToolsSelectorUtils
				DataFormatsPatCandidates
				DataFormatsFWLite
				CommonToolsUtils
				boost
				rootcore
				roothistmatrix
			)
