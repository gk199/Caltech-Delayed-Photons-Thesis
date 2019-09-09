#!/usr/bin/env python

#import matplotlib.pyplot as plt
import os
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
from scipy import integrate

eff_sig = []
eff_bkg = []
eff_GJets = []


with open('roc_QCD_GJets_GMSB_ECAL_nozero.txt', 'r') as textfile:
    for i, line in enumerate(textfile):
        if i==0:
            continue
        splitline = line.split(',')
        cut = float(splitline[0])
        efficiency_sig = float(splitline[1])
        efficiency_bkg = float(splitline[2])
        efficiency_GJets = float(splitline[3])
        eff_sig.append(efficiency_sig) 
        eff_bkg.append(efficiency_bkg)
        eff_GJets.append(efficiency_GJets)

root.gROOT.Reset()
n = len(eff_sig)

#GJets vs QCD
gr1 = root.TGraph(n,eff_bkg, eff_GJets)

#GMSB vs QCD
gr2 = root.TGraph(n, eff_bkg,eff_sig)

#GMSB vs GJets
gr3 = root.TGraph(n, eff_GJets,eff_sig)


print gr1.Integral()
print gr2.Integral()
print gr3.Integral()

# Compute the area using the composite Simpson's rule.
# area_GMSB_QCD = integrate.simps(eff_sig, eff_bkg)
# print("area GMSB QCD =", area_GMSB_QCD)

# area_GJets_QCD = integrate.simps(eff_GJets, eff_bkg)
# print("area GJets QCD =", area_GJets_QCD)

# area_GMSB_GJets = integrate.simps(eff_sig, eff_GJets)
# print("area GMSB GJets =", area_GMSB_GJets)
