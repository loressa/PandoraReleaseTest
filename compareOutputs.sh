#!/bin/bash
export name1=$1
export name2=$2

#uboone
diff uboone_CI_test_${name1}.txt uboone_CI_test_${name2}.txt >> diff_uboone_CI.txt
diff uboone_eventdump_${name1}.txt uboone_eventdump_${name2}.txt >> diff_uboone_eventdump.txt

#dunefd
diff dunefd_CI_test_${name1}.txt dunefd_CI_test_${name2}.txt >> diff_dunefd_CI.txt
diff dunefd_eventdump_${name1}.txt dunefd_eventdump_${name2}.txt >> diff_dunefd_eventdump.txt

#protoDUNE
diff protoDUNE_CI_test_${name1}.txt protoDUNE_CI_test_${name2}.txt >> diff_protoDUNE_CI.txt
diff protoDUNE_eventdump_${name1}.txt protoDUNE_eventdump_${name2}.txt >> diff_protoDUNE_eventdump.txt
