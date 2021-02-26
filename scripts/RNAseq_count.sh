#!/bin/bash
#SBATCH --job-name=RNAseq_count      ## Name of the job.
#SBATCH -A ecoevo283         		 ## account to charge 
#SBATCH -p standard           		 ## partition/queue name
#SBATCH --cpus-per-task=4  		     ## number of cores the job needs, can the programs you run make used of multiple cores?

module load subread/2.0.1
gtf="ref/dmel-all-r6.13.gtf"
myfile=`cat shortRNAseq.names.txt | tr "\n" " "`
featureCounts -p -T 4 -t exon -g gene_id -Q 30 -F GTF -a $gtf -o RNAseq/out/fly_counts_2.txt $myfile