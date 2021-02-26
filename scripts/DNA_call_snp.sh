#!/bin/bash
#SBATCH --job-name=call_snp      ## Name of the job.
#SBATCH -A ecoevo283         ## account to charge 
#SBATCH -p standard          ## partition/queue name
#SBATCH --cpus-per-task=2    ## number of cores the job needs, can the programs you run make used of multiple cores?

module load java/1.8.0
module load gatk/4.1.9.0

ref="ref/dmel-all-chromosome-r6.13.fasta"
/opt/apps/gatk/4.1.9.0/gatk GenotypeGVCFs -R $ref -V DNAseq/out/allsample.g.vcf.gz -stand-call-conf 5 -O DNAseq/out/result.vcf.gz
## end call SNPs
