#!/bin/bash
export version=$1
source /cvmfs/uboone.opensciencegrid.org/products/setup_uboone.sh 
source /cvmfs/dune.opensciencegrid.org/products/dune/setup_dune.sh 
setup larsoft ${version} -q e15:prof 
setup uboonecode ${version} -q e15:prof 
setup dunetpc ${version} -q e15:prof   