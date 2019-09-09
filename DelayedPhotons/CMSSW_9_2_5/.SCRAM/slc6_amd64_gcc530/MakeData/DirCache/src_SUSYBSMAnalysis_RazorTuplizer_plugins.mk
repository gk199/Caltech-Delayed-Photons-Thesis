ifeq ($(strip $(SUSYBSMAnalysisRazorTuplizerAuto)),)
SUSYBSMAnalysisRazorTuplizerAuto := self/src/SUSYBSMAnalysis/RazorTuplizer/plugins
PLUGINS:=yes
SUSYBSMAnalysisRazorTuplizerAuto_files := $(patsubst src/SUSYBSMAnalysis/RazorTuplizer/plugins/%,%,$(wildcard $(foreach dir,src/SUSYBSMAnalysis/RazorTuplizer/plugins ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
SUSYBSMAnalysisRazorTuplizerAuto_BuildFile    := $(WORKINGDIR)/cache/bf/src/SUSYBSMAnalysis/RazorTuplizer/plugins/BuildFile
SUSYBSMAnalysisRazorTuplizerAuto_LOC_USE := self  fastjet FWCore/Framework FWCore/PluginManager FWCore/ParameterSet DataFormats/PatCandidates PhysicsTools/UtilAlgos RecoEgamma/EgammaTools EgammaAnalysis/ElectronTools RecoEcal/EgammaCoreTools SUSYBSMAnalysis/RazorTuplizer
SUSYBSMAnalysisRazorTuplizerAuto_PRE_INIT_FUNC += $$(eval $$(call edmPlugin,SUSYBSMAnalysisRazorTuplizerAuto,SUSYBSMAnalysisRazorTuplizerAuto,$(SCRAMSTORENAME_LIB),src/SUSYBSMAnalysis/RazorTuplizer/plugins))
SUSYBSMAnalysisRazorTuplizerAuto_PACKAGE := self/src/SUSYBSMAnalysis/RazorTuplizer/plugins
ALL_PRODS += SUSYBSMAnalysisRazorTuplizerAuto
SUSYBSMAnalysis/RazorTuplizer_forbigobj+=SUSYBSMAnalysisRazorTuplizerAuto
SUSYBSMAnalysisRazorTuplizerAuto_INIT_FUNC        += $$(eval $$(call Library,SUSYBSMAnalysisRazorTuplizerAuto,src/SUSYBSMAnalysis/RazorTuplizer/plugins,src_SUSYBSMAnalysis_RazorTuplizer_plugins,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
SUSYBSMAnalysisRazorTuplizerAuto_CLASS := LIBRARY
else
$(eval $(call MultipleWarningMsg,SUSYBSMAnalysisRazorTuplizerAuto,src/SUSYBSMAnalysis/RazorTuplizer/plugins))
endif
ALL_COMMONRULES += src_SUSYBSMAnalysis_RazorTuplizer_plugins
src_SUSYBSMAnalysis_RazorTuplizer_plugins_parent := SUSYBSMAnalysis/RazorTuplizer
src_SUSYBSMAnalysis_RazorTuplizer_plugins_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SUSYBSMAnalysis_RazorTuplizer_plugins,src/SUSYBSMAnalysis/RazorTuplizer/plugins,PLUGINS))
