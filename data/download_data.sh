#!/bin/bash

# This script downloads raw RNA-Seq data for the virus RNA-Seq tutorial

# For each sample's accession number
for sra in SRR30671252 SRR30671260; do
  # Download the SRA file
  ../programs/sratoolkit.3.2.1-alma_linux64/bin/prefetch $sra
  # Convert the SRA file to a FASTQ file
  ../programs/sratoolkit.3.2.1-alma_linux64/bin/fasterq-dump $sra
done
