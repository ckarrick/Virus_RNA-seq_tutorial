# For each sample's accession number
for sra in SRR1708168 SRR1708296; do
  # Download the SRA file
  ../programs/sratoolkit.3.2.1-alma_linux64/bin/prefetch $sra
  # Convert the SRA file to a fastq file
  ../programs/sratoolkit.3.2.1-alma_linux64/bin/fasterq-dump $sra
done
