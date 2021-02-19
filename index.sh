#!/bin/bash
#SBATCH --job-name=genome_index      ## Name of the job.
#SBATCH -A ecoevo283         ## account to charge ... good for the course ... later you need to set on up
#SBATCH -p standard          ## partition/queue name (there is a free queue if you want to save money we pay ~~$0.01/CPU/hour)
#SBATCH --cpus-per-task=1    ## number of cores the job needs, 1 unless your script explicitly uses more, or you need more memory than (1/NCORES) * memory in node
#SBATCH --error=slurm-%J.err ## error log file ... I tend to not use this

module load bwa/0.7.8
module load samtools/1.10
module load bcftools/1.10.2
module load python/3.8.0
module load gatk/4.1.9.0
module load picard-tools/1.87
module load java/1.8.0
module load hisat2/2.2.1

ref="/data/class/ecoevo283/swdu/ref/dmel-all-chromosome-r6.13.fasta"
bwa index $ref
samtools faidx  $ref
java -d64 -Xmx128g -jar /data/apps/picard-tools/1.87/CreateSequenceDictionary.jar R=$ref O=$ref/dmel-all-chromosome-r6.13.dict
# there are also options to include known SNPs and known transcripts  ... see http://daehwankimlab.github.io/hisat2/manual/  there are accessory scripts to extract this info from a VCF (for SNPs) and GTF (for exons)
hisat2-build $ref $ref