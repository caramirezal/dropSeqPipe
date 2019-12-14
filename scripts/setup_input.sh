## Downloading testing data from https://www.ncbi.nlm.nih.gov/geo/query/acc.cgi?acc=GSE126074

## creating dirs
#mkdir data
#mkdir data/sra    
#mkdir data/fastq
#mkdir inst
#mkdir inst/sratoolkit

## downloading data
#wget --tries=5 https://sra-download.ncbi.nlm.nih.gov/traces/sra76/SRR/008328/SRR8528320
#mv SRR8528320 data/sra/

## setting third party instalations
## sratoolkit
#wget --tries=3 https://ftp-trace.ncbi.nlm.nih.gov/sra/sdk/current/sratoolkit.current-ubuntu64.tar.gz --directory-prefix inst/
#tar -xvzf inst/sratoolkit.current-ubuntu64.tar.gz -C inst/
#mv inst/sratoolkit.2.9.6-1-ubuntu64 inst/sratoolkit
## installing seqtk
#cd inst
#git clone https://github.com/lh3/seqtk.git;
#cd seqtk; make
#cd ..

## transforming srr files to fastq
#inst/sratoolkit/bin/fasterq-dump data/sra/SRR8528320 -O data/fastq

## sliding fastq files for testing
#mkdir data/fastq_slides/
#seqtk=inst/seqtk/seqtk
#./$seqtk sample -s33 data/fastq/SRR8528320_1.fastq 300 > data/fastq_slides/SRR8528320_1.fastq
#./$seqtk sample -s33 data/fastq/SRR8528320_2.fastq 300 > data/fastq_slides/SRR8528320_2.fastq



