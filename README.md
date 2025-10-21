# Virus_RNA-seq_tutorial

This repo contains the materials for a tutorial for mining viral sequences from RNA-Seq data, posted on UC Berkeley's D-Lab Medium. The tutorial is compatible with Linux HPC systems with Anaconda, Git, Python, and SPAdes downloaded and available as modules.

programs/download_programs.sh  script to download programs required for the tutorial
data/download_data.sh          script to download raw RNA-Seq data from NCBI
data/run_fastp.sh              script to clean raw data with FastP
data/run_bbnorm.sh             script to normalize cleaned data with BBNorm within BBMap
data/MVP/mvp_metadata.txt      metadata file to map assemblies and normalized sequences in MVP
