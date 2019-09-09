#!/usr/bin/env python

#import matplotlib.pyplot as plt
import matplotlib as mpl
mpl.use('Agg')
import matplotlib.pyplot as plt
from xgboost import XGBClassifier
from xgboost import plot_tree
from sklearn.model_selection import train_test_split
from sklearn.metrics import accuracy_score, roc_curve
import root_pandas as rp
import numpy as np
import pandas as pd
import math
import cPickle as pickle
import ROOT as root

#################
##Preliminaries
#################
lumi = 100.#1/fb
pb2fb = 1000.

#####getting selection efficiency###########

#signal
signalFileEffName = '/afs/cern.ch/work/g/gkopp/Thesis/MC_Nov24_noIsoCut_barrelskim/GMSB_L150TeV_Ctau200cm_13TeV-pythia8_pho1Pt_EB.root'
#signalFileEffName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/GMSB_L250TeV_Ctau200cm_13TeV-pythia8_skimmedpho1Pt_EB.root'
#signalFileEffName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_GJets_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'
#signalFileEffName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_QCD_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'


signalFileEff = root.TFile(signalFileEffName)
signalTreeEff = signalFileEff.Get('DelayedPhoton')
signalTreeEff.Draw('MET>>tmp1', 'weight*(1)')
signalHistoEff = root.gDirectory.Get('tmp1')
signalNevents = signalFileEff.Get('NEvents')
signalEff = signalHistoEff.Integral()/signalNevents.Integral()

#bkg
bkgFileEffName = '/afs/cern.ch/work/g/gkopp/Thesis/MC_Nov24_noIsoCut_barrelskim/DelayedPhoton_GJets_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'

#bkgFileEffName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_GJets_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'
#bkgFileEffName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_QCD_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'


bkgFileEff = root.TFile(bkgFileEffName)
bkgTreeEff = bkgFileEff.Get('DelayedPhoton')
bkgTreeEff.Draw('MET>>tmp2', 'weight*(1)')
bkgHistoEff = root.gDirectory.Get('tmp2')
bkgNevents = bkgFileEff.Get('NEvents')
bkgEff = bkgHistoEff.Integral()/bkgNevents.Integral()

signalXsec = 0.1651*0.003179651616*pb2fb
bkgXsec    = 1.212*pb2fb

Sqrt_EffTimesXsec = math.sqrt(bkgXsec*bkgEff + signalXsec*signalEff)

print '[INFO]: sqrt(Eff*XSEC): ', Sqrt_EffTimesXsec

root.gROOT.Reset()

#####getting unconditional probabilities###########

#signal
signalFileName = '/afs/cern.ch/work/g/gkopp/Thesis/MC_Nov24_noIsoCut_barrelskim/GMSB_L150TeV_Ctau200cm_13TeV-pythia8_pho1Pt_EB.root'
#signalFileName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/GMSB_L250TeV_Ctau200cm_13TeV-pythia8_skimmedpho1Pt_EB.root'
#signalFileName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_GJets_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'
#signalFileName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_QCD_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'


signalFile = root.TFile(signalFileName)
signalTree = signalFile.Get('DelayedPhoton')
signalTree.Draw('MET>>tmp3', 'weight*(1)')
signalHisto = root.gDirectory.Get('tmp3')
signalEvents = pb2fb*lumi*signalHisto.Integral()

#bkg
bkgFileName = '/afs/cern.ch/work/g/gkopp/Thesis/MC_Nov24_noIsoCut_barrelskim/DelayedPhoton_GJets_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'

#.bkgFileName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_GJets_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'
#bkgFileName = '/Users/gillian/Documents/Caltech/Senior/Thesis/DelayedPhotonFiles/MC_Nov24_noIsoCuts_barrelskim/DelayedPhoton_QCD_HTall_TuneCUETP8M1_13TeV-madgraphMLM-pythia8_skimmed_skimmedpho1Pt_EB.root'


bkgFile = root.TFile(bkgFileName)
bkgTree = bkgFile.Get('DelayedPhoton')
bkgTree.Draw('MET>>tmp4', 'weight*(1)')
bkgHisto = root.gDirectory.Get('tmp4')
bkgEvents = pb2fb*lumi*bkgHisto.Integral()

PofS = signalEvents/(signalEvents+bkgEvents)
PofB = 1. - PofS

print '[INFO]: p(S) =', PofS, '; P(B) =', PofB

test_name = 'MET_only_and_onlyOneTreeWithOneLeaf'

##Define variables to be used
#variables = ['MET','METPhi','lep1Pt','lep2Pt','lep3Pt','lep4Pt','NJet20','NJet30','NBJet20','NBJet30','lep1Phi','lep2Phi','lep3Phi','lep4Phi','lep1Eta','lep2Eta','lep3Eta','lep4Eta','ZMass','ZPt','lep3MT','lep4MT','lep34MT','phi0','theta0','phi','theta1','theta2','phiH','minDRJetToLep3','minDRJetToLep4']
#variables = ['MET','lep1Pt','lep2Pt','lep3Pt','lep4Pt','ZMass','lep3Id', 'lep4Id']
#variables = ['MET','lep1Pt','lep2Pt','lep3Pt','lep4Pt','ZMass','lep3Id', 'lep4Id','ZPt','lep3MT','lep4MT','lep34MT','phi0','theta0','phi','theta1','theta2','phiH','lep34Mass']
#variables = ['pho1Smajor','pho1Sminor','pho1SigmaIetaIeta','pho1HoverE','pho1PFsumChargedHadronPt','pho1PFsumNeutralHadronEt','pho1PFsumPhotonEt', 'pho1R9']
#variables = ['pho1SigmaIetaIeta','pho1HoverE','pho1ecalPFClusterIso','pho1hcalPFClusterIso','pho1trkSumPtHollowConeDR03']

#variables = ['pho1ecalPFClusterIso','pho1trkSumPtHollowConeDR03','pho1PFsumNeutralHadronEt','pho1HoverE','pho1SigmaIetaIeta','pho1Smajor','pho1Sminor','pho1R9'] #for signal
#variables = ['pho1PFsumNeutralHadronEt','pho1PFsumChargedHadronPt','pho1PFsumPhotonEt','pho1HoverE','pho1SigmaIetaIeta','pho1Smajor','pho1Sminor','pho1R9'] #for QCD and GJets
#variables = ['pho1ecalPFClusterIso','pho1trkSumPtHollowConeDR03','pho1PFsumNeutralHadronEt','pho1SigmaIetaIeta','pho1Smajor','pho1Sminor','pho1R9','pho1HoverE']
variables = ['pho1Sminor','pho1SeedTimeRaw'] #use for 2 var testing
#variables = ['pho1ecalPFClusterIso','pho1trkSumPtHollowConeDR03','pho1PFsumNeutralHadronEt','pho1SigmaIetaIeta','pho1Smajor','pho1Sminor','pho1R9'] 


#pho1SeedTimeRaw
#variables = ['pho1sumNeutralHadronEt','pho1sumPhotonEt']
#variables = ['MET']

##Getting ROOT files into pandas
#df_signal = rp.read_root('/Users/cmorgoth/Work/data/WWZanalysis/MC/WWZAnalysis_WWZJetsTo4L2Nu_4f_TuneCUETP8M1_13TeV_aMCatNLOFxFx_pythia8.root', 'WWZAnalysis', columns=['MET','lep1Pt','lep2Pt','lep3Pt','lep4Pt'])
#df_bkg = rp.read_root('/Users/cmorgoth/Work/data/WWZanalysis/MC/WWZAnalysis_ZZTo4L_13TeV-amcatnloFXFX-pythia8.root', 'WWZAnalysis', columns=['MET','lep1Pt','lep2Pt','lep3Pt','lep4Pt'])
df_signal = rp.read_root(signalFileName,
                             'DelayedPhoton', columns=variables)
df_bkg = rp.read_root(bkgFileName,
                          'DelayedPhoton', columns=variables)


##Getting Sample weights
weights_signal = rp.read_root(signalFileEffName,
                                  'DelayedPhoton', columns=['weight'])
weights_bkg = rp.read_root(bkgFileEffName,
                          'DelayedPhoton', columns=['weight'])


## We care about the sign of the sample only, we don't care about the xsec weight
#weights_sign_signal = np.sign(weights_signal)
#weights_sign_bkg = np.sign(weights_bkg)
weights_sign_signal = weights_signal
weights_sign_bkg = weights_bkg

#print weights_sign_signal.head()
#print weights_sign_bkg.head()

##Getting a numpy array out of two pandas data frame
sample_weights = np.concatenate([weights_sign_bkg.values, weights_sign_signal.values])
#print sample_weights

#getting a numpy array from two pandas data frames
x = np.concatenate([df_bkg.values,df_signal.values])
#creating numpy array for target variables
y = np.concatenate([np.zeros(len(df_bkg)),
                        np.ones(len(df_signal))])

# split data into train and test sets
seed = 7
test_size = 0.4
x_train, x_test, y_train, y_test = train_test_split(x, y, test_size=test_size, random_state=seed)

#x_test_barrel = [event for event in x_test if event[8] < 1.5] # test on events only in barrel
#x_test_barrel = x_test[ x_test[:, 8] < 1.5] # test on events only in barrel
#print x_test

# fit model no training data
#model = XGBClassifier(max_depth=8, n_estimators=1000, gamma=1, learning_rate=0.99, silent=True)
#model = XGBClassifier(max_depth=2, gamma=1, silent=True)
#model = XGBClassifier(max_depth=3,n_estimators=1) # use for 2 var testing
model = XGBClassifier()
print( dir(model) )
print model
#model.fit(x_train, y_train, sample_weight=sample_weights)
model.fit(x_train, y_train)





# make predictions for test data
#y_pred = model.predict(x_test)
y_pred = model.predict_proba(x_test)[:, 1]
predictions = [round(value) for value in y_pred]

#print y_pred
##########################################################
# make histogram of discriminator value for signal and bkg
##########################################################
#pd.DataFrame({'truth':y_test, 'disc':y_pred}).hist(column='disc', by='truth', bins=50)
y_frame = pd.DataFrame({'truth':y_test, 'disc':y_pred})
disc_bkg    = y_frame[y_frame['truth'] == 0]['disc'].values
disc_signal = y_frame[y_frame['truth'] == 1]['disc'].values
plt.figure()
plt.hist(disc_bkg, normed=True, bins=50, alpha=0.3)
plt.hist(disc_signal, normed=True, bins=50, alpha=0.3)
plt.savefig('mydiscriminator.png')
print "disc_bkg: ", disc_bkg
print "disc_signal: ", disc_signal
#print y_pred

# evaluate predictions
accuracy = accuracy_score(y_test, predictions)
print("Accuracy: %.2f%%" % (accuracy * 100.0))

#get roc curve
#roc = roc_curve(y_test, y_pred)
fpr, tpr, _ = roc_curve(y_test, y_pred)

for i in range(len(fpr)):
    if fpr[i] >0.0116 and fpr[i] < 0.0118:
        print "False Positive Rate: ", fpr[i]
        print "True Positive Rate: ", tpr[i]

#plot roc curve
plt.figure()
lw = 2
plt.plot(fpr, tpr, color='darkorange',
         lw=lw, label='ROC curve')
plt.plot([0, 1], [0, 1], color='navy', lw=lw, linestyle='--')
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 1.05])
plt.xlabel('Background (false positives)')
plt.ylabel('Signal (true positives)')
plt.title('Receiver operating characteristic - GMSB vs. Photons + Jets')
plt.legend(loc="lower right")
#plt.show()
plt.savefig('myroc_' + test_name + '.png')


## plot S/sqrt(B)
significance = []
effSignal = []
effBkg = []
#print len(fpr)

ctr = 0
for i in range(len(fpr)):
    if fpr[i] > 1e-5 and tpr[i] > 1e-5:
        #print fpr[i], tpr[i] 
        #significance.append(math.sqrt(lumi)*4.8742592356*0.006431528796*tpr[i]/math.sqrt(fpr[i]*0.9935684712))
        significance.append(math.sqrt(lumi)*Sqrt_EffTimesXsec*PofS*tpr[i]/math.sqrt(fpr[i]*PofB))
        effSignal.append(tpr[i])
        effBkg.append(fpr[i])
        #print significance[ctr], ' ' , fpr[ctr], ' ', tpr[ctr]
        ctr = ctr + 1


#print "signal Eff: ", effSignal        
#print "significance:", significance
        
plt.figure()
plt.plot(effSignal, significance, color='darkorange',
         lw=lw, label='s/sqrt(B)')
#plt.plot([0, 1], [0, 10], color='navy', lw=lw, linestyle='--')
plt.xlim([0.0, 1.0])
plt.ylim([0.0, 5.01])
plt.xlabel('signal efficiency')
plt.ylabel('s/sqrt(B)')
plt.title('significance')
plt.legend(loc="lower right")
#plt.show()
plt.savefig('significance_' + test_name + '.png')


plt.figure()
plt.plot(effBkg, significance, color='darkorange',
         lw=lw, label='s/sqrt(B)')
#plt.plot([0, 1], [0, 10], color='navy', lw=lw, linestyle='--')
plt.xlim([0.0, .2])
plt.ylim([0.0, 5.01])
plt.xlabel('bkg. efficiency')
plt.ylabel('s/sqrt(B)')
plt.title('significance')
plt.legend(loc="lower right")
#plt.show()
plt.savefig('significance_bkg_' + test_name + '.png')



# Plot
plt.figure()
plt.bar(range(len(model.feature_importances_)), model.feature_importances_)
#plt.show()
plt.savefig('myImportances_' + test_name + '.png')

plot_tree( model )
plt.savefig('myTree_' + test_name + '.png')

print "MAXIMUM SIGNIFICANCE = ", max(significance)


output = open('model.pkl', 'wb')

# Pickle dictionary using protocol 0.
pickle.dump(model, output)
output.close()
