#!/bin/bash
cd $MRB_BUILDDIR                                                                                                                                      
mrbsetenv                                                                                                                                             
mrb i -j4  
mrbslp                                                                                                                                                

mrbsetenv
mrb t > out_mrb_test.txt

grep 'Failed' out_mrb_test.txt
grep 'Error' out_mrb_test.txt