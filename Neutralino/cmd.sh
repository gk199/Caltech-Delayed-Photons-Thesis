cmsrel CMSSW_8_0_26_patch1
cd CMSSW_8_0_26_patch1/src
cmsenv
git cms-merge-topic cms-met:METRecipe_80X_part2 -u
git cms-merge-topic rafaellopesdesa:Regression80XEgammaAnalysis_v2
git cms-merge-topic ikrav:egm_id_80X_v2
git clone git@github.com:RazorCMS/SUSYBSMAnalysis-RazorTuplizer SUSYBSMAnalysis/RazorTuplizer
cp SUSYBSMAnalysis/RazorTuplizer/data/Spring16_GeneralPurpose_V1/ RecoEgamma/ElectronIdentification/data/ -r
cp SUSYBSMAnalysis/RazorTuplizer/data/Spring16_HZZ_V1/ RecoEgamma/ElectronIdentification/data/ -r
scram b

