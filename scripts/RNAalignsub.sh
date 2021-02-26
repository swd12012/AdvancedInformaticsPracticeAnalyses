#!/bin/bash
#SBATCH --job-name=RNAseqalign      ## Name of the job.
#SBATCH -A ecoevo283         ## account to charge 
#SBATCH -p standard          ## partition/queue name
#SBATCH --array=1-20         ## number of tasks to launch, given hint below wc -l $file is helpful
#SBATCH --cpus-per-task=2    ## number of cores the job needs, can the programs you run make used of multiple cores?

module load samtools/1.10
module load hisat2/2.2.1

#Code for generating shortened RNAseq subset and prefixes
#R
#mytab = read.table("/data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384_SampleCoding.txt",header=TRUE)
# drop some columns
#mytab2 = mytab[,c(1,9:12)]
# select a subset of samples
#mytab3 = mytab2[c(1:10,93:102),]
#mytab4 = mytab2[c(1:10,93:102),]
#if (file.exists("shortRNAseq.names.txt")) {file.remove("shortRNAseq.names.txt")}
#for(i in 1:nrow(mytab3)){
#    cat("RNAseq/bam/",mytab3$SampleNumber[i],".bam\n",file="shortRNAseq.names.txt",append=TRUE,sep='')
#    }
#for(i in 1:nrow(mytab4)){
#    cat("RNAseq/raw/",mytab4$SampleNumber[i],"\n",file="shortRNAseq.prefixes.txt",append=TRUE,sep='')
#    }
#write.table(mytab3,"shortRNAseq.txt")
#write.table(mytab3[,1],"shortRNAseq.prefix.txt",row.names=FALSE, quote=FALSE,col.names=FALSE)
#write.table(mytab4[,1],"shortRNAseq.prefixes.txt",row.names=FALSE, quote=FALSE,col.names=FALSE)


ref="ref/dmel-all-chromosome-r6.13.fasta"

file="shortRNAseq.prefixes.txt"

prefix=`head -n $SLURM_ARRAY_TASK_ID  $file | tail -n 1`
samplename=`echo $prefix | sed -e "s/raw/bam/"`

hisat2 -p 2 -x $ref -1 ${prefix}_R1.fq.gz -2 ${prefix}_R2.fq.gz -S ${samplename}.sam
#samtools view -bS ${samplename}.sam > ${samplename}.bam
#samtools sort ${samplename}.bam -o ${samplename}.sorted.bam
#samtools index ${samplename}.sorted.bam






