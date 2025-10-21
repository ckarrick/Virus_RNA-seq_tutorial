#!/bin/bash

# This script normalizes data for the virus RNA-Seq tutorial

# For each sample
for sample_name in Phel_Treated_FHL Phel_Control_FHL; do
  # Run BBNorm
  ../programs/bbmap/bbnorm.sh \
    in=cleaned_${sample_name}_1.fastq \ # Forward reads input
    in2=cleaned_${sample_name}_2.fastq \ # Reverse reads input
    out=normalized_${sample_name}_1.fastq \ # Forward output
    out2=normalized_${sample_name}_2.fastq # Reverse output
done
