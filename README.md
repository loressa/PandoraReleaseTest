# PandoraReleaseTest

In experimental phase for the moment. To take into account:
   - Independent bash scripts are run by the "master" script PandoraReleaseTest.sh, so individual steps can be run separately in case of errors 
   - Example: source PandoraReleaseTest.sh v06_80_00 Pandora_v03_11_00
   - You may need to change qualifiers (only e5:prof now) or architecture (CentOS6 now) - will add them as options in the future. 
   - Working with feature branches already available in redmine only - will expand in the future. 
   - You may want to kinit yourself for certain packages :) 
   - Only for uboone, dunefd and protodune for the moment
   - If an update of Pandora (treated as external package by LArSoft) is necessary, run PandoraExternal.sh by hand: needs to be modified as versions in Pandora use "-" instead of "_" 
