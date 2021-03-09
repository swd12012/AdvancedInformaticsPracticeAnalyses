#!/bin/bash
#SBATCH --job-name=ATAC      ## Name of the job.
#SBATCH -A ecoevo283         ## account to charge 
#SBATCH -p standard          ## partition/queue name
#SBATCH --array=1-24         ## number of tasks to launch, given hint below wc -l $file is helpful
#SBATCH --cpus-per-task=4    ## number of cores the job needs, can the programs you run make used of multiple cores?

module load samtools/1.10
module load bedtools2/2.29.2
module load ucsc-tools/v393 

file="ATAC_prefixes.txt"
# is the file indexed for bwa?
ref="ref/dmel-all-chromosome-r6.13.fasta"
# here is a hint if you had a tab delimited input file
prefix=`head -n $SLURM_ARRAY_TASK_ID  $file | tail -n 1`
samplename=`echo $prefix | sed -e "s/raw/bam/"`
idname=`echo $prefix | cut -d "/" -f 3`

#mybam=`$samplename.sort.bam`

# normalize across samples
# extract major automsomes, UCSC hosts the major automsome, but we align to the entire assembly
# including small repetitive fragments (this results in better parsing of repeats during alignment)
# this may not be necessary if reads don't map off the autosome
cat $ref.fai | head -n 7 | awk '{printf("%s\t0\t%s\n",$1,$2)}' > major.bed
samtools view -b -L major.bed $samplename.sort.bam > $samplename.maj
Nreads=`samtools view -c -F 4 $samplename.maj`
Scale=`echo "1.0/($Nreads/1000000)" | bc -l`
# have you loaded the modules needed to run the command below?? (genome coverage bed is part of bedtools)
samtools view -b $samplename.maj | genomeCoverageBed -bg -scale $Scale -ibam - > $samplename.coverage
# these are the so called "ucsc-tools/v393", useful for converting between various file types

bedSort $samplename.coverage $samplename.sort.coverage
bedGraphToBigWig $samplename.sort.coverage $ref.fai $samplename.bw
