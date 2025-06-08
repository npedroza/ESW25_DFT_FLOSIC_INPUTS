#!/bin/bash --login
#
#SBATCH --time=00:25:00
#SBATCH --nodes=1                # number of different nodes - could be an exact number or a range of nodes (same as -N)
#SBATCH --ntasks=25               # number of tasks - how many tasks (nodes) that you require (same as -n)
#SBATCH --mem-per-cpu=2G            # memory required per allocated CPU (or core) - amount of memory (in bytes)
#SBATCH --job-name h2o  # you can give your job a name for easier identification (same as -J)

#  The executable used below is from a version that implements symmetrized FOD optimization (using trivial symmetry)

i=1
l=2
while [ $i -lt $l ]
do
echo $i
# cp start/FRMORB .
# cp start/RUNS .
    srun -n 25 /mnt/home/jacks1kaCMICH/PublicRelease_libxc/flosic/nrlmol_exe >&print 
 i=$[$i+1]
done
~/bin/cleanit
#
