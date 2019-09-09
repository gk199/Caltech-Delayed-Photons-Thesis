ifeq ($(strip $(SUSYBSMAnalysis-RazorTuplizer/plugins)),)
src_SUSYBSMAnalysis-RazorTuplizer_plugins := self/SUSYBSMAnalysis-RazorTuplizer/plugins
SUSYBSMAnalysis-RazorTuplizer/plugins  := src_SUSYBSMAnalysis-RazorTuplizer_plugins
src_SUSYBSMAnalysis-RazorTuplizer_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SUSYBSMAnalysis-RazorTuplizer/plugins/BuildFile
src_SUSYBSMAnalysis-RazorTuplizer_plugins_LOC_USE := FWCore/PluginManager RecoEcal/EgammaCoreTools FWCore/Framework self EgammaAnalysis/ElectronTools RecoEgamma/EgammaTools fastjet SUSYBSMAnalysis/RazorTuplizer DataFormats/PatCandidates FWCore/ParameterSet PhysicsTools/UtilAlgos
src_SUSYBSMAnalysis-RazorTuplizer_plugins_EX_USE   := $(foreach d,$(src_SUSYBSMAnalysis-RazorTuplizer_plugins_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_SUSYBSMAnalysis-RazorTuplizer_plugins
src_SUSYBSMAnalysis-RazorTuplizer_plugins_INIT_FUNC += $$(eval $$(call EmptyPackage,src_SUSYBSMAnalysis-RazorTuplizer_plugins,src/SUSYBSMAnalysis-RazorTuplizer/plugins))
endif

