#this seems more likely to work if you run each line separately in the command linerather than on SLURM

ml anaconda
ml mamba

mamba create -y -n metawrap-env python=2.7
mamba activate metawrap-env


#you may need to manually install metaWRAP and add it to your path
PATH=/scratch4/sprehei1/AliceTurnham/lib/metaWRAP/bin/:$PATH

mamba config --add channels defaults
mamba config --add channels conda-forge
mamb config --add channels bioconda
mamba config --add channels ursky


mamba install biopython
mamba install blas=2.5 
mamba install blast=2.6.0 
mamba install bmtagger 
mamba install Bowtie2
mamba install Bwa
mamba install checkm-genome
mamba install fastqc kraken=1.1
mamba install kraken=2.0
mamba install krona=2.7
mamba install Matplotlib
mamba install Maxbin2
mamba install Megahit
mamba install Metabat2
mamba install Pandas
mamba install concoct=1.0
mamba install Prokka
mamba install Quast
mamba install r-ggplot2
mamba install r-recommended
mamba install Salmon
mamba install samtools=1.
mamba install seaborn
mamba install Spades
mamba install trim-galore



mamba install libopenblas=*=*openmp*



