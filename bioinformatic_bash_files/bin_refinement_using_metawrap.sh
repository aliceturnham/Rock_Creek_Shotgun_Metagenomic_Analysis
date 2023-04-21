#!/bin/sh
#SBATCH
#SBATCH --job-name=binrefinement
#SBATCH --time=48:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --partition=bigmem
#SBATCH -A sprehei1_bigmem
#SBATCH --mail-type=END
#SBATCH --mail-user=aturnha1@jhu.edu



export PATH=/scratch4/sprehei1/AliceTurnham/lib/metaWRAP/bin/:$PATH:
#source ~/.bashrc

date
echo "starting bin consolidation"

ml anaconda
conda activate metawrap-env
#which python


curl -L -O https://data.ace.uq.edu.au/public/CheckM_databases/checkm_data_2015_01_16.tar.gz
tar xzf checkm_data_2015_01_16.tar.gz 
checkm data setRoot .


#make sure mkdir bin_refinement
OUTDIR=../BIN_REFINEMENT
O
#mkdir -p $OUTDIR
IN=../BINNING

metawrap bin_refinement -o ${OUTDIR} -t 1 -A ${IN}/metabat2_bins/ -B ${IN}/maxbin2_bins/ -C $/${IN}/concoct_bins/ -c 70 -x 5

date
echo "end"

