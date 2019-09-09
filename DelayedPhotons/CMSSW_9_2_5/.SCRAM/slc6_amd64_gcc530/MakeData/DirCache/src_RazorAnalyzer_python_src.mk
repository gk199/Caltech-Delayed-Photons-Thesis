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
