ALL_SUBSYSTEMS+=SUSYBSMAnalysis
subdirs_src_SUSYBSMAnalysis = src_SUSYBSMAnalysis_RazorTuplizer
ALL_PACKAGES += SUSYBSMAnalysis/RazorTuplizer
subdirs_src_SUSYBSMAnalysis_RazorTuplizer := src_SUSYBSMAnalysis_RazorTuplizer_python src_SUSYBSMAnalysis_RazorTuplizer_src src_SUSYBSMAnalysis_RazorTuplizer_plugins
ifeq ($(strip $(PySUSYBSMAnalysisRazorTuplizer)),)
PySUSYBSMAnalysisRazorTuplizer := self/src/SUSYBSMAnalysis/RazorTuplizer/python
src_SUSYBSMAnalysis_RazorTuplizer_python_parent := 
ALL_PYTHON_DIRS += $(patsubst src/%,%,src/SUSYBSMAnalysis/RazorTuplizer/python)
PySUSYBSMAnalysisRazorTuplizer_files := $(patsubst src/SUSYBSMAnalysis/RazorTuplizer/python/%,%,$(wildcard $(foreach dir,src/SUSYBSMAnalysis/RazorTuplizer/python ,$(foreach ext,$(SRC_FILES_SUFFIXES),$(dir)/*.$(ext)))))
PySUSYBSMAnalysisRazorTuplizer_LOC_USE := self  
PySUSYBSMAnalysisRazorTuplizer_PACKAGE := self/src/SUSYBSMAnalysis/RazorTuplizer/python
ALL_PRODS += PySUSYBSMAnalysisRazorTuplizer
PySUSYBSMAnalysisRazorTuplizer_INIT_FUNC        += $$(eval $$(call PythonProduct,PySUSYBSMAnalysisRazorTuplizer,src/SUSYBSMAnalysis/RazorTuplizer/python,src_SUSYBSMAnalysis_RazorTuplizer_python,1,1,$(SCRAMSTORENAME_PYTHON),$(SCRAMSTORENAME_LIB),,))
else
$(eval $(call MultipleWarningMsg,PySUSYBSMAnalysisRazorTuplizer,src/SUSYBSMAnalysis/RazorTuplizer/python))
endif
ALL_COMMONRULES += src_SUSYBSMAnalysis_RazorTuplizer_python
src_SUSYBSMAnalysis_RazorTuplizer_python_INIT_FUNC += $$(eval $$(call CommonProductRules,src_SUSYBSMAnalysis_RazorTuplizer_python,src/SUSYBSMAnalysis/RazorTuplizer/python,PYTHON))
ALL_SUBSYSTEMS+=Plots_KevinFile
subdirs_src_Plots_KevinFile = 
ALL_SUBSYSTEMS+=RazorAnalyzer
subdirs_src_RazorAnalyzer = src_RazorAnalyzer_python src_RazorAnalyzer_bin src_RazorAnalyzer_Summer16_23Sep2016V3_MC src_RazorAnalyzer_include src_RazorAnalyzer_data src_RazorAnalyzer_Summer16_23Sep2016V3_DATA src_RazorAnalyzer_analyzers src_RazorAnalyzer_macros src_RazorAnalyzer_lists src_RazorAnalyzer_src src_RazorAnalyzer_scripts src_RazorAnalyzer_FitResults src_RazorAnalyzer_Tools src_RazorAnalyzer_fitting src_RazorAnalyzer_config
ALL_PACKAGES += RazorAnalyzer/FitResults
subdirs_src_RazorAnalyzer_FitResults := 
ALL_PACKAGES += RazorAnalyzer/Tools
subdirs_src_RazorAnalyzer_Tools := src_RazorAnalyzer_Tools_SkimEvents src_RazorAnalyzer_Tools_SyncTools
ALL_PACKAGES += RazorAnalyzer/analyzers
subdirs_src_RazorAnalyzer_analyzers := 
ALL_PACKAGES += RazorAnalyzer/bin
subdirs_src_RazorAnalyzer_bin := 
ALL_PACKAGES += RazorAnalyzer/config
subdirs_src_RazorAnalyzer_config := 
ALL_PACKAGES += RazorAnalyzer/data
subdirs_src_RazorAnalyzer_data := src_RazorAnalyzer_data_Certification src_RazorAnalyzer_data_JEC src_RazorAnalyzer_data_MetFilters src_RazorAnalyzer_data_PhotonCorrections src_RazorAnalyzer_data_PileupWeights
ALL_PACKAGES += RazorAnalyzer/fitting
subdirs_src_RazorAnalyzer_fitting := 
ALL_PACKAGES += RazorAnalyzer/include
subdirs_src_RazorAnalyzer_include := 
ALL_PACKAGES += RazorAnalyzer/lists
subdirs_src_RazorAnalyzer_lists := src_RazorAnalyzer_lists_Run2 src_RazorAnalyzer_lists_caltech src_RazorAnalyzer_lists_razorNtuplerV1p4-25ns_v1_v1
ALL_PACKAGES += RazorAnalyzer/macros
subdirs_src_RazorAnalyzer_macros := src_RazorAnalyzer_macros_BackgroundStudies src_RazorAnalyzer_macros_ObjectStudies src_RazorAnalyzer_macros_OtherStudies src_RazorAnalyzer_macros_PhotonIsoStudies src_RazorAnalyzer_macros_TMVA_vtx src_RazorAnalyzer_macros_TriggerStudies
ALL_PACKAGES += RazorAnalyzer/python
subdirs_src_RazorAnalyzer_python := src_RazorAnalyzer_python_macro src_RazorAnalyzer_python_src
ALL_PACKAGES += RazorAnalyzer/scripts
subdirs_src_RazorAnalyzer_scripts := 
ALL_PACKAGES += RazorAnalyzer/src
subdirs_src_RazorAnalyzer_src := 
ALL_SUBSYSTEMS+=Plots_Ntuples
subdirs_src_Plots_Ntuples = 
ALL_PACKAGES += RazorAnalyzer/Summer16_23Sep2016V3_DATA
subdirs_src_RazorAnalyzer_Summer16_23Sep2016V3_DATA := 
ALL_PACKAGES += RazorAnalyzer/Summer16_23Sep2016V3_MC
subdirs_src_RazorAnalyzer_Summer16_23Sep2016V3_MC := 
ALL_SUBSYSTEMS+=OldPlots
subdirs_src_OldPlots = 
ALL_SUBSYSTEMS+=SUSYBSMAnalysis-RazorTuplizer
subdirs_src_SUSYBSMAnalysis-RazorTuplizer = src_SUSYBSMAnalysis-RazorTuplizer_data src_SUSYBSMAnalysis-RazorTuplizer_interface src_SUSYBSMAnalysis-RazorTuplizer_plugins src_SUSYBSMAnalysis-RazorTuplizer_python src_SUSYBSMAnalysis-RazorTuplizer_src
ALL_PACKAGES += SUSYBSMAnalysis-RazorTuplizer/data
subdirs_src_SUSYBSMAnalysis-RazorTuplizer_data := src_SUSYBSMAnalysis-RazorTuplizer_data_Spring16_GeneralPurpose_V1
ALL_PACKAGES += SUSYBSMAnalysis-RazorTuplizer/interface
subdirs_src_SUSYBSMAnalysis-RazorTuplizer_interface := 
ALL_PACKAGES += SUSYBSMAnalysis-RazorTuplizer/plugins
subdirs_src_SUSYBSMAnalysis-RazorTuplizer_plugins := 
ALL_PACKAGES += SUSYBSMAnalysis-RazorTuplizer/python
subdirs_src_SUSYBSMAnalysis-RazorTuplizer_python := 
ALL_PACKAGES += SUSYBSMAnalysis-RazorTuplizer/src
subdirs_src_SUSYBSMAnalysis-RazorTuplizer_src := 
ALL_SUBSYSTEMS+=SUSYBSMAnalysis_old
subdirs_src_SUSYBSMAnalysis_old = src_SUSYBSMAnalysis_old_data src_SUSYBSMAnalysis_old_interface src_SUSYBSMAnalysis_old_plugins src_SUSYBSMAnalysis_old_python src_SUSYBSMAnalysis_old_src
ALL_PACKAGES += SUSYBSMAnalysis_old/python
subdirs_src_SUSYBSMAnalysis_old_python := 
ALL_PACKAGES += SUSYBSMAnalysis_old/src
subdirs_src_SUSYBSMAnalysis_old_src := 