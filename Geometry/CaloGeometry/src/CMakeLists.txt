cms_add_library(GeometryCaloGeometry TYPE LIBRARY
			SOURCES
				*.cc *.cxx *.f *.f77
			PUBLIC
				FWCoreUtilities
				FWCoreMessageLogger
				DataFormatsMath
				DataFormatsDetId
				DataFormatsGeometryVector
				DataFormatsCaloTowers
				DataFormatsHcalDetId
				DataFormatsEcalDetId
				clhep
			)
