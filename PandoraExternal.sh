#!/bin/bash
if [[ $# -eq 0 ]] ; then 
    echo 'You have to provide a version. Try again' 
    return
fi

export tag=$1  
export home=`pwd`

git clone https://github.com/PandoraPFA/PandoraPFA Pandora/Linux64bit+2.6-2.12-e15-prof

cd Pandora
ln -s Linux64bit+2.6-2.12-e15-prof/include ./include
mkdir ups
cp $PANDORA_DIR/ups/pandora.table ./ups
cd Linux64bit+2.6-2.12-e15-prof/
git checkout ${tag}

mkdir build
cd build
cmake -DCMAKE_MODULE_PATH=$ROOTSYS/etc/cmake -DPANDORA_MONITORING=ON -DCMAKE_CXX_FLAGS=-std=c++14 ..
make -j4 install

cd ../../
unsetup pandora
ups declare "pandora" ${tag} -f "Linux64bit+2.6-2.12" -q "e15:prof" -r ${home}/Pandora/ -m ${home}/Pandora/ups/pandora.table
setup pandora ${tag} -q e15:prof
mrbslp
