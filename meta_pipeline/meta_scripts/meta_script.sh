#!/bin/tcsh
#PBS -N Meta_@TOKEN@
#PBS -l nodes=1:c18b:ppn=10
#PBS -l walltime=30:00:00
#PBS -j oe

#PBS_O_WORKDIR="~/privatemodules"
#cd ~/privatemodules
conda activate Metalign

echo @TOKEN@

cd /sciclone/scr10/chdorgeix/cat_data
mkdir @TOKEN@
mkdir /sciclone/scr10/chdorgeix/metalign_output_sens/test/@TOKEN@

metalign.py /sciclone/data10/chdorgeix/Christian/cat_leaf_files/@TOKEN@.fastq.gz /sciclone/data10/jrpuzey/Metalign/data/ --temp_dir @TOKEN@-temp --sensitive --length_normalize --output /sciclone/scr10/chdorgeix/leaf_output/@TOKEN@   >& OUT.@TOKEN@
