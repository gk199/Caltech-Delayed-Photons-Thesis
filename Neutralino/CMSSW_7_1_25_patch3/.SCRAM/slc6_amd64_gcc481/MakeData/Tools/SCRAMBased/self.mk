ifeq ($(strip $(GeneratorInterface/GenFilters)),)
GeneratorInterfaceGenFilters := self/GeneratorInterface/GenFilters
GeneratorInterface/GenFilters := GeneratorInterfaceGenFilters
GeneratorInterfaceGenFilters_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceGenFilters_EX_USE := $(foreach d, self cmssw boost FWCore/PluginManager FWCore/ParameterSet FWCore/Framework FWCore/Utilities SimDataFormats/GeneratorProducts heppdt clhep root GeneratorInterface/Pythia6Interface GeneratorInterface/Core SimGeneral/HepPDTRecord DataFormats/GeometryVector DataFormats/GeometrySurface TrackPropagation/SteppingHelixPropagator MagneticField/Records TrackingTools/TrajectoryState TrackingTools/TrajectoryParametrization TrackingTools/Records CommonTools/UtilAlgos FWCore/ServiceRegistry FastSimulation/Particle FastSimulation/BaseParticlePropagator TrackingTools/GeomPropagators DataFormats/HepMCCandidate DataFormats/JetReco DataFormats/EgammaReco,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += GeneratorInterfaceGenFilters
GeneratorInterfaceGenFilters_CLASS := LIBRARY
GeneratorInterface/GenFilters_relbigobj+=GeneratorInterfaceGenFilters
endif
ifeq ($(strip $(GeneratorInterface/Pythia8Interface)),)
GeneratorInterfacePythia8Interface := self/GeneratorInterface/Pythia8Interface
GeneratorInterface/Pythia8Interface := GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfacePythia8Interface_EX_USE := $(foreach d, self cmssw FWCore/Concurrency FWCore/Framework FWCore/MessageLogger FWCore/Utilities SimDataFormats/GeneratorProducts GeneratorInterface/Core boost pythia8 evtgen hepmc clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfacePythia8Interface_EX_LIB   := GeneratorInterfacePythia8Interface
ALL_EXTERNAL_PRODS += GeneratorInterfacePythia8Interface
GeneratorInterfacePythia8Interface_CLASS := LIBRARY
GeneratorInterface/Pythia8Interface_relbigobj+=GeneratorInterfacePythia8Interface
endif
ifeq ($(strip $(SimG4CMSHcalTestBeamHcalTB04Analysis)),)
SimG4CMSHcalTestBeamHcalTB04Analysis := self/src/SimG4CMS/HcalTestBeam/plugins
SimG4CMSHcalTestBeamHcalTB04Analysis_LOC_USE := self cmssw SimG4CMS/HcalTestBeam SimG4Core/Watcher FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry
SimG4CMS/HcalTestBeam_relbigobj+=SimG4CMSHcalTestBeamHcalTB04Analysis
endif
ifeq ($(strip $(SimG4CMSHcalTestBeamHcalTB02Analysis)),)
SimG4CMSHcalTestBeamHcalTB02Analysis := self/src/SimG4CMS/HcalTestBeam/plugins
SimG4CMSHcalTestBeamHcalTB02Analysis_LOC_USE := self cmssw SimG4CMS/HcalTestBeam SimG4Core/Watcher FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry
SimG4CMS/HcalTestBeam_relbigobj+=SimG4CMSHcalTestBeamHcalTB02Analysis
endif
ifeq ($(strip $(SimG4CMSHcalTestBeamHcalModule)),)
SimG4CMSHcalTestBeamHcalModule := self/src/SimG4CMS/HcalTestBeam/plugins
SimG4CMSHcalTestBeamHcalModule_LOC_USE := self cmssw SimG4CMS/HcalTestBeam SimG4Core/Watcher FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry
SimG4CMS/HcalTestBeam_relbigobj+=SimG4CMSHcalTestBeamHcalModule
endif
ifeq ($(strip $(SimG4CMSHcalTestBeamHcalTB06Analysis)),)
SimG4CMSHcalTestBeamHcalTB06Analysis := self/src/SimG4CMS/HcalTestBeam/plugins
SimG4CMSHcalTestBeamHcalTB06Analysis_LOC_USE := self cmssw SimG4CMS/HcalTestBeam SimG4Core/Watcher FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry
SimG4CMS/HcalTestBeam_relbigobj+=SimG4CMSHcalTestBeamHcalTB06Analysis
endif
ifeq ($(strip $(JetMETCorrectionsType1MET_plugins)),)
JetMETCorrectionsType1MET_plugins := self/src/JetMETCorrections/Type1MET/plugins
JetMETCorrectionsType1MET_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CommonTools/Utils DataFormats/Candidate DataFormats/JetReco DataFormats/METReco DataFormats/MuonReco DataFormats/ParticleFlowCandidate DataFormats/PatCandidates DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects JetMETCorrections/Type1MET
JetMETCorrections/Type1MET_relbigobj+=JetMETCorrectionsType1MET_plugins
endif
ifeq ($(strip $(SimG4Core/CustomPhysics)),)
SimG4CoreCustomPhysics := self/SimG4Core/CustomPhysics
SimG4Core/CustomPhysics := SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreCustomPhysics_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/MessageLogger SimG4Core/Physics SimG4Core/PhysicsLists geant4core clhep boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreCustomPhysics_EX_LIB   := SimG4CoreCustomPhysics
ALL_EXTERNAL_PRODS += SimG4CoreCustomPhysics
SimG4CoreCustomPhysics_CLASS := LIBRARY
SimG4Core/CustomPhysics_relbigobj+=SimG4CoreCustomPhysics
endif
ifeq ($(strip $(PhysicsTools/PatAlgos)),)
PhysicsToolsPatAlgos := self/PhysicsTools/PatAlgos
PhysicsTools/PatAlgos := PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsPatAlgos_EX_USE := $(foreach d, self cmssw DataFormats/Candidate DataFormats/Common DataFormats/EgammaCandidates DataFormats/EgammaReco DataFormats/JetReco DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/PatCandidates DataFormats/TauReco DataFormats/TrackReco DataFormats/VertexReco FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities PhysicsTools/PatUtils PhysicsTools/Utilities PhysicsTools/IsolationAlgos Geometry/CaloTopology RecoEgamma/EgammaTools clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatAlgos_EX_LIB   := PhysicsToolsPatAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsPatAlgos
PhysicsToolsPatAlgos_CLASS := LIBRARY
PhysicsTools/PatAlgos_relbigobj+=PhysicsToolsPatAlgos
endif
ifeq ($(strip $(GeneratorInterfaceHiGenCommonPlugins)),)
GeneratorInterfaceHiGenCommonPlugins := self/src/GeneratorInterface/HiGenCommon/plugins
GeneratorInterfaceHiGenCommonPlugins_LOC_USE := self cmssw GeneratorInterface/HiGenCommon FWCore/Framework FWCore/PluginManager FWCore/ServiceRegistry FWCore/Utilities SimGeneral/HepPDTRecord heppdt clhep
GeneratorInterface/HiGenCommon_relbigobj+=GeneratorInterfaceHiGenCommonPlugins
endif
ifeq ($(strip $(EvtGenInterface)),)
EvtGenInterface := self/src/GeneratorInterface/EvtGenInterface/plugins
EvtGenInterface_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager GeneratorInterface/EvtGenInterface SimGeneral/HepPDTRecord heppdt clhep hepmc evtgen pythia8 tauolapp photospp root
GeneratorInterface/EvtGenInterface_relbigobj+=EvtGenInterface
endif
ifeq ($(strip $(GenDataCardFileWriter)),)
GenDataCardFileWriter := self/src/GeneratorInterface/EvtGenInterface/plugins
GenDataCardFileWriter_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager
GeneratorInterface/EvtGenInterface_relbigobj+=GenDataCardFileWriter
endif
ifeq ($(strip $(EvtGenLHCInterface)),)
EvtGenLHCInterface := self/src/GeneratorInterface/EvtGenInterface/plugins
EvtGenLHCInterface_LOC_USE := self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/PluginManager GeneratorInterface/EvtGenInterface GeneratorInterface/Pythia6Interface SimGeneral/HepPDTRecord heppdt clhep hepmc evtgenlhc photos
GeneratorInterface/EvtGenInterface_relbigobj+=EvtGenLHCInterface
endif
ifeq ($(strip $(SimG4CoreApplicationPlugins)),)
SimG4CoreApplicationPlugins := self/src/SimG4Core/Application/plugins
SimG4CoreApplicationPlugins_LOC_USE := self cmssw FWCore/Concurrency FWCore/Framework FWCore/ParameterSet SimDataFormats/GeneratorProducts SimDataFormats/CaloHit SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex SimG4Core/Application geant4core hepmc
SimG4Core/Application_relbigobj+=SimG4CoreApplicationPlugins
endif
ifeq ($(strip $(PhysicsToolsPatAlgos_plugins)),)
PhysicsToolsPatAlgos_plugins := self/src/PhysicsTools/PatAlgos/plugins
PhysicsToolsPatAlgos_plugins_LOC_USE := self cmssw PhysicsTools/PatAlgos FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService L1Trigger/GlobalTriggerAnalyzer HLTrigger/HLTcore DataFormats/PatCandidates DataFormats/BTauReco DataFormats/JetReco DataFormats/TrackReco DataFormats/Candidate DataFormats/HeavyIonEvent PhysicsTools/PatUtils CondFormats/JetMETObjects JetMETCorrections/Objects TrackingTools/TransientTrack SimDataFormats/Track SimDataFormats/Vertex SimGeneral/HepPDTRecord RecoMET/METAlgorithms RecoEgamma/EgammaTools TrackingTools/IPTools root
PhysicsTools/PatAlgos_relbigobj+=PhysicsToolsPatAlgos_plugins
endif
ifeq ($(strip $(Utilities/General)),)
UtilitiesGeneral := self/Utilities/General
Utilities/General := UtilitiesGeneral
UtilitiesGeneral_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
UtilitiesGeneral_EX_USE := $(foreach d, self cmssw FWCore/Utilities boost,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
UtilitiesGeneral_EX_LIB   := UtilitiesGeneral
ALL_EXTERNAL_PRODS += UtilitiesGeneral
UtilitiesGeneral_CLASS := LIBRARY
Utilities/General_relbigobj+=UtilitiesGeneral
endif
ifeq ($(strip $(GeneratorInterface/EvtGenInterface)),)
GeneratorInterfaceEvtGenInterface := self/GeneratorInterface/EvtGenInterface
GeneratorInterface/EvtGenInterface := GeneratorInterfaceEvtGenInterface
GeneratorInterfaceEvtGenInterface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceEvtGenInterface_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet FWCore/Framework FWCore/PluginManager hepmc clhep heppdt,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceEvtGenInterface_EX_LIB   := GeneratorInterfaceEvtGenInterface
ALL_EXTERNAL_PRODS += GeneratorInterfaceEvtGenInterface
GeneratorInterfaceEvtGenInterface_CLASS := LIBRARY
GeneratorInterface/EvtGenInterface_relbigobj+=GeneratorInterfaceEvtGenInterface
endif
ifeq ($(strip $(PhysicsToolsJetMCAlgosPlugins)),)
PhysicsToolsJetMCAlgosPlugins := self/src/PhysicsTools/JetMCAlgos/plugins
PhysicsToolsJetMCAlgosPlugins_LOC_USE := self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet CommonTools/Utils PhysicsTools/JetMCAlgos PhysicsTools/JetMCUtils PhysicsTools/HepMCCandAlgos SimDataFormats/JetMatching SimDataFormats/GeneratorProducts DataFormats/HepMCCandidate fastjet
PhysicsTools/JetMCAlgos_relbigobj+=PhysicsToolsJetMCAlgosPlugins
endif
ifeq ($(strip $(SimG4Core/Application)),)
SimG4CoreApplication := self/SimG4Core/Application
SimG4Core/Application := SimG4CoreApplication
SimG4CoreApplication_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreApplication_EX_USE := $(foreach d, self cmssw DataFormats/Common DataFormats/Math SimDataFormats/GeneratorProducts SimDataFormats/Forward SimDataFormats/Track SimDataFormats/Vertex SimG4Core/Generators SimG4Core/Geometry SimG4Core/MagneticField SimG4Core/Notification SimG4Core/Physics SimG4Core/SensitiveDetector SimG4Core/Watcher SimGeneral/HepPDTRecord SimGeneral/GFlash FWCore/ParameterSet FWCore/PluginManager FWCore/Framework FWCore/Utilities MagneticField/Engine MagneticField/Records clhep xerces-c geant4core hepmc heppdt rootrflx,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreApplication_EX_LIB   := SimG4CoreApplication
ALL_EXTERNAL_PRODS += SimG4CoreApplication
SimG4CoreApplication_CLASS := LIBRARY
SimG4Core/Application_relbigobj+=SimG4CoreApplication
endif
ifeq ($(strip $(JetMETCorrections/Type1MET)),)
JetMETCorrectionsType1MET := self/JetMETCorrections/Type1MET
JetMETCorrections/Type1MET := JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
JetMETCorrectionsType1MET_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/Utilities CondFormats/EgammaObjects DataFormats/Candidate DataFormats/JetReco DataFormats/ParticleFlowCandidate DataFormats/Math DataFormats/METReco DataFormats/MuonReco DataFormats/TauReco DataFormats/VertexReco JetMETCorrections/Objects root,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
JetMETCorrectionsType1MET_EX_LIB   := JetMETCorrectionsType1MET
ALL_EXTERNAL_PRODS += JetMETCorrectionsType1MET
JetMETCorrectionsType1MET_CLASS := LIBRARY
JetMETCorrections/Type1MET_relbigobj+=JetMETCorrectionsType1MET
endif
ifeq ($(strip $(GeneratorInterface/HiGenCommon)),)
GeneratorInterfaceHiGenCommon := self/GeneratorInterface/HiGenCommon
GeneratorInterface/HiGenCommon := GeneratorInterfaceHiGenCommon
GeneratorInterfaceHiGenCommon_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceHiGenCommon_EX_USE := $(foreach d, self cmssw GeneratorInterface/Core SimDataFormats/GeneratorProducts SimGeneral/HepPDTRecord FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
GeneratorInterfaceHiGenCommon_EX_LIB   := GeneratorInterfaceHiGenCommon
ALL_EXTERNAL_PRODS += GeneratorInterfaceHiGenCommon
GeneratorInterfaceHiGenCommon_CLASS := LIBRARY
GeneratorInterface/HiGenCommon_relbigobj+=GeneratorInterfaceHiGenCommon
endif
ifeq ($(strip $(SimGeneralMixingModulePlugins)),)
SimGeneralMixingModulePlugins := self/src/SimGeneral/MixingModule/plugins
SimGeneralMixingModulePlugins_LOC_USE := self cmssw DataFormats/Common DataFormats/Provenance FWCore/Framework FWCore/MessageLogger FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities FWCore/PluginManager Mixing/Base SimDataFormats/CaloHit SimDataFormats/CrossingFrame SimDataFormats/Track SimDataFormats/TrackingHit SimDataFormats/Vertex SimDataFormats/GeneratorProducts SimCalorimetry/HcalSimProducers SimGeneral/MixingModule clhep CondFormats/DataRecord CondFormats/RunInfo CondCore/DBOutputService
SimGeneral/MixingModule_relbigobj+=SimGeneralMixingModulePlugins
endif
ifeq ($(strip $(SimG4CMS/HcalTestBeam)),)
SimG4CMSHcalTestBeam := self/SimG4CMS/HcalTestBeam
SimG4CMS/HcalTestBeam := SimG4CMSHcalTestBeam
SimG4CMSHcalTestBeam_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CMSHcalTestBeam_EX_USE := $(foreach d, self cmssw SimG4Core/Notification SimG4Core/Watcher SimG4CMS/Calo Geometry/EcalCommonData Geometry/HcalCommonData DataFormats/HcalDetId DataFormats/Math SimDataFormats/HcalTestBeam FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/ServiceRegistry CommonTools/UtilAlgos geant4core boost root hepmc rootmath,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CMSHcalTestBeam_EX_LIB   := SimG4CMSHcalTestBeam
ALL_EXTERNAL_PRODS += SimG4CMSHcalTestBeam
SimG4CMSHcalTestBeam_CLASS := LIBRARY
SimG4CMS/HcalTestBeam_relbigobj+=SimG4CMSHcalTestBeam
endif
ifeq ($(strip $(SimG4CoreCustomPhysicsPlugins)),)
SimG4CoreCustomPhysicsPlugins := self/src/SimG4Core/CustomPhysics/plugins
SimG4CoreCustomPhysicsPlugins_LOC_USE := self cmssw SimG4Core/Watcher SimG4Core/Notification FWCore/ParameterSet FWCore/ServiceRegistry geant4core clhep boost SimG4Core/CustomPhysics
SimG4Core/CustomPhysics_relbigobj+=SimG4CoreCustomPhysicsPlugins
endif
ifeq ($(strip $(PhysicsTools/JetMCAlgos)),)
PhysicsToolsJetMCAlgos := self/PhysicsTools/JetMCAlgos
PhysicsTools/JetMCAlgos := PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsJetMCAlgos_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet PhysicsTools/JetMCUtils,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsJetMCAlgos_EX_LIB   := PhysicsToolsJetMCAlgos
ALL_EXTERNAL_PRODS += PhysicsToolsJetMCAlgos
PhysicsToolsJetMCAlgos_CLASS := LIBRARY
PhysicsTools/JetMCAlgos_relbigobj+=PhysicsToolsJetMCAlgos
endif
ifeq ($(strip $(IOMC/EventVertexGenerators)),)
IOMCEventVertexGenerators := self/IOMC/EventVertexGenerators
IOMC/EventVertexGenerators := IOMCEventVertexGenerators
IOMCEventVertexGenerators_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
IOMCEventVertexGenerators_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/PluginManager FWCore/ParameterSet FWCore/ServiceRegistry FWCore/Utilities SimDataFormats/GeneratorProducts boost clhep hepmc CondFormats/DataRecord CondFormats/BeamSpotObjects CondCore/DBOutputService,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += IOMCEventVertexGenerators
IOMCEventVertexGenerators_CLASS := LIBRARY
IOMC/EventVertexGenerators_relbigobj+=IOMCEventVertexGenerators
endif
ifeq ($(strip $(PhysicsTools/PatExamples)),)
PhysicsToolsPatExamples := self/PhysicsTools/PatExamples
PhysicsTools/PatExamples := PhysicsToolsPatExamples
PhysicsToolsPatExamples_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
PhysicsToolsPatExamples_EX_USE := $(foreach d, self cmssw DataFormats/Math DataFormats/Common DataFormats/JetReco DataFormats/MuonReco DataFormats/PatCandidates FWCore/Utilities FWCore/Framework FWCore/ParameterSet FWCore/ServiceRegistry PhysicsTools/PatUtils PhysicsTools/UtilAlgos PhysicsTools/Utilities clhep,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
PhysicsToolsPatExamples_EX_LIB   := PhysicsToolsPatExamples
ALL_EXTERNAL_PRODS += PhysicsToolsPatExamples
PhysicsToolsPatExamples_CLASS := LIBRARY
PhysicsTools/PatExamples_relbigobj+=PhysicsToolsPatExamples
endif
ifeq ($(strip $(SimGeneral/MixingModule)),)
SimGeneralMixingModule := self/SimGeneral/MixingModule
SimGeneral/MixingModule := SimGeneralMixingModule
SimGeneralMixingModule_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimGeneralMixingModule_EX_USE := $(foreach d, self cmssw FWCore/PluginManager FWCore/ParameterSet,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimGeneralMixingModule_EX_LIB   := SimGeneralMixingModule
ALL_EXTERNAL_PRODS += SimGeneralMixingModule
SimGeneralMixingModule_CLASS := LIBRARY
SimGeneral/MixingModule_relbigobj+=SimGeneralMixingModule
endif
ifeq ($(strip $(RecoMET/METProducers)),)
RecoMETMETProducers := self/RecoMET/METProducers
RecoMET/METProducers := RecoMETMETProducers
RecoMETMETProducers_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
RecoMETMETProducers_EX_USE := $(foreach d, self cmssw RecoMET/METAlgorithms DataFormats/METReco FWCore/Framework DataFormats/Common DataFormats/JetReco DataFormats/TrackReco CalibFormats/HcalObjects RecoLocalCalo/HcalRecAlgos Geometry/CSCGeometry,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += RecoMETMETProducers
RecoMETMETProducers_CLASS := LIBRARY
RecoMET/METProducers_relbigobj+=RecoMETMETProducers
endif
ifeq ($(strip $(SimCalorimetry/EcalTestBeam)),)
SimCalorimetryEcalTestBeam := self/SimCalorimetry/EcalTestBeam
SimCalorimetry/EcalTestBeam := SimCalorimetryEcalTestBeam
SimCalorimetryEcalTestBeam_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimCalorimetryEcalTestBeam_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimCalorimetry/EcalSimAlgos SimCalorimetry/EcalTestBeamAlgos SimGeneral/NoiseGenerators SimDataFormats/CrossingFrame SimDataFormats/EcalTestBeam CondFormats/DataRecord TBDataFormats/EcalTBObjects SimCalorimetry/EcalSimProducers,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += SimCalorimetryEcalTestBeam
SimCalorimetryEcalTestBeam_CLASS := LIBRARY
SimCalorimetry/EcalTestBeam_relbigobj+=SimCalorimetryEcalTestBeam
endif
ifeq ($(strip $(GeneratorInterfacePythia8Guns)),)
GeneratorInterfacePythia8Guns := self/src/GeneratorInterface/Pythia8Interface/plugins
GeneratorInterfacePythia8Guns_LOC_USE := self cmssw GeneratorInterface/Pythia8Interface GeneratorInterface/ExternalDecays
GeneratorInterface/Pythia8Interface_relbigobj+=GeneratorInterfacePythia8Guns
endif
ifeq ($(strip $(GeneratorInterfacePythia8Filters)),)
GeneratorInterfacePythia8Filters := self/src/GeneratorInterface/Pythia8Interface/plugins
GeneratorInterfacePythia8Filters_LOC_USE := self cmssw GeneratorInterface/Pythia8Interface GeneratorInterface/PartonShowerVeto GeneratorInterface/ExternalDecays
GeneratorInterface/Pythia8Interface_relbigobj+=GeneratorInterfacePythia8Filters
endif
ifeq ($(strip $(PhysicsToolsPatExamples_plugins)),)
PhysicsToolsPatExamples_plugins := self/src/PhysicsTools/PatExamples/plugins
PhysicsToolsPatExamples_plugins_LOC_USE := self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger FWCore/MessageService FWCore/ServiceRegistry FWCore/Utilities DataFormats/Common DataFormats/BeamSpot DataFormats/TrackReco DataFormats/VertexReco DataFormats/BTauReco DataFormats/PatCandidates HLTrigger/HLTcore PhysicsTools/PatExamples PhysicsTools/PatAlgos PhysicsTools/PatUtils PhysicsTools/CandUtils PhysicsTools/UtilAlgos root
PhysicsTools/PatExamples_relbigobj+=PhysicsToolsPatExamples_plugins
endif
ifeq ($(strip $(FWCore/Version)),)
FWCoreVersion := self/FWCore/Version
FWCore/Version := FWCoreVersion
FWCoreVersion_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FWCoreVersion_EX_USE := $(foreach d, self cmssw ,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FWCoreVersion_EX_LIB   := FWCoreVersion
ALL_EXTERNAL_PRODS += FWCoreVersion
FWCoreVersion_CLASS := LIBRARY
FWCore/Version_relbigobj+=FWCoreVersion
endif
ifeq ($(strip $(GeneratorInterface/SherpaInterface)),)
GeneratorInterfaceSherpaInterface := self/GeneratorInterface/SherpaInterface
GeneratorInterface/SherpaInterface := GeneratorInterfaceSherpaInterface
GeneratorInterfaceSherpaInterface_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
GeneratorInterfaceSherpaInterface_EX_USE := $(foreach d, self cmssw FWCore/Framework FWCore/ParameterSet FWCore/MessageLogger SimDataFormats/GeneratorProducts GeneratorInterface/Core GeneratorInterface/ExternalDecays GeneratorInterface/Pythia6Interface boost clhep sherpa FWCore/Services zlib,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
ALL_EXTERNAL_PRODS += GeneratorInterfaceSherpaInterface
GeneratorInterfaceSherpaInterface_CLASS := LIBRARY
GeneratorInterface/SherpaInterface_relbigobj+=GeneratorInterfaceSherpaInterface
endif
ifeq ($(strip $(SimG4Core/Generators)),)
SimG4CoreGenerators := self/SimG4Core/Generators
SimG4Core/Generators := SimG4CoreGenerators
SimG4CoreGenerators_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
SimG4CoreGenerators_EX_USE := $(foreach d, self cmssw FWCore/ParameterSet FWCore/MessageLogger SimDataFormats/GeneratorProducts boost geant4core rootmath expat,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
SimG4CoreGenerators_EX_LIB   := SimG4CoreGenerators
ALL_EXTERNAL_PRODS += SimG4CoreGenerators
SimG4CoreGenerators_CLASS := LIBRARY
SimG4Core/Generators_relbigobj+=SimG4CoreGenerators
endif
ifeq ($(strip $(FastSimulation/Event)),)
FastSimulationEvent := self/FastSimulation/Event
FastSimulation/Event := FastSimulationEvent
FastSimulationEvent_BuildFile    := $(RELEASETOP)/.SCRAM/$(SCRAM_ARCH)/MakeData/DirCache.mk
FastSimulationEvent_EX_USE := $(foreach d, self cmssw DataFormats/HepMCCandidate DataFormats/Candidate DataFormats/Math DataFormats/Provenance FWCore/ParameterSet FastSimulation/BaseParticlePropagator FastSimulation/Particle FastSimulation/Utilities SimDataFormats/Track SimDataFormats/Vertex SimDataFormats/GeneratorProducts FastSimDataFormats/NuclearInteractions SimGeneral/HepPDTRecord hepmc,$(if $($(d)_EX_FLAGS_NO_RECURSIVE_EXPORT),,$d))
FastSimulationEvent_EX_LIB   := FastSimulationEvent
ALL_EXTERNAL_PRODS += FastSimulationEvent
FastSimulationEvent_CLASS := LIBRARY
FastSimulation/Event_relbigobj+=FastSimulationEvent
endif
