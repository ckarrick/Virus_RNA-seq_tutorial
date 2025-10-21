#!/bin/bash

# This script runs FastP to perform quality control and adapter trimming of the raw RNA-Seq data for the virus RNA-Seq tutorial

# For each sample
for sample in *_1.fastq; do
  # Define the sample name from what comes before _1.fastq
  sample_name=$(basename $sample _1.fastq)
  # Run FastP
  ../programs/fastp -i ${sample_name}_1.fastq -I ${sample_name}_2.fastq -o cleaned_${sample_name}_1.fastq -O cleaned_${sample_name}_2.fastq
done
