#!/bin/bash

# This script downloads all programs required for the virus RNA-Seq tutorial

# Download SRA-Toolkit
wget --output-document sratoolkit.tar.gz https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-alma_linux64.tar.gz

# Decompress SRA-Toolkit
tar -vxzf sratoolkit.tar.gz

# Download FastP
wget http://opengene.org/fastp/fastp

# Make FastP executable
chmod a+x ./fastp

# Install BBMap
wget https://sourceforge.net/projects/bbmap/files/BBMap_39.09.tar.gz

# Decompress BBMap
tar -xvf BBMap_39.09.tar.gz

# Install MVP with conda
module load anaconda3 # Load anaconda3 module
mamba create -n mvip -c conda-forge -c bioconda mvip

# Make the MVP scripts executable
chmod +x mvip/modules/*.py
