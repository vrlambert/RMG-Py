#!/bin/sh
#BSUB -o RMG.out
#BSUB -J RMGPyMP
#BSUB -n 2
#BSUB -e error_log
#BSUB -q medium_priority

# This is a job submission file for a LSF queuing system to run
# the multiprocessing parallel version of RMG-Py across 2 CPUs (one machine) on
# a number of different compute nodes on a (potentially heterogeneous) cluster.

source ~/.bash_profile
python  $RMGpy/rmg.py -p input.py > RMG.stdout.log

