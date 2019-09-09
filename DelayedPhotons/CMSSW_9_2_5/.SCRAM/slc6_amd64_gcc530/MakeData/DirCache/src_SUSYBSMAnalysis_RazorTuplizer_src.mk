ifeq ($(strip $(SUSYBSMAnalysis/RazorTuplizer)),)
ALL_COMMONRULES += src_SUSYBSMAnalysis_RazorTuplizer_src
src_SUSYBSMAnalysis_RazorTuplizer_src_parent := SUSYBSMAnalysis/RazorTuplizer
src_SUSYBSMAnalysis_RazorTuplizer_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_SUSYBSMAnalysis_RazorTuplizer_src,src/SUSYBSMAnalysis/RazorTuplizer/src,LIBRARY))
SUSYBSMAnalysisRazorTuplizer := self/SUSYBSMAnalysis/RazorTuplizer
SUSYBSMAnalysis/RazorTuplizer := SUSYBSMAnalysisRazorTuplizer
SUSYBSMAnalysisRazorTuplizer_files := $(patsubst src/SUSYBSMAnalysis/RazorTuplizer/src/%,%,$(wildcard $(foreach dir,src/SUSYBSMAnalysis/RazorTuplizer/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SUSYBSMAnalysisRazorTuplizer_BuildFile    := $(WORKINGDIR)/cache/bf/src/SUSYBSMAnalysis/RazorTuplizer/BuildFile
SUSYBSMAnalysisRazorTuplizer_LOC_USE := self  FWCore/Framework FWCore/ServiceRegistry FWCore/Utilities FWCore/MessageLogger FWCore/ParameterSet Geometry/CaloTopology CondCore/DBOutputService CondFormats/EgammaObjects CondFormats/PhysicsToolsObjects RecoEgamma/EgammaTools RecoEcal/EgammaCoreTools DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/PatCandidates DataFormats/EgammaReco DataFormats/TrackReco TrackingTools/IPTools PhysicsTools/UtilAlgos PhysicsTools/SelectorUtils
SUSYBSMAnalysisRazorTuplizer_EX_LIB   := SUSYBSMAnalysisRazorTuplizer
SUSYBSMAnalysisRazorTuplizer_EX_USE   := $(foreach d,$(SUSYBSMAnalysisRazorTuplizer_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SUSYBSMAnalysisRazorTuplizer_PACKAGE := self/src/SUSYBSMAnalysis/RazorTuplizer/src
ALL_PRODS += SUSYBSMAnalysisRazorTuplizer
SUSYBSMAnalysisRazorTuplizer_CLASS := LIBRARY
SUSYBSMAnalysis/RazorTuplizer_forbigobj+=SUSYBSMAnalysisRazorTuplizer
SUSYBSMAnalysisRazorTuplizer_INIT_FUNC        += $$(eval $$(call Library,SUSYBSMAnalysisRazorTuplizer,src/SUSYBSMAnalysis/RazorTuplizer/src,src_SUSYBSMAnalysis_RazorTuplizer_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
