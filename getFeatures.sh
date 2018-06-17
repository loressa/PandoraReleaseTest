#!/bin/bash
export feature=$1

cd $MRB_SOURCE 
mrb g uboonecode
mrb g dunetpc 
mrb g larpandora 
mrb g larpandoracontent 

cd $MRB_SOURCE/larpandora 
git checkout ${feature}
cd $MRB_SOURCE/larpandoracontent 
git checkout ${feature}
cd $MRB_SOURCE