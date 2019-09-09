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
