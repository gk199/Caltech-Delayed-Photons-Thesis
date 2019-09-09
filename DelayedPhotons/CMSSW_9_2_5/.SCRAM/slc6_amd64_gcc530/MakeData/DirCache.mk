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
ifeq ($(strip $(RazorAnalyzer/python)),)
ALL_COMMONRULES += src_RazorAnalyzer_python_src
src_RazorAnalyzer_python_src_parent := RazorAnalyzer/python
src_RazorAnalyzer_python_src_INIT_FUNC := $$(eval $$(call CommonProductRules,src_RazorAnalyzer_python_src,src/RazorAnalyzer/python/src,LIBRARY))
RazorAnalyzerpython := self/RazorAnalyzer/python
RazorAnalyzer/python := RazorAnalyzerpython
RazorAnalyzerpython_files := $(patsubst src/RazorAnalyzer/python/src/%,%,$(wildcard $(foreach dir,src/RazorAnalyzer/python/src ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
RazorAnalyzerpython_LOC_USE := self  
RazorAnalyzerpython_PACKAGE := self/src/RazorAnalyzer/python/src
ALL_PRODS += RazorAnalyzerpython
RazorAnalyzerpython_CLASS := LIBRARY
RazorAnalyzer/python_forbigobj+=RazorAnalyzerpython
RazorAnalyzerpython_INIT_FUNC        += $$(eval $$(call Library,RazorAnalyzerpython,src/RazorAnalyzer/python/src,src_RazorAnalyzer_python_src,$(SCRAMSTORENAME_BIN),,$(SCRAMSTORENAME_LIB),$(SCRAMSTORENAME_LOGS)))
endif
ifeq ($(strip $(SUSYBSMAnalysis-RazorTuplizer/plugins)),)
src_SUSYBSMAnalysis-RazorTuplizer_plugins := self/SUSYBSMAnalysis-RazorTuplizer/plugins
SUSYBSMAnalysis-RazorTuplizer/plugins  := src_SUSYBSMAnalysis-RazorTuplizer_plugins
src_SUSYBSMAnalysis-RazorTuplizer_plugins_BuildFile    := $(WORKINGDIR)/cache/bf/src/SUSYBSMAnalysis-RazorTuplizer/plugins/BuildFile
src_SUSYBSMAnalysis-RazorTuplizer_plugins_LOC_USE := FWCore/PluginManager RecoEcal/EgammaCoreTools FWCore/Framework self EgammaAnalysis/ElectronTools RecoEgamma/EgammaTools fastjet SUSYBSMAnalysis/RazorTuplizer DataFormats/PatCandidates FWCore/ParameterSet PhysicsTools/UtilAlgos
src_SUSYBSMAnalysis-RazorTuplizer_plugins_EX_USE   := $(foreach d,$(src_SUSYBSMAnalysis-RazorTuplizer_plugins_LOC_USE),$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += src_SUSYBSMAnalysis-RazorTuplizer_plugins
src_SUSYBSMAnalysis-RazorTuplizer_plugins_INIT_FUNC += $$(eval $$(call EmptyPackage,src_SUSYBSMAnalysis-RazorTuplizer_plugins,src/SUSYBSMAnalysis-RazorTuplizer/plugins))
endif

