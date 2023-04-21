#!/bin/sh
#SBATCH
#SBATCH --job-name=binning
#SBATCH --time=8:00:00
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=24
#SBATCH --partition=bigmem
#SBATCH -A sprehei1_bigmem
#SBATCH --mail-type=END
#SBATCH --mail-user=aturnha1@jhu.edu




date
echo "starting binning"

ml anaconda
conda activate metawrap-env
#which python

ml perl


export PATH=/scratch4/sprehei1/AliceTurnham/lib/metaWRAP/bin/:$PATH
#source ~/.bashrc

OUTDIR=../BINNING

mkdir -p $OUTDIR

ASSEMBLY=../ASSEMBLY/final_assembly.fasta
IN=/scratch4/sprehei1/AliceTurnham/RockCreek-Shotgun-Metagenomics-Analysis-2-ATEdits/analysis/Trimmed_FASTQ/assembled/SW_28/



echo "starting metawrap"

#metawrap binning -o ${OUTDIR} -t 48 -a $ASSEMBLY --metabat2 --maxbin2 --concoct ${IN}/all_1.fastq ${IN}/all_2.fastq


#timed out, so just making concoct bins
metawrap binning -o ${OUTDIR} -t 24 -a $ASSEMBLY --concoct ${IN}/all_1.fastq ${IN}/all_2.fastq



echo "end"
date
