#!/bin/bash
export name=$1

mrbsetenv
mrbslp

#uboone
lar -c ci_test_reco2_uboonecode.fcl /usera/escudero/LAr/test/CI/prodgenie_bnb_nu_cosmic_uboone_reco1_Reference.root -o uboone_CI_test_${name}.root > uboone_CI_test_${name}.txt
lar -c eventdump.fcl uboone_CI_test_${name}.root > uboone_eventdump_${name}.txt

#dunefd
lar -c ci_test_reco_dunefd.fcl /usera/escudero/LAr/test/CI/prodgenie_nue_dune10kt_1x2x6_detsim_Reference.root -o dunefd_CI_test_${name}.root > dunefd_CI_test_${name}.txt
lar -c eventdump.fcl dunefd_CI_test_${name}.root > dunefd_eventdump_${name}.txt

#protoDUNE
lar -c ci_test_reco_protoDUNE.fcl /usera/escudero/LAr/test/CI/protoDune_pion_2GeV_mono_detsim_Reference.root -o protoDUNE_CI_test_${name}.root > protoDUNE_CI_test_${name}.txt
lar -c eventdump.fcl protoDUNE_CI_test_${name}.root > protoDUNE_eventdump_${name}.txt 
