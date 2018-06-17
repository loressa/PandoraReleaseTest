#!/bin/bash

if [[ $# -eq 0 ]] ; then
    echo 'You have to provide a larsoft version. Try again'
    return
fi
export home=`pwd`

# Arguments we need are: larsoft version, name of feature branches
# for example: source PandoraReleaseTest.sh v06_80_00 Pandora_v03_11_00
export version=$1
export feature=$2
export featureBranch="feature/${feature}"

# setup larsoft etc
source ${home}/setup.sh ${version}

# create new working environment
mkdir larsoft_${version}
cd larsoft_${version}
mrb newDev
source ./localProducts_larsoft_${version}_e15_prof/setup

# run over the CI files with clean environment
source ${home}/CItest.sh ${version}

# ATTN: if pandora is required, as external package, a tricker step is requiered:
#cd ${home}/larsoft_${version}
#source ${home}/PandoraExternal.sh ${feature}

# get feature branches of pandora packages
source ${home}/getFeatures.sh ${featureBranch}

# build 
source ${home}/buildAndTest.sh 

# run over the CI files with new environment                                                                                                         
source ${home}/CItest.sh ${feature}

# compare outputs
source ${home}/compareOutputs.sh ${version} ${feature}

# Open diff files and check:
# CI_test: no errors or problems, similar execution times
# eventdump: differences in output are as expected

# Last step: run reco over a handful of events with updated version
# check no errors, exceptions, etc