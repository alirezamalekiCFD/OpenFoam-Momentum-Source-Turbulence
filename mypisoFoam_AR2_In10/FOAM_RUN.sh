#!/bin/bash
 
#PBS -l walltime=0:59:00
#PBS -l nodes=1:ppn=1
#PBS -N pisotest
#PBS -M malekia@my.erau.edu
#PBS -m ae
#PBS -q normalq
#PBS -d /home2/golubd1b/malekia/OpenFoam/OpenFOAM-v2312/applications/solvers/incompressible/mypisoFoam_AR2_In10
           
#PBS -e pbs_errors.out
#PBS -o pbs_output.out
    
#module purge
#module load torque/4.2.10
#module load openmpi/gcc/64/1.10.3	
#module load openfoam/v1706
#module load gcc/6.3.0
#module load cmake/3.9.6
#module load openmpi/gcc/64/3.1.6






# The following is set so that the MXM portion of OpenMPI will not complain
# about a potential performance problem caused by the Vega default stack
# size being "unlimited".  This is only here to satisfy the warning.
ulimit -s 10240
#export MPI_BUFFER_SIZE=2000000000


#module load gcc/6.3.0
module load gcc-runtime/8.5.0-gcc-8.5.0-l34piye 

#module load cmake/3.9.6
module load cmake/3.27.9-gcc-8.5.0-5bfhfkk 


#module load openmpi/gcc/64/3.1.2
module load openmpi/5.0.2-gcc-8.5.0-diludms 


source  /apps/spack/share/spack/setup-env.sh
source  $(spack location -i lmod)/lmod/lmod/init/bash

#module load openfoam/v1912
source /home2/golubd1b/malekia/OpenFoam/OpenFOAM-v2312/etc/bashrc



cd /home2/golubd1b/malekia/OpenFoam/OpenFOAM-v2312/applications/solvers/incompressible/mypisoFoam_AR2_In10
#reconstructPar -latestTime



foamSystemCheck
#foam

wclean
wmake

mypisoFoam_AR2_In10 -help

#decomposePar -force
#reconstructPar -latestTime
#mpirun -np 216 pisoFoam -parallel > log
