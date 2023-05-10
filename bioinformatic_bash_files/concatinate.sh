#!/bin/bash

#SBATCH

#SBATCH --job-name=concat_trimmed_files
#SBATCH --time=5:00:00
#SBATCH --nodes=1
#SBATCH --mail-type=END
#SBATCH --mail-user=aturnha1@jhu.edu


SEPARATED=/scratch4/sprehei1/AliceTurnham/RockCreek-Shotgun-Metagenomics-Analysis-2-ATEdits/analysis/Trimmed_FASTQ/assembled/SW_28/separated_trimmedfiles
MERGED=/scratch4/sprehei1/AliceTurnham/RockCreek-Shotgun-Metagenomics-Analysis-2-ATEdits/analysis/Trimmed_FASTQ/assembled/SW_28/



#Concatinate all R1 trimmed reads
cat $SEPARATED/*1.fastq > $MERGED/all_rawreads_1.fastq

#concatinate all R2 trimmed reads
cat $SEPARATED/*2.fastq > $MERGED/all_rawreads_2.fastq
