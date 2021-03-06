### Advanced Informatics Winter 2021

#### Week 6 Lab Exercise

For week 6, we made symlinks from the class data to our directories.

I copied over the following experiments:
* ATACseq
* DNAseq
* RNAseq

The scripts for performing this renaming and moving are located in the Python file that is uploaded to this repository.

I ran fastqc on one sample by inputting `fastqc ADL06_1_1.fq.gz`.
This data file passed most metrics, but there were some overrepresented sequences, and the phred score began to fall off around 40bp in.

This is the sample output when I type in `tree` in my home directory for the class:

```{bash}

.
├── ATACseq
│   └── raw
│       ├── P004_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATGCATG-CTCCTTAC_4R009_L1_P004_R1.fq.gz
│       ├── P004_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATGCATG-CTCCTTAC_4R009_L1_P004_R2.fq.gz
│       ├── P005_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TCGCCAA-CTCCTTAC_4R009_L1_P005_R1.fq.gz
│       ├── P005_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TCGCCAA-CTCCTTAC_4R009_L1_P005_R2.fq.gz
│       ├── P006_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATAGCTG-CTCCTTAC_4R009_L1_P006_R1.fq.gz
│       ├── P006_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATAGCTG-CTCCTTAC_4R009_L1_P006_R2.fq.gz
│       ├── P013_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATGCATG-TATGCAGT_4R009_L1_P013_R1.fq.gz
│       ├── P013_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATGCATG-TATGCAGT_4R009_L1_P013_R2.fq.gz
│       ├── P014_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TCGCCAA-TATGCAGT_4R009_L1_P014_R1.fq.gz
│       ├── P014_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TCGCCAA-TATGCAGT_4R009_L1_P014_R2.fq.gz
│       ├── P015_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATAGCTG-TATGCAGT_4R009_L1_P015_R1.fq.gz
│       ├── P015_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ATAGCTG-TATGCAGT_4R009_L1_P015_R2.fq.gz
│       ├── P019_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_AGAGTGC-CTCCTTAC_4R009_L1_P019_R1.fq.gz
│       ├── P019_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_AGAGTGC-CTCCTTAC_4R009_L1_P019_R2.fq.gz
│       ├── P020_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CGTTCTT-CTCCTTAC_4R009_L1_P020_R1.fq.gz
│       ├── P020_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CGTTCTT-CTCCTTAC_4R009_L1_P020_R2.fq.gz
│       ├── P021_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TTCGACG-CTCCTTAC_4R009_L1_P021_R1.fq.gz
│       ├── P021_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TTCGACG-CTCCTTAC_4R009_L1_P021_R2.fq.gz
│       ├── P028_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_AGAGTGC-TATGCAGT_4R009_L1_P028_R1.fq.gz
│       ├── P028_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_AGAGTGC-TATGCAGT_4R009_L1_P028_R2.fq.gz
│       ├── P029_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CGTTCTT-TATGCAGT_4R009_L1_P029_R1.fq.gz
│       ├── P029_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CGTTCTT-TATGCAGT_4R009_L1_P029_R2.fq.gz
│       ├── P030_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TTCGACG-TATGCAGT_4R009_L1_P030_R1.fq.gz
│       ├── P030_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_TTCGACG-TATGCAGT_4R009_L1_P030_R2.fq.gz
│       ├── P034_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GTATCTC-CTCCTTAC_4R009_L1_P034_R1.fq.gz
│       ├── P034_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GTATCTC-CTCCTTAC_4R009_L1_P034_R2.fq.gz
│       ├── P035_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACGTTC-CTCCTTAC_4R009_L1_P035_R1.fq.gz
│       ├── P035_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACGTTC-CTCCTTAC_4R009_L1_P035_R2.fq.gz
│       ├── P036_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CCTAGAT-CTCCTTAC_4R009_L1_P036_R1.fq.gz
│       ├── P036_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CCTAGAT-CTCCTTAC_4R009_L1_P036_R2.fq.gz
│       ├── P043_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GTATCTC-TATGCAGT_4R009_L1_P043_R1.fq.gz
│       ├── P043_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GTATCTC-TATGCAGT_4R009_L1_P043_R2.fq.gz
│       ├── P044_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACGTTC-TATGCAGT_4R009_L1_P044_R1.fq.gz
│       ├── P044_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACGTTC-TATGCAGT_4R009_L1_P044_R2.fq.gz
│       ├── P045_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CCTAGAT-TATGCAGT_4R009_L1_P045_R1.fq.gz
│       ├── P045_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CCTAGAT-TATGCAGT_4R009_L1_P045_R2.fq.gz
│       ├── P049_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACTTGA-CTCCTTAC_4R009_L1_P049_R1.fq.gz
│       ├── P049_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACTTGA-CTCCTTAC_4R009_L1_P049_R2.fq.gz
│       ├── P050_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ACCAGCA-CTCCTTAC_4R009_L1_P050_R1.fq.gz
│       ├── P050_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ACCAGCA-CTCCTTAC_4R009_L1_P050_R2.fq.gz
│       ├── P051_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GGAATGT-CTCCTTAC_4R009_L1_P051_R1.fq.gz
│       ├── P051_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GGAATGT-CTCCTTAC_4R009_L1_P051_R2.fq.gz
│       ├── P058_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACTTGA-TATGCAGT_4R009_L1_P058_R1.fq.gz
│       ├── P058_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_CACTTGA-TATGCAGT_4R009_L1_P058_R2.fq.gz
│       ├── P059_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ACCAGCA-TATGCAGT_4R009_L1_P059_R1.fq.gz
│       ├── P059_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_ACCAGCA-TATGCAGT_4R009_L1_P059_R2.fq.gz
│       ├── P060_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GGAATGT-TATGCAGT_4R009_L1_P060_R1.fq.gz
│       └── P060_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/ATACseq/Sample_GGAATGT-TATGCAGT_4R009_L1_P060_R2.fq.gz
├── directoryOrganization.py
├── DNAseq
│   └── raw
│       ├── ADL06_1_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL06_1_1.fq.gz
│       ├── ADL06_1_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL06_1_2.fq.gz
│       ├── ADL06_2_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL06_2_1.fq.gz
│       ├── ADL06_2_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL06_2_2.fq.gz
│       ├── ADL06_3_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL06_3_1.fq.gz
│       ├── ADL06_3_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL06_3_2.fq.gz
│       ├── ADL09_1_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL09_1_1.fq.gz
│       ├── ADL09_1_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL09_1_2.fq.gz
│       ├── ADL09_2_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL09_2_1.fq.gz
│       ├── ADL09_2_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL09_2_2.fq.gz
│       ├── ADL09_3_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL09_3_1.fq.gz
│       ├── ADL09_3_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL09_3_2.fq.gz
│       ├── ADL10_1_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL10_1_1.fq.gz
│       ├── ADL10_1_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL10_1_2.fq.gz
│       ├── ADL10_2_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL10_2_1.fq.gz
│       ├── ADL10_2_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL10_2_2.fq.gz
│       ├── ADL10_3_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL10_3_1.fq.gz
│       ├── ADL10_3_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL10_3_2.fq.gz
│       ├── ADL14_1_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL14_1_1.fq.gz
│       ├── ADL14_1_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL14_1_2.fq.gz
│       ├── ADL14_2_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL14_2_1.fq.gz
│       ├── ADL14_2_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL14_2_2.fq.gz
│       ├── ADL14_3_1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL14_3_1.fq.gz
│       └── ADL14_3_2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/DNAseq/ADL14_3_2.fq.gz
├── README.md
├── ref
│   ├── dmel-all-chromosome-r6.13.fasta
│   └── dmel-all-r6.13.gtf
├── RNAseq
│   └── raw
│       ├── 100_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_100/100_CGTTCTT_L003_R1_001.fastq.gz
│       ├── 100_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_100/100_CGTTCTT_L003_R2_001.fastq.gz
│       ├── 101_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_101/101_TTCGACG_L003_R1_001.fastq.gz
│       ├── 101_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_101/101_TTCGACG_L003_R2_001.fastq.gz
│       ├── 102_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_102/102_ACCAGCA_L003_R1_001.fastq.gz
│       ├── 102_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_102/102_ACCAGCA_L003_R2_001.fastq.gz
│       ├── 103_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_103/103_GGAATGT_L003_R1_001.fastq.gz
│       ├── 103_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_103/103_GGAATGT_L003_R2_001.fastq.gz
│       ├── 104_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_104/104_CGATGGA_L003_R1_001.fastq.gz
│       ├── 104_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_104/104_CGATGGA_L003_R2_001.fastq.gz
│       ├── 105_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_105/105_AATCGAC_L003_R1_001.fastq.gz
│       ├── 105_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_105/105_AATCGAC_L003_R2_001.fastq.gz
│       ├── 106_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_106/106_GATGACT_L003_R1_001.fastq.gz
│       ├── 106_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_106/106_GATGACT_L003_R2_001.fastq.gz
│       ├── 107_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_107/107_ATGCATG_L003_R1_001.fastq.gz
│       ├── 107_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_107/107_ATGCATG_L003_R2_001.fastq.gz
│       ├── 108_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_108/108_TCGCCAA_L003_R1_001.fastq.gz
│       ├── 108_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_108/108_TCGCCAA_L003_R2_001.fastq.gz
│       ├── 109_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_109/109_GAATAGG_L003_R1_001.fastq.gz
│       ├── 109_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_109/109_GAATAGG_L003_R2_001.fastq.gz
│       ├── 10_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_10/10_GGAATGT_L001_R1_001.fastq.gz
│       ├── 10_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_10/10_GGAATGT_L001_R2_001.fastq.gz
│       ├── 110_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_110/110_GGCATAC_L003_R1_001.fastq.gz
│       ├── 110_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_110/110_GGCATAC_L003_R2_001.fastq.gz
│       ├── 111_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_111/111_TTGTCCA_L003_R1_001.fastq.gz
│       ├── 111_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_111/111_TTGTCCA_L003_R2_001.fastq.gz
│       ├── 112_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_112/112_AGTCGCA_L003_R1_001.fastq.gz
│       ├── 112_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_112/112_AGTCGCA_L003_R2_001.fastq.gz
│       ├── 113_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_113/113_TCGCAGT_L003_R1_001.fastq.gz
│       ├── 113_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_113/113_TCGCAGT_L003_R2_001.fastq.gz
│       ├── 114_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_114/114_CACGTTC_L003_R1_001.fastq.gz
│       ├── 114_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_114/114_CACGTTC_L003_R2_001.fastq.gz
│       ├── 115_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_115/115_CCTAGAT_L003_R1_001.fastq.gz
│       ├── 115_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_115/115_CCTAGAT_L003_R2_001.fastq.gz
│       ├── 116_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_116/116_ATAGCTG_L003_R1_001.fastq.gz
│       ├── 116_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_116/116_ATAGCTG_L003_R2_001.fastq.gz
│       ├── 117_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_117/117_GCTGTCA_L003_R1_001.fastq.gz
│       ├── 117_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_117/117_GCTGTCA_L003_R2_001.fastq.gz
│       ├── 118_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_118/118_ACGTGAG_L003_R1_001.fastq.gz
│       ├── 118_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_118/118_ACGTGAG_L003_R2_001.fastq.gz
│       ├── 119_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_119/119_CAATCTG_L003_R1_001.fastq.gz
│       ├── 119_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_119/119_CAATCTG_L003_R2_001.fastq.gz
│       ├── 11_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_11/11_CGATGGA_L001_R1_001.fastq.gz
│       ├── 11_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_11/11_CGATGGA_L001_R2_001.fastq.gz
│       ├── 120_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_120/120_ATTAGGC_L003_R1_001.fastq.gz
│       ├── 120_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_120/120_ATTAGGC_L003_R2_001.fastq.gz
│       ├── 121_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_121/121_GAACCGT_L003_R1_001.fastq.gz
│       ├── 121_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_121/121_GAACCGT_L003_R2_001.fastq.gz
│       ├── 122_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_122/122_TTGGTAC_L003_R1_001.fastq.gz
│       ├── 122_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_122/122_TTGGTAC_L003_R2_001.fastq.gz
│       ├── 123_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_123/123_CGCCATT_L003_R1_001.fastq.gz
│       ├── 123_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_123/123_CGCCATT_L003_R2_001.fastq.gz
│       ├── 124_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_124/124_TGCAACA_L003_R1_001.fastq.gz
│       ├── 124_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_124/124_TGCAACA_L003_R2_001.fastq.gz
│       ├── 125_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_125/125_GACTCTA_L003_R1_001.fastq.gz
│       ├── 125_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_125/125_GACTCTA_L003_R2_001.fastq.gz
│       ├── 126_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_126/126_CTCTACT_L003_R1_001.fastq.gz
│       ├── 126_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_126/126_CTCTACT_L003_R2_001.fastq.gz
│       ├── 127_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_127/127_CATCTTG_L003_R1_001.fastq.gz
│       ├── 127_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_127/127_CATCTTG_L003_R2_001.fastq.gz
│       ├── 128_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_128/128_CGAGTAG_L003_R1_001.fastq.gz
│       ├── 128_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_128/128_CGAGTAG_L003_R2_001.fastq.gz
│       ├── 129_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_129/129_ATGCGCT_L003_R1_001.fastq.gz
│       ├── 129_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_129/129_ATGCGCT_L003_R2_001.fastq.gz
│       ├── 12_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_12/12_AATCGAC_L001_R1_001.fastq.gz
│       ├── 12_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_12/12_AATCGAC_L001_R2_001.fastq.gz
│       ├── 130_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_130/130_TGGAGAC_L003_R1_001.fastq.gz
│       ├── 130_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_130/130_TGGAGAC_L003_R2_001.fastq.gz
│       ├── 131_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_131/131_TGTCCGA_L003_R1_001.fastq.gz
│       ├── 131_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_131/131_TGTCCGA_L003_R2_001.fastq.gz
│       ├── 132_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_132/132_AACTCCT_L003_R1_001.fastq.gz
│       ├── 132_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_132/132_AACTCCT_L003_R2_001.fastq.gz
│       ├── 133_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_133/133_GTAACGA_L003_R1_001.fastq.gz
│       ├── 133_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_133/133_GTAACGA_L003_R2_001.fastq.gz
│       ├── 134_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_134/134_GTACGAC_L003_R1_001.fastq.gz
│       ├── 134_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_134/134_GTACGAC_L003_R2_001.fastq.gz
│       ├── 135_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_135/135_CCTAAGG_L003_R1_001.fastq.gz
│       ├── 135_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_135/135_CCTAAGG_L003_R2_001.fastq.gz
│       ├── 136_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_136/136_TCCGTTG_L003_R1_001.fastq.gz
│       ├── 136_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_136/136_TCCGTTG_L003_R2_001.fastq.gz
│       ├── 137_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_137/137_GGTGGTT_L003_R1_001.fastq.gz
│       ├── 137_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_137/137_GGTGGTT_L003_R2_001.fastq.gz
│       ├── 138_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_138/138_AAGTAGC_L003_R1_001.fastq.gz
│       ├── 138_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_138/138_AAGTAGC_L003_R2_001.fastq.gz
│       ├── 139_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_139/139_TCAGACA_L003_R1_001.fastq.gz
│       ├── 139_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_139/139_TCAGACA_L003_R2_001.fastq.gz
│       ├── 13_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_13/13_GATGACT_L001_R1_001.fastq.gz
│       ├── 13_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_13/13_GATGACT_L001_R2_001.fastq.gz
│       ├── 140_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_140/140_ACGATAC_L003_R1_001.fastq.gz
│       ├── 140_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_140/140_ACGATAC_L003_R2_001.fastq.gz
│       ├── 141_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_141/141_CACTTGA_L004_R1_001.fastq.gz
│       ├── 141_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_141/141_CACTTGA_L004_R2_001.fastq.gz
│       ├── 142_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_142/142_CCGGAAT_L004_R1_001.fastq.gz
│       ├── 142_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_142/142_CCGGAAT_L004_R2_001.fastq.gz
│       ├── 143_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_143/143_TAGACCG_L004_R1_001.fastq.gz
│       ├── 143_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_143/143_TAGACCG_L004_R2_001.fastq.gz
│       ├── 144_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_144/144_GTATCTC_L004_R1_001.fastq.gz
│       ├── 144_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_144/144_GTATCTC_L004_R2_001.fastq.gz
│       ├── 145_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_145/145_TTCCGTC_L004_R1_001.fastq.gz
│       ├── 145_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_145/145_TTCCGTC_L004_R2_001.fastq.gz
│       ├── 146_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_146/146_AGAGTGC_L004_R1_001.fastq.gz
│       ├── 146_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_146/146_AGAGTGC_L004_R2_001.fastq.gz
│       ├── 147_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_147/147_CGTTCTT_L004_R1_001.fastq.gz
│       ├── 147_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_147/147_CGTTCTT_L004_R2_001.fastq.gz
│       ├── 148_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_148/148_TTCGACG_L004_R1_001.fastq.gz
│       ├── 148_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_148/148_TTCGACG_L004_R2_001.fastq.gz
│       ├── 149_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_149/149_ACCAGCA_L004_R1_001.fastq.gz
│       ├── 149_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_149/149_ACCAGCA_L004_R2_001.fastq.gz
│       ├── 14_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_14/14_ATGCATG_L001_R1_001.fastq.gz
│       ├── 14_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_14/14_ATGCATG_L001_R2_001.fastq.gz
│       ├── 150_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_150/150_GGAATGT_L004_R1_001.fastq.gz
│       ├── 150_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_150/150_GGAATGT_L004_R2_001.fastq.gz
│       ├── 151_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_151/151_CGATGGA_L004_R1_001.fastq.gz
│       ├── 151_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_151/151_CGATGGA_L004_R2_001.fastq.gz
│       ├── 152_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_152/152_AATCGAC_L004_R1_001.fastq.gz
│       ├── 152_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_152/152_AATCGAC_L004_R2_001.fastq.gz
│       ├── 153_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_153/153_GATGACT_L004_R1_001.fastq.gz
│       ├── 153_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_153/153_GATGACT_L004_R2_001.fastq.gz
│       ├── 154_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_154/154_ATGCATG_L004_R1_001.fastq.gz
│       ├── 154_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_154/154_ATGCATG_L004_R2_001.fastq.gz
│       ├── 155_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_155/155_TCGCCAA_L004_R1_001.fastq.gz
│       ├── 155_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_155/155_TCGCCAA_L004_R2_001.fastq.gz
│       ├── 156_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_156/156_GAATAGG_L004_R1_001.fastq.gz
│       ├── 156_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_156/156_GAATAGG_L004_R2_001.fastq.gz
│       ├── 157_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_157/157_GGCATAC_L004_R1_001.fastq.gz
│       ├── 157_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_157/157_GGCATAC_L004_R2_001.fastq.gz
│       ├── 158_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_158/158_TTGTCCA_L004_R1_001.fastq.gz
│       ├── 158_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_158/158_TTGTCCA_L004_R2_001.fastq.gz
│       ├── 159_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_159/159_AGTCGCA_L004_R1_001.fastq.gz
│       ├── 159_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_159/159_AGTCGCA_L004_R2_001.fastq.gz
│       ├── 15_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_15/15_TCGCCAA_L001_R1_001.fastq.gz
│       ├── 15_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_15/15_TCGCCAA_L001_R2_001.fastq.gz
│       ├── 160_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_160/160_TCGCAGT_L004_R1_001.fastq.gz
│       ├── 160_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_160/160_TCGCAGT_L004_R2_001.fastq.gz
│       ├── 161_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_161/161_CACGTTC_L004_R1_001.fastq.gz
│       ├── 161_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_161/161_CACGTTC_L004_R2_001.fastq.gz
│       ├── 162_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_162/162_CCTAGAT_L004_R1_001.fastq.gz
│       ├── 162_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_162/162_CCTAGAT_L004_R2_001.fastq.gz
│       ├── 163_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_163/163_ATAGCTG_L004_R1_001.fastq.gz
│       ├── 163_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_163/163_ATAGCTG_L004_R2_001.fastq.gz
│       ├── 164_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_164/164_GCTGTCA_L004_R1_001.fastq.gz
│       ├── 164_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_164/164_GCTGTCA_L004_R2_001.fastq.gz
│       ├── 165_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_165/165_ACGTGAG_L004_R1_001.fastq.gz
│       ├── 165_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_165/165_ACGTGAG_L004_R2_001.fastq.gz
│       ├── 166_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_166/166_CAATCTG_L004_R1_001.fastq.gz
│       ├── 166_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_166/166_CAATCTG_L004_R2_001.fastq.gz
│       ├── 167_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_167/167_ATTAGGC_L004_R1_001.fastq.gz
│       ├── 167_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_167/167_ATTAGGC_L004_R2_001.fastq.gz
│       ├── 168_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_168/168_GAACCGT_L004_R1_001.fastq.gz
│       ├── 168_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_168/168_GAACCGT_L004_R2_001.fastq.gz
│       ├── 169_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_169/169_TTGGTAC_L004_R1_001.fastq.gz
│       ├── 169_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_169/169_TTGGTAC_L004_R2_001.fastq.gz
│       ├── 16_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_16/16_GAATAGG_L001_R1_001.fastq.gz
│       ├── 16_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_16/16_GAATAGG_L001_R2_001.fastq.gz
│       ├── 170_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_170/170_CGCCATT_L004_R1_001.fastq.gz
│       ├── 170_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_170/170_CGCCATT_L004_R2_001.fastq.gz
│       ├── 171_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_171/171_TGCAACA_L004_R1_001.fastq.gz
│       ├── 171_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_171/171_TGCAACA_L004_R2_001.fastq.gz
│       ├── 172_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_172/172_GACTCTA_L004_R1_001.fastq.gz
│       ├── 172_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_172/172_GACTCTA_L004_R2_001.fastq.gz
│       ├── 173_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_173/173_CTCTACT_L004_R1_001.fastq.gz
│       ├── 173_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_173/173_CTCTACT_L004_R2_001.fastq.gz
│       ├── 174_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_174/174_CATCTTG_L004_R1_001.fastq.gz
│       ├── 174_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_174/174_CATCTTG_L004_R2_001.fastq.gz
│       ├── 175_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_175/175_CGAGTAG_L004_R1_001.fastq.gz
│       ├── 175_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_175/175_CGAGTAG_L004_R2_001.fastq.gz
│       ├── 176_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_176/176_ATGCGCT_L004_R1_001.fastq.gz
│       ├── 176_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_176/176_ATGCGCT_L004_R2_001.fastq.gz
│       ├── 177_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_177/177_TGGAGAC_L004_R1_001.fastq.gz
│       ├── 177_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_177/177_TGGAGAC_L004_R2_001.fastq.gz
│       ├── 178_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_178/178_TGTCCGA_L004_R1_001.fastq.gz
│       ├── 178_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_178/178_TGTCCGA_L004_R2_001.fastq.gz
│       ├── 179_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_179/179_AACTCCT_L004_R1_001.fastq.gz
│       ├── 179_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_179/179_AACTCCT_L004_R2_001.fastq.gz
│       ├── 17_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_17/17_GGCATAC_L001_R1_001.fastq.gz
│       ├── 17_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_17/17_GGCATAC_L001_R2_001.fastq.gz
│       ├── 180_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_180/180_GTAACGA_L004_R1_001.fastq.gz
│       ├── 180_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_180/180_GTAACGA_L004_R2_001.fastq.gz
│       ├── 181_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_181/181_GTACGAC_L004_R1_001.fastq.gz
│       ├── 181_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_181/181_GTACGAC_L004_R2_001.fastq.gz
│       ├── 182_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_182/182_CCTAAGG_L004_R1_001.fastq.gz
│       ├── 182_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_182/182_CCTAAGG_L004_R2_001.fastq.gz
│       ├── 183_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_183/183_TCCGTTG_L004_R1_001.fastq.gz
│       ├── 183_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_183/183_TCCGTTG_L004_R2_001.fastq.gz
│       ├── 184_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_184/184_GGTGGTT_L004_R1_001.fastq.gz
│       ├── 184_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_184/184_GGTGGTT_L004_R2_001.fastq.gz
│       ├── 185_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_185/185_AAGTAGC_L004_R1_001.fastq.gz
│       ├── 185_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_185/185_AAGTAGC_L004_R2_001.fastq.gz
│       ├── 186_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_186/186_TCAGACA_L004_R1_001.fastq.gz
│       ├── 186_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_186/186_TCAGACA_L004_R2_001.fastq.gz
│       ├── 187_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_187/187_ACGATAC_L004_R1_001.fastq.gz
│       ├── 187_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex4/Sample_187/187_ACGATAC_L004_R2_001.fastq.gz
│       ├── 188_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_188/188_CACTTGA_L005_R1_001.fastq.gz
│       ├── 188_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_188/188_CACTTGA_L005_R2_001.fastq.gz
│       ├── 189_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_189/189_CCGGAAT_L005_R1_001.fastq.gz
│       ├── 189_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_189/189_CCGGAAT_L005_R2_001.fastq.gz
│       ├── 18_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_18/18_TTGTCCA_L001_R1_001.fastq.gz
│       ├── 18_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_18/18_TTGTCCA_L001_R2_001.fastq.gz
│       ├── 190_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_190/190_TAGACCG_L005_R1_001.fastq.gz
│       ├── 190_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_190/190_TAGACCG_L005_R2_001.fastq.gz
│       ├── 191_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_191/191_GTATCTC_L005_R1_001.fastq.gz
│       ├── 191_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_191/191_GTATCTC_L005_R2_001.fastq.gz
│       ├── 192_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_192/192_GCTATAG_L005_R1_001.fastq.gz
│       ├── 192_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_192/192_GCTATAG_L005_R2_001.fastq.gz
│       ├── 193_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_193/193_TTCCGTC_L005_R1_001.fastq.gz
│       ├── 193_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_193/193_TTCCGTC_L005_R2_001.fastq.gz
│       ├── 194_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_194/194_AGAGTGC_L005_R1_001.fastq.gz
│       ├── 194_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_194/194_AGAGTGC_L005_R2_001.fastq.gz
│       ├── 195_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_195/195_CGTTCTT_L005_R1_001.fastq.gz
│       ├── 195_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_195/195_CGTTCTT_L005_R2_001.fastq.gz
│       ├── 196_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_196/196_TTCGACG_L005_R1_001.fastq.gz
│       ├── 196_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_196/196_TTCGACG_L005_R2_001.fastq.gz
│       ├── 197_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_197/197_ACCAGCA_L005_R1_001.fastq.gz
│       ├── 197_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_197/197_ACCAGCA_L005_R2_001.fastq.gz
│       ├── 198_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_198/198_GGAATGT_L005_R1_001.fastq.gz
│       ├── 198_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_198/198_GGAATGT_L005_R2_001.fastq.gz
│       ├── 199_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_199/199_CGATGGA_L005_R1_001.fastq.gz
│       ├── 199_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_199/199_CGATGGA_L005_R2_001.fastq.gz
│       ├── 19_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_19/19_AGTCGCA_L001_R1_001.fastq.gz
│       ├── 19_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_19/19_AGTCGCA_L001_R2_001.fastq.gz
│       ├── 1_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_1/1_CACTTGA_L001_R1_001.fastq.gz
│       ├── 1_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_1/1_CACTTGA_L001_R2_001.fastq.gz
│       ├── 200_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_200/200_AATCGAC_L005_R1_001.fastq.gz
│       ├── 200_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_200/200_AATCGAC_L005_R2_001.fastq.gz
│       ├── 201_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_201/201_GATGACT_L005_R1_001.fastq.gz
│       ├── 201_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_201/201_GATGACT_L005_R2_001.fastq.gz
│       ├── 202_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_202/202_ATGCATG_L005_R1_001.fastq.gz
│       ├── 202_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_202/202_ATGCATG_L005_R2_001.fastq.gz
│       ├── 203_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_203/203_TCGCCAA_L005_R1_001.fastq.gz
│       ├── 203_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_203/203_TCGCCAA_L005_R2_001.fastq.gz
│       ├── 204_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_204/204_GAATAGG_L005_R1_001.fastq.gz
│       ├── 204_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_204/204_GAATAGG_L005_R2_001.fastq.gz
│       ├── 205_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_205/205_TTGTCCA_L005_R1_001.fastq.gz
│       ├── 205_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_205/205_TTGTCCA_L005_R2_001.fastq.gz
│       ├── 206_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_206/206_AGTCGCA_L005_R1_001.fastq.gz
│       ├── 206_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_206/206_AGTCGCA_L005_R2_001.fastq.gz
│       ├── 207_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_207/207_TCGCAGT_L005_R1_001.fastq.gz
│       ├── 207_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_207/207_TCGCAGT_L005_R2_001.fastq.gz
│       ├── 208_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_208/208_CACGTTC_L005_R1_001.fastq.gz
│       ├── 208_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_208/208_CACGTTC_L005_R2_001.fastq.gz
│       ├── 209_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_209/209_CCTAGAT_L005_R1_001.fastq.gz
│       ├── 209_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_209/209_CCTAGAT_L005_R2_001.fastq.gz
│       ├── 20_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_20/20_TCGCAGT_L001_R1_001.fastq.gz
│       ├── 20_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_20/20_TCGCAGT_L001_R2_001.fastq.gz
│       ├── 210_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_210/210_ATAGCTG_L005_R1_001.fastq.gz
│       ├── 210_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_210/210_ATAGCTG_L005_R2_001.fastq.gz
│       ├── 211_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_211/211_GCTGTCA_L005_R1_001.fastq.gz
│       ├── 211_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_211/211_GCTGTCA_L005_R2_001.fastq.gz
│       ├── 212_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_212/212_ACGTGAG_L005_R1_001.fastq.gz
│       ├── 212_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_212/212_ACGTGAG_L005_R2_001.fastq.gz
│       ├── 213_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_213/213_CAATCTG_L005_R1_001.fastq.gz
│       ├── 213_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_213/213_CAATCTG_L005_R2_001.fastq.gz
│       ├── 214_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_214/214_ATTAGGC_L005_R1_001.fastq.gz
│       ├── 214_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_214/214_ATTAGGC_L005_R2_001.fastq.gz
│       ├── 215_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_215/215_GAACCGT_L005_R1_001.fastq.gz
│       ├── 215_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_215/215_GAACCGT_L005_R2_001.fastq.gz
│       ├── 216_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_216/216_TTGGTAC_L005_R1_001.fastq.gz
│       ├── 216_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_216/216_TTGGTAC_L005_R2_001.fastq.gz
│       ├── 217_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_217/217_CGCCATT_L005_R1_001.fastq.gz
│       ├── 217_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_217/217_CGCCATT_L005_R2_001.fastq.gz
│       ├── 218_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_218/218_TGCAACA_L005_R1_001.fastq.gz
│       ├── 218_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_218/218_TGCAACA_L005_R2_001.fastq.gz
│       ├── 219_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_219/219_GACTCTA_L005_R1_001.fastq.gz
│       ├── 219_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_219/219_GACTCTA_L005_R2_001.fastq.gz
│       ├── 21_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_21/21_CACGTTC_L001_R1_001.fastq.gz
│       ├── 21_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_21/21_CACGTTC_L001_R2_001.fastq.gz
│       ├── 220_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_220/220_CTCTACT_L005_R1_001.fastq.gz
│       ├── 220_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_220/220_CTCTACT_L005_R2_001.fastq.gz
│       ├── 221_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_221/221_CATCTTG_L005_R1_001.fastq.gz
│       ├── 221_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_221/221_CATCTTG_L005_R2_001.fastq.gz
│       ├── 222_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_222/222_CGAGTAG_L005_R1_001.fastq.gz
│       ├── 222_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_222/222_CGAGTAG_L005_R2_001.fastq.gz
│       ├── 223_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_223/223_ATGCGCT_L005_R1_001.fastq.gz
│       ├── 223_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_223/223_ATGCGCT_L005_R2_001.fastq.gz
│       ├── 224_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_224/224_TGGAGAC_L005_R1_001.fastq.gz
│       ├── 224_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_224/224_TGGAGAC_L005_R2_001.fastq.gz
│       ├── 225_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_225/225_TGTCCGA_L005_R1_001.fastq.gz
│       ├── 225_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_225/225_TGTCCGA_L005_R2_001.fastq.gz
│       ├── 226_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_226/226_AACTCCT_L005_R1_001.fastq.gz
│       ├── 226_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_226/226_AACTCCT_L005_R2_001.fastq.gz
│       ├── 227_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_227/227_GTAACGA_L005_R1_001.fastq.gz
│       ├── 227_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_227/227_GTAACGA_L005_R2_001.fastq.gz
│       ├── 228_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_228/228_GTACGAC_L005_R1_001.fastq.gz
│       ├── 228_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_228/228_GTACGAC_L005_R2_001.fastq.gz
│       ├── 229_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_229/229_CCTAAGG_L005_R1_001.fastq.gz
│       ├── 229_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_229/229_CCTAAGG_L005_R2_001.fastq.gz
│       ├── 22_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_22/22_CCTAGAT_L001_R1_001.fastq.gz
│       ├── 22_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_22/22_CCTAGAT_L001_R2_001.fastq.gz
│       ├── 230_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_230/230_TCCGTTG_L005_R1_001.fastq.gz
│       ├── 230_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_230/230_TCCGTTG_L005_R2_001.fastq.gz
│       ├── 231_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_231/231_GGTGGTT_L005_R1_001.fastq.gz
│       ├── 231_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_231/231_GGTGGTT_L005_R2_001.fastq.gz
│       ├── 232_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_232/232_AAGTAGC_L005_R1_001.fastq.gz
│       ├── 232_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_232/232_AAGTAGC_L005_R2_001.fastq.gz
│       ├── 233_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_233/233_TCAGACA_L005_R1_001.fastq.gz
│       ├── 233_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_233/233_TCAGACA_L005_R2_001.fastq.gz
│       ├── 234_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_234/234_ACGATAC_L005_R1_001.fastq.gz
│       ├── 234_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex5/Sample_234/234_ACGATAC_L005_R2_001.fastq.gz
│       ├── 235_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_235/235_CACTTGA_L006_R1_001.fastq.gz
│       ├── 235_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_235/235_CACTTGA_L006_R2_001.fastq.gz
│       ├── 236_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_236/236_CCGGAAT_L006_R1_001.fastq.gz
│       ├── 236_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_236/236_CCGGAAT_L006_R2_001.fastq.gz
│       ├── 237_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_237/237_TAGACCG_L006_R1_001.fastq.gz
│       ├── 237_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_237/237_TAGACCG_L006_R2_001.fastq.gz
│       ├── 238_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_238/238_GTATCTC_L006_R1_001.fastq.gz
│       ├── 238_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_238/238_GTATCTC_L006_R2_001.fastq.gz
│       ├── 239_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_239/239_GCTATAG_L006_R1_001.fastq.gz
│       ├── 239_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_239/239_GCTATAG_L006_R2_001.fastq.gz
│       ├── 23_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_23/23_ATAGCTG_L001_R1_001.fastq.gz
│       ├── 23_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_23/23_ATAGCTG_L001_R2_001.fastq.gz
│       ├── 240_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_240/240_TTCCGTC_L006_R1_001.fastq.gz
│       ├── 240_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_240/240_TTCCGTC_L006_R2_001.fastq.gz
│       ├── 241_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_241/241_AGAGTGC_L006_R1_001.fastq.gz
│       ├── 241_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_241/241_AGAGTGC_L006_R2_001.fastq.gz
│       ├── 242_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_242/242_CGTTCTT_L006_R1_001.fastq.gz
│       ├── 242_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_242/242_CGTTCTT_L006_R2_001.fastq.gz
│       ├── 243_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_243/243_TTCGACG_L006_R1_001.fastq.gz
│       ├── 243_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_243/243_TTCGACG_L006_R2_001.fastq.gz
│       ├── 244_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_244/244_ACCAGCA_L006_R1_001.fastq.gz
│       ├── 244_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_244/244_ACCAGCA_L006_R2_001.fastq.gz
│       ├── 245_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_245/245_GGAATGT_L006_R1_001.fastq.gz
│       ├── 245_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_245/245_GGAATGT_L006_R2_001.fastq.gz
│       ├── 246_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_246/246_CGATGGA_L006_R1_001.fastq.gz
│       ├── 246_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_246/246_CGATGGA_L006_R2_001.fastq.gz
│       ├── 247_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_247/247_AATCGAC_L006_R1_001.fastq.gz
│       ├── 247_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_247/247_AATCGAC_L006_R2_001.fastq.gz
│       ├── 248_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_248/248_GATGACT_L006_R1_001.fastq.gz
│       ├── 248_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_248/248_GATGACT_L006_R2_001.fastq.gz
│       ├── 249_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_249/249_ATGCATG_L006_R1_001.fastq.gz
│       ├── 249_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_249/249_ATGCATG_L006_R2_001.fastq.gz
│       ├── 24_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_24/24_GCTGTCA_L001_R1_001.fastq.gz
│       ├── 24_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_24/24_GCTGTCA_L001_R2_001.fastq.gz
│       ├── 250_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_250/250_TCGCCAA_L006_R1_001.fastq.gz
│       ├── 250_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_250/250_TCGCCAA_L006_R2_001.fastq.gz
│       ├── 251_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_251/251_GAATAGG_L006_R1_001.fastq.gz
│       ├── 251_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_251/251_GAATAGG_L006_R2_001.fastq.gz
│       ├── 252_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_252/252_TTGTCCA_L006_R1_001.fastq.gz
│       ├── 252_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_252/252_TTGTCCA_L006_R2_001.fastq.gz
│       ├── 253_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_253/253_AGTCGCA_L006_R1_001.fastq.gz
│       ├── 253_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_253/253_AGTCGCA_L006_R2_001.fastq.gz
│       ├── 254_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_254/254_TCGCAGT_L006_R1_001.fastq.gz
│       ├── 254_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_254/254_TCGCAGT_L006_R2_001.fastq.gz
│       ├── 255_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_255/255_CACGTTC_L006_R1_001.fastq.gz
│       ├── 255_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_255/255_CACGTTC_L006_R2_001.fastq.gz
│       ├── 256_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_256/256_CCTAGAT_L006_R1_001.fastq.gz
│       ├── 256_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_256/256_CCTAGAT_L006_R2_001.fastq.gz
│       ├── 257_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_257/257_ATAGCTG_L006_R1_001.fastq.gz
│       ├── 257_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_257/257_ATAGCTG_L006_R2_001.fastq.gz
│       ├── 258_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_258/258_GCTGTCA_L006_R1_001.fastq.gz
│       ├── 258_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_258/258_GCTGTCA_L006_R2_001.fastq.gz
│       ├── 259_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_259/259_ACGTGAG_L006_R1_001.fastq.gz
│       ├── 259_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_259/259_ACGTGAG_L006_R2_001.fastq.gz
│       ├── 25_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_25/25_CAATCTG_L001_R1_001.fastq.gz
│       ├── 25_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_25/25_CAATCTG_L001_R2_001.fastq.gz
│       ├── 260_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_260/260_CAATCTG_L006_R1_001.fastq.gz
│       ├── 260_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_260/260_CAATCTG_L006_R2_001.fastq.gz
│       ├── 261_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_261/261_ATTAGGC_L006_R1_001.fastq.gz
│       ├── 261_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_261/261_ATTAGGC_L006_R2_001.fastq.gz
│       ├── 262_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_262/262_GAACCGT_L006_R1_001.fastq.gz
│       ├── 262_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_262/262_GAACCGT_L006_R2_001.fastq.gz
│       ├── 263_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_263/263_TTGGTAC_L006_R1_001.fastq.gz
│       ├── 263_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_263/263_TTGGTAC_L006_R2_001.fastq.gz
│       ├── 264_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_264/264_CGCCATT_L006_R1_001.fastq.gz
│       ├── 264_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_264/264_CGCCATT_L006_R2_001.fastq.gz
│       ├── 265_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_265/265_TGCAACA_L006_R1_001.fastq.gz
│       ├── 265_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_265/265_TGCAACA_L006_R2_001.fastq.gz
│       ├── 266_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_266/266_GACTCTA_L006_R1_001.fastq.gz
│       ├── 266_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_266/266_GACTCTA_L006_R2_001.fastq.gz
│       ├── 267_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_267/267_CTCTACT_L006_R1_001.fastq.gz
│       ├── 267_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_267/267_CTCTACT_L006_R2_001.fastq.gz
│       ├── 268_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_268/268_CATCTTG_L006_R1_001.fastq.gz
│       ├── 268_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_268/268_CATCTTG_L006_R2_001.fastq.gz
│       ├── 269_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_269/269_ATGCGCT_L006_R1_001.fastq.gz
│       ├── 269_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_269/269_ATGCGCT_L006_R2_001.fastq.gz
│       ├── 26_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_26/26_ATTAGGC_L001_R1_001.fastq.gz
│       ├── 26_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_26/26_ATTAGGC_L001_R2_001.fastq.gz
│       ├── 270_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_270/270_TGGAGAC_L006_R1_001.fastq.gz
│       ├── 270_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_270/270_TGGAGAC_L006_R2_001.fastq.gz
│       ├── 271_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_271/271_TGTCCGA_L006_R1_001.fastq.gz
│       ├── 271_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_271/271_TGTCCGA_L006_R2_001.fastq.gz
│       ├── 272_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_272/272_AACTCCT_L006_R1_001.fastq.gz
│       ├── 272_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_272/272_AACTCCT_L006_R2_001.fastq.gz
│       ├── 273_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_273/273_GTAACGA_L006_R1_001.fastq.gz
│       ├── 273_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_273/273_GTAACGA_L006_R2_001.fastq.gz
│       ├── 274_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_274/274_GTACGAC_L006_R1_001.fastq.gz
│       ├── 274_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_274/274_GTACGAC_L006_R2_001.fastq.gz
│       ├── 275_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_275/275_CCTAAGG_L006_R1_001.fastq.gz
│       ├── 275_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_275/275_CCTAAGG_L006_R2_001.fastq.gz
│       ├── 276_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_276/276_TCCGTTG_L006_R1_001.fastq.gz
│       ├── 276_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_276/276_TCCGTTG_L006_R2_001.fastq.gz
│       ├── 277_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_277/277_GGTGGTT_L006_R1_001.fastq.gz
│       ├── 277_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_277/277_GGTGGTT_L006_R2_001.fastq.gz
│       ├── 278_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_278/278_AAGTAGC_L006_R1_001.fastq.gz
│       ├── 278_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_278/278_AAGTAGC_L006_R2_001.fastq.gz
│       ├── 279_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_279/279_TCAGACA_L006_R1_001.fastq.gz
│       ├── 279_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_279/279_TCAGACA_L006_R2_001.fastq.gz
│       ├── 27_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_27/27_TTGGTAC_L001_R1_001.fastq.gz
│       ├── 27_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_27/27_TTGGTAC_L001_R2_001.fastq.gz
│       ├── 280_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_280/280_ACGATAC_L006_R1_001.fastq.gz
│       ├── 280_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex6/Sample_280/280_ACGATAC_L006_R2_001.fastq.gz
│       ├── 281_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_281/281_CACTTGA_L007_R1_001.fastq.gz
│       ├── 281_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_281/281_CACTTGA_L007_R2_001.fastq.gz
│       ├── 282_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_282/282_CCGGAAT_L007_R1_001.fastq.gz
│       ├── 282_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_282/282_CCGGAAT_L007_R2_001.fastq.gz
│       ├── 283_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_283/283_TAGACCG_L007_R1_001.fastq.gz
│       ├── 283_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_283/283_TAGACCG_L007_R2_001.fastq.gz
│       ├── 284_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_284/284_GTATCTC_L007_R1_001.fastq.gz
│       ├── 284_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_284/284_GTATCTC_L007_R2_001.fastq.gz
│       ├── 285_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_285/285_GCTATAG_L007_R1_001.fastq.gz
│       ├── 285_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_285/285_GCTATAG_L007_R2_001.fastq.gz
│       ├── 286_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_286/286_TTCCGTC_L007_R1_001.fastq.gz
│       ├── 286_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_286/286_TTCCGTC_L007_R2_001.fastq.gz
│       ├── 287_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_287/287_AGAGTGC_L007_R1_001.fastq.gz
│       ├── 287_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_287/287_AGAGTGC_L007_R2_001.fastq.gz
│       ├── 288_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_288/288_CGTTCTT_L007_R1_001.fastq.gz
│       ├── 288_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_288/288_CGTTCTT_L007_R2_001.fastq.gz
│       ├── 289_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_289/289_TTCGACG_L007_R1_001.fastq.gz
│       ├── 289_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_289/289_TTCGACG_L007_R2_001.fastq.gz
│       ├── 28_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_28/28_CGCCATT_L001_R1_001.fastq.gz
│       ├── 28_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_28/28_CGCCATT_L001_R2_001.fastq.gz
│       ├── 290_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_290/290_ACCAGCA_L007_R1_001.fastq.gz
│       ├── 290_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_290/290_ACCAGCA_L007_R2_001.fastq.gz
│       ├── 291_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_291/291_GGAATGT_L007_R1_001.fastq.gz
│       ├── 291_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_291/291_GGAATGT_L007_R2_001.fastq.gz
│       ├── 292_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_292/292_CGATGGA_L007_R1_001.fastq.gz
│       ├── 292_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_292/292_CGATGGA_L007_R2_001.fastq.gz
│       ├── 293_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_293/293_AATCGAC_L007_R1_001.fastq.gz
│       ├── 293_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_293/293_AATCGAC_L007_R2_001.fastq.gz
│       ├── 294_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_294/294_GATGACT_L007_R1_001.fastq.gz
│       ├── 294_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_294/294_GATGACT_L007_R2_001.fastq.gz
│       ├── 295_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_295/295_ATGCATG_L007_R1_001.fastq.gz
│       ├── 295_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_295/295_ATGCATG_L007_R2_001.fastq.gz
│       ├── 296_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_296/296_TCGCCAA_L007_R1_001.fastq.gz
│       ├── 296_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_296/296_TCGCCAA_L007_R2_001.fastq.gz
│       ├── 297_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_297/297_GAATAGG_L007_R1_001.fastq.gz
│       ├── 297_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_297/297_GAATAGG_L007_R2_001.fastq.gz
│       ├── 298_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_298/298_GGCATAC_L007_R1_001.fastq.gz
│       ├── 298_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_298/298_GGCATAC_L007_R2_001.fastq.gz
│       ├── 299_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_299/299_TTGTCCA_L007_R1_001.fastq.gz
│       ├── 299_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_299/299_TTGTCCA_L007_R2_001.fastq.gz
│       ├── 29_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_29/29_TGCAACA_L001_R1_001.fastq.gz
│       ├── 29_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_29/29_TGCAACA_L001_R2_001.fastq.gz
│       ├── 2_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_2/2_CCGGAAT_L001_R1_001.fastq.gz
│       ├── 2_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_2/2_CCGGAAT_L001_R2_001.fastq.gz
│       ├── 300_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_300/300_AGTCGCA_L007_R1_001.fastq.gz
│       ├── 300_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_300/300_AGTCGCA_L007_R2_001.fastq.gz
│       ├── 301_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_301/301_TCGCAGT_L007_R1_001.fastq.gz
│       ├── 301_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_301/301_TCGCAGT_L007_R2_001.fastq.gz
│       ├── 302_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_302/302_CACGTTC_L007_R1_001.fastq.gz
│       ├── 302_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_302/302_CACGTTC_L007_R2_001.fastq.gz
│       ├── 303_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_303/303_CCTAGAT_L007_R1_001.fastq.gz
│       ├── 303_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_303/303_CCTAGAT_L007_R2_001.fastq.gz
│       ├── 304_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_304/304_ATAGCTG_L007_R1_001.fastq.gz
│       ├── 304_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_304/304_ATAGCTG_L007_R2_001.fastq.gz
│       ├── 305_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_305/305_GCTGTCA_L007_R1_001.fastq.gz
│       ├── 305_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_305/305_GCTGTCA_L007_R2_001.fastq.gz
│       ├── 306_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_306/306_ACGTGAG_L007_R1_001.fastq.gz
│       ├── 306_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_306/306_ACGTGAG_L007_R2_001.fastq.gz
│       ├── 307_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_307/307_CAATCTG_L007_R1_001.fastq.gz
│       ├── 307_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_307/307_CAATCTG_L007_R2_001.fastq.gz
│       ├── 308_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_308/308_ATTAGGC_L007_R1_001.fastq.gz
│       ├── 308_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_308/308_ATTAGGC_L007_R2_001.fastq.gz
│       ├── 309_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_309/309_GAACCGT_L007_R1_001.fastq.gz
│       ├── 309_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_309/309_GAACCGT_L007_R2_001.fastq.gz
│       ├── 30_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_30/30_GACTCTA_L001_R1_001.fastq.gz
│       ├── 30_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_30/30_GACTCTA_L001_R2_001.fastq.gz
│       ├── 310_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_310/310_TTGGTAC_L007_R1_001.fastq.gz
│       ├── 310_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_310/310_TTGGTAC_L007_R2_001.fastq.gz
│       ├── 311_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_311/311_CGCCATT_L007_R1_001.fastq.gz
│       ├── 311_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_311/311_CGCCATT_L007_R2_001.fastq.gz
│       ├── 312_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_312/312_TGCAACA_L007_R1_001.fastq.gz
│       ├── 312_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_312/312_TGCAACA_L007_R2_001.fastq.gz
│       ├── 313_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_313/313_GACTCTA_L007_R1_001.fastq.gz
│       ├── 313_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_313/313_GACTCTA_L007_R2_001.fastq.gz
│       ├── 314_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_314/314_CTCTACT_L007_R1_001.fastq.gz
│       ├── 314_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_314/314_CTCTACT_L007_R2_001.fastq.gz
│       ├── 315_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_315/315_CATCTTG_L007_R1_001.fastq.gz
│       ├── 315_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_315/315_CATCTTG_L007_R2_001.fastq.gz
│       ├── 316_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_316/316_CGAGTAG_L007_R1_001.fastq.gz
│       ├── 316_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_316/316_CGAGTAG_L007_R2_001.fastq.gz
│       ├── 317_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_317/317_ATGCGCT_L007_R1_001.fastq.gz
│       ├── 317_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_317/317_ATGCGCT_L007_R2_001.fastq.gz
│       ├── 318_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_318/318_TGGAGAC_L007_R1_001.fastq.gz
│       ├── 318_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_318/318_TGGAGAC_L007_R2_001.fastq.gz
│       ├── 319_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_319/319_TGTCCGA_L007_R1_001.fastq.gz
│       ├── 319_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_319/319_TGTCCGA_L007_R2_001.fastq.gz
│       ├── 31_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_31/31_CTCTACT_L001_R1_001.fastq.gz
│       ├── 31_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_31/31_CTCTACT_L001_R2_001.fastq.gz
│       ├── 320_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_320/320_AACTCCT_L007_R1_001.fastq.gz
│       ├── 320_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_320/320_AACTCCT_L007_R2_001.fastq.gz
│       ├── 321_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_321/321_GTAACGA_L007_R1_001.fastq.gz
│       ├── 321_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_321/321_GTAACGA_L007_R2_001.fastq.gz
│       ├── 322_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_322/322_GTACGAC_L007_R1_001.fastq.gz
│       ├── 322_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_322/322_GTACGAC_L007_R2_001.fastq.gz
│       ├── 323_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_323/323_CCTAAGG_L007_R1_001.fastq.gz
│       ├── 323_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_323/323_CCTAAGG_L007_R2_001.fastq.gz
│       ├── 324_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_324/324_TCCGTTG_L007_R1_001.fastq.gz
│       ├── 324_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_324/324_TCCGTTG_L007_R2_001.fastq.gz
│       ├── 325_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_325/325_GGTGGTT_L007_R1_001.fastq.gz
│       ├── 325_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_325/325_GGTGGTT_L007_R2_001.fastq.gz
│       ├── 326_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_326/326_AAGTAGC_L007_R1_001.fastq.gz
│       ├── 326_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_326/326_AAGTAGC_L007_R2_001.fastq.gz
│       ├── 327_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_327/327_TCAGACA_L007_R1_001.fastq.gz
│       ├── 327_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_327/327_TCAGACA_L007_R2_001.fastq.gz
│       ├── 328_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_328/328_ACGATAC_L007_R1_001.fastq.gz
│       ├── 328_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex7/Sample_328/328_ACGATAC_L007_R2_001.fastq.gz
│       ├── 329_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_329/329_CACTTGA_L008_R1_001.fastq.gz
│       ├── 329_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_329/329_CACTTGA_L008_R2_001.fastq.gz
│       ├── 32_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_32/32_CATCTTG_L001_R1_001.fastq.gz
│       ├── 32_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_32/32_CATCTTG_L001_R2_001.fastq.gz
│       ├── 330_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_330/330_CCGGAAT_L008_R1_001.fastq.gz
│       ├── 330_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_330/330_CCGGAAT_L008_R2_001.fastq.gz
│       ├── 331_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_331/331_TAGACCG_L008_R1_001.fastq.gz
│       ├── 331_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_331/331_TAGACCG_L008_R2_001.fastq.gz
│       ├── 332_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_332/332_GTATCTC_L008_R1_001.fastq.gz
│       ├── 332_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_332/332_GTATCTC_L008_R2_001.fastq.gz
│       ├── 333_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_333/333_GCTATAG_L008_R1_001.fastq.gz
│       ├── 333_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_333/333_GCTATAG_L008_R2_001.fastq.gz
│       ├── 334_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_334/334_TTCCGTC_L008_R1_001.fastq.gz
│       ├── 334_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_334/334_TTCCGTC_L008_R2_001.fastq.gz
│       ├── 335_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_335/335_AGAGTGC_L008_R1_001.fastq.gz
│       ├── 335_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_335/335_AGAGTGC_L008_R2_001.fastq.gz
│       ├── 336_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_336/336_CGTTCTT_L008_R1_001.fastq.gz
│       ├── 336_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_336/336_CGTTCTT_L008_R2_001.fastq.gz
│       ├── 337_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_337/337_TTCGACG_L008_R1_001.fastq.gz
│       ├── 337_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_337/337_TTCGACG_L008_R2_001.fastq.gz
│       ├── 338_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_338/338_ACCAGCA_L008_R1_001.fastq.gz
│       ├── 338_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_338/338_ACCAGCA_L008_R2_001.fastq.gz
│       ├── 339_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_339/339_GGAATGT_L008_R1_001.fastq.gz
│       ├── 339_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_339/339_GGAATGT_L008_R2_001.fastq.gz
│       ├── 33_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_33/33_CGAGTAG_L001_R1_001.fastq.gz
│       ├── 33_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_33/33_CGAGTAG_L001_R2_001.fastq.gz
│       ├── 340_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_340/340_CGATGGA_L008_R1_001.fastq.gz
│       ├── 340_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_340/340_CGATGGA_L008_R2_001.fastq.gz
│       ├── 341_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_341/341_AATCGAC_L008_R1_001.fastq.gz
│       ├── 341_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_341/341_AATCGAC_L008_R2_001.fastq.gz
│       ├── 342_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_342/342_GATGACT_L008_R1_001.fastq.gz
│       ├── 342_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_342/342_GATGACT_L008_R2_001.fastq.gz
│       ├── 343_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_343/343_ATGCATG_L008_R1_001.fastq.gz
│       ├── 343_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_343/343_ATGCATG_L008_R2_001.fastq.gz
│       ├── 344_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_344/344_TCGCCAA_L008_R1_001.fastq.gz
│       ├── 344_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_344/344_TCGCCAA_L008_R2_001.fastq.gz
│       ├── 345_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_345/345_GAATAGG_L008_R1_001.fastq.gz
│       ├── 345_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_345/345_GAATAGG_L008_R2_001.fastq.gz
│       ├── 346_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_346/346_GGCATAC_L008_R1_001.fastq.gz
│       ├── 346_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_346/346_GGCATAC_L008_R2_001.fastq.gz
│       ├── 347_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_347/347_TTGTCCA_L008_R1_001.fastq.gz
│       ├── 347_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_347/347_TTGTCCA_L008_R2_001.fastq.gz
│       ├── 348_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_348/348_AGTCGCA_L008_R1_001.fastq.gz
│       ├── 348_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_348/348_AGTCGCA_L008_R2_001.fastq.gz
│       ├── 349_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_349/349_TCGCAGT_L008_R1_001.fastq.gz
│       ├── 349_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_349/349_TCGCAGT_L008_R2_001.fastq.gz
│       ├── 34_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_34/34_ATGCGCT_L001_R1_001.fastq.gz
│       ├── 34_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_34/34_ATGCGCT_L001_R2_001.fastq.gz
│       ├── 350_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_350/350_CACGTTC_L008_R1_001.fastq.gz
│       ├── 350_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_350/350_CACGTTC_L008_R2_001.fastq.gz
│       ├── 351_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_351/351_CCTAGAT_L008_R1_001.fastq.gz
│       ├── 351_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_351/351_CCTAGAT_L008_R2_001.fastq.gz
│       ├── 352_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_352/352_ATAGCTG_L008_R1_001.fastq.gz
│       ├── 352_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_352/352_ATAGCTG_L008_R2_001.fastq.gz
│       ├── 353_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_353/353_GCTGTCA_L008_R1_001.fastq.gz
│       ├── 353_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_353/353_GCTGTCA_L008_R2_001.fastq.gz
│       ├── 354_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_354/354_ACGTGAG_L008_R1_001.fastq.gz
│       ├── 354_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_354/354_ACGTGAG_L008_R2_001.fastq.gz
│       ├── 355_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_355/355_CAATCTG_L008_R1_001.fastq.gz
│       ├── 355_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_355/355_CAATCTG_L008_R2_001.fastq.gz
│       ├── 356_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_356/356_ATTAGGC_L008_R1_001.fastq.gz
│       ├── 356_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_356/356_ATTAGGC_L008_R2_001.fastq.gz
│       ├── 357_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_357/357_GAACCGT_L008_R1_001.fastq.gz
│       ├── 357_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_357/357_GAACCGT_L008_R2_001.fastq.gz
│       ├── 358_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_358/358_TTGGTAC_L008_R1_001.fastq.gz
│       ├── 358_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_358/358_TTGGTAC_L008_R2_001.fastq.gz
│       ├── 359_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_359/359_CGCCATT_L008_R1_001.fastq.gz
│       ├── 359_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_359/359_CGCCATT_L008_R2_001.fastq.gz
│       ├── 35_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_35/35_TGGAGAC_L001_R1_001.fastq.gz
│       ├── 35_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_35/35_TGGAGAC_L001_R2_001.fastq.gz
│       ├── 360_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_360/360_TGCAACA_L008_R1_001.fastq.gz
│       ├── 360_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_360/360_TGCAACA_L008_R2_001.fastq.gz
│       ├── 361_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_361/361_GACTCTA_L008_R1_001.fastq.gz
│       ├── 361_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_361/361_GACTCTA_L008_R2_001.fastq.gz
│       ├── 362_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_362/362_CTCTACT_L008_R1_001.fastq.gz
│       ├── 362_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_362/362_CTCTACT_L008_R2_001.fastq.gz
│       ├── 363_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_363/363_CATCTTG_L008_R1_001.fastq.gz
│       ├── 363_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_363/363_CATCTTG_L008_R2_001.fastq.gz
│       ├── 364_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_364/364_CGAGTAG_L008_R1_001.fastq.gz
│       ├── 364_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_364/364_CGAGTAG_L008_R2_001.fastq.gz
│       ├── 365_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_365/365_ATGCGCT_L008_R1_001.fastq.gz
│       ├── 365_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_365/365_ATGCGCT_L008_R2_001.fastq.gz
│       ├── 366_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_366/366_TGGAGAC_L008_R1_001.fastq.gz
│       ├── 366_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_366/366_TGGAGAC_L008_R2_001.fastq.gz
│       ├── 367_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_367/367_TGTCCGA_L008_R1_001.fastq.gz
│       ├── 367_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_367/367_TGTCCGA_L008_R2_001.fastq.gz
│       ├── 368_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_368/368_AACTCCT_L008_R1_001.fastq.gz
│       ├── 368_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_368/368_AACTCCT_L008_R2_001.fastq.gz
│       ├── 369_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_369/369_GTAACGA_L008_R1_001.fastq.gz
│       ├── 369_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_369/369_GTAACGA_L008_R2_001.fastq.gz
│       ├── 36_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_36/36_TGTCCGA_L001_R1_001.fastq.gz
│       ├── 36_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_36/36_TGTCCGA_L001_R2_001.fastq.gz
│       ├── 370_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_370/370_GTACGAC_L008_R1_001.fastq.gz
│       ├── 370_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_370/370_GTACGAC_L008_R2_001.fastq.gz
│       ├── 371_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_371/371_CCTAAGG_L008_R1_001.fastq.gz
│       ├── 371_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_371/371_CCTAAGG_L008_R2_001.fastq.gz
│       ├── 372_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_372/372_TCCGTTG_L008_R1_001.fastq.gz
│       ├── 372_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_372/372_TCCGTTG_L008_R2_001.fastq.gz
│       ├── 373_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_373/373_GGTGGTT_L008_R1_001.fastq.gz
│       ├── 373_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_373/373_GGTGGTT_L008_R2_001.fastq.gz
│       ├── 374_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_374/374_AAGTAGC_L008_R1_001.fastq.gz
│       ├── 374_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_374/374_AAGTAGC_L008_R2_001.fastq.gz
│       ├── 375_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_375/375_TCAGACA_L008_R1_001.fastq.gz
│       ├── 375_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_375/375_TCAGACA_L008_R2_001.fastq.gz
│       ├── 376_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_376/376_ACGATAC_L008_R1_001.fastq.gz
│       ├── 376_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex8/Sample_376/376_ACGATAC_L008_R2_001.fastq.gz
│       ├── 37_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_37/37_AACTCCT_L001_R1_001.fastq.gz
│       ├── 37_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_37/37_AACTCCT_L001_R2_001.fastq.gz
│       ├── 38_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_38/38_GTAACGA_L001_R1_001.fastq.gz
│       ├── 38_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_38/38_GTAACGA_L001_R2_001.fastq.gz
│       ├── 39_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_39/39_GTACGAC_L001_R1_001.fastq.gz
│       ├── 39_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_39/39_GTACGAC_L001_R2_001.fastq.gz
│       ├── 3_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_3/3_TAGACCG_L001_R1_001.fastq.gz
│       ├── 3_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_3/3_TAGACCG_L001_R2_001.fastq.gz
│       ├── 40_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_40/40_CCTAAGG_L001_R1_001.fastq.gz
│       ├── 40_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_40/40_CCTAAGG_L001_R2_001.fastq.gz
│       ├── 41_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_41/41_TCCGTTG_L001_R1_001.fastq.gz
│       ├── 41_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_41/41_TCCGTTG_L001_R2_001.fastq.gz
│       ├── 42_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_42/42_GGTGGTT_L001_R1_001.fastq.gz
│       ├── 42_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_42/42_GGTGGTT_L001_R2_001.fastq.gz
│       ├── 43_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_43/43_AAGTAGC_L001_R1_001.fastq.gz
│       ├── 43_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_43/43_AAGTAGC_L001_R2_001.fastq.gz
│       ├── 44_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_44/44_TCAGACA_L001_R1_001.fastq.gz
│       ├── 44_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_44/44_TCAGACA_L001_R2_001.fastq.gz
│       ├── 45_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_45/45_ACGATAC_L001_R1_001.fastq.gz
│       ├── 45_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_45/45_ACGATAC_L001_R2_001.fastq.gz
│       ├── 46_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_46/46_CACTTGA_L002_R1_001.fastq.gz
│       ├── 46_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_46/46_CACTTGA_L002_R2_001.fastq.gz
│       ├── 47_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_47/47_CCGGAAT_L002_R1_001.fastq.gz
│       ├── 47_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_47/47_CCGGAAT_L002_R2_001.fastq.gz
│       ├── 48_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_48/48_TAGACCG_L002_R1_001.fastq.gz
│       ├── 48_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_48/48_TAGACCG_L002_R2_001.fastq.gz
│       ├── 49_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_49/49_GTATCTC_L002_R1_001.fastq.gz
│       ├── 49_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_49/49_GTATCTC_L002_R2_001.fastq.gz
│       ├── 4_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_4/4_GTATCTC_L001_R1_001.fastq.gz
│       ├── 4_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_4/4_GTATCTC_L001_R2_001.fastq.gz
│       ├── 50_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_50/50_GCTATAG_L002_R1_001.fastq.gz
│       ├── 50_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_50/50_GCTATAG_L002_R2_001.fastq.gz
│       ├── 51_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_51/51_TTCCGTC_L002_R1_001.fastq.gz
│       ├── 51_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_51/51_TTCCGTC_L002_R2_001.fastq.gz
│       ├── 52_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_52/52_AGAGTGC_L002_R1_001.fastq.gz
│       ├── 52_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_52/52_AGAGTGC_L002_R2_001.fastq.gz
│       ├── 53_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_53/53_CGTTCTT_L002_R1_001.fastq.gz
│       ├── 53_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_53/53_CGTTCTT_L002_R2_001.fastq.gz
│       ├── 54_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_54/54_TTCGACG_L002_R1_001.fastq.gz
│       ├── 54_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_54/54_TTCGACG_L002_R2_001.fastq.gz
│       ├── 55_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_55/55_ACCAGCA_L002_R1_001.fastq.gz
│       ├── 55_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_55/55_ACCAGCA_L002_R2_001.fastq.gz
│       ├── 56_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_56/56_GGAATGT_L002_R1_001.fastq.gz
│       ├── 56_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_56/56_GGAATGT_L002_R2_001.fastq.gz
│       ├── 57_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_57/57_CGATGGA_L002_R1_001.fastq.gz
│       ├── 57_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_57/57_CGATGGA_L002_R2_001.fastq.gz
│       ├── 58_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_58/58_AATCGAC_L002_R1_001.fastq.gz
│       ├── 58_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_58/58_AATCGAC_L002_R2_001.fastq.gz
│       ├── 59_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_59/59_GATGACT_L002_R1_001.fastq.gz
│       ├── 59_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_59/59_GATGACT_L002_R2_001.fastq.gz
│       ├── 5_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_5/5_TTCCGTC_L001_R1_001.fastq.gz
│       ├── 5_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_5/5_TTCCGTC_L001_R2_001.fastq.gz
│       ├── 60_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_60/60_ATGCATG_L002_R1_001.fastq.gz
│       ├── 60_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_60/60_ATGCATG_L002_R2_001.fastq.gz
│       ├── 61_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_61/61_TCGCCAA_L002_R1_001.fastq.gz
│       ├── 61_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_61/61_TCGCCAA_L002_R2_001.fastq.gz
│       ├── 62_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_62/62_GAATAGG_L002_R1_001.fastq.gz
│       ├── 62_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_62/62_GAATAGG_L002_R2_001.fastq.gz
│       ├── 63_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_63/63_GGCATAC_L002_R1_001.fastq.gz
│       ├── 63_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_63/63_GGCATAC_L002_R2_001.fastq.gz
│       ├── 64_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_64/64_TTGTCCA_L002_R1_001.fastq.gz
│       ├── 64_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_64/64_TTGTCCA_L002_R2_001.fastq.gz
│       ├── 65_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_65/65_AGTCGCA_L002_R1_001.fastq.gz
│       ├── 65_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_65/65_AGTCGCA_L002_R2_001.fastq.gz
│       ├── 66_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_66/66_TCGCAGT_L002_R1_001.fastq.gz
│       ├── 66_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_66/66_TCGCAGT_L002_R2_001.fastq.gz
│       ├── 67_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_67/67_CACGTTC_L002_R1_001.fastq.gz
│       ├── 67_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_67/67_CACGTTC_L002_R2_001.fastq.gz
│       ├── 68_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_68/68_CCTAGAT_L002_R1_001.fastq.gz
│       ├── 68_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_68/68_CCTAGAT_L002_R2_001.fastq.gz
│       ├── 69_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_69/69_ATAGCTG_L002_R1_001.fastq.gz
│       ├── 69_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_69/69_ATAGCTG_L002_R2_001.fastq.gz
│       ├── 6_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_6/6_AGAGTGC_L001_R1_001.fastq.gz
│       ├── 6_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_6/6_AGAGTGC_L001_R2_001.fastq.gz
│       ├── 70_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_70/70_GCTGTCA_L002_R1_001.fastq.gz
│       ├── 70_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_70/70_GCTGTCA_L002_R2_001.fastq.gz
│       ├── 71_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_71/71_ACGTGAG_L002_R1_001.fastq.gz
│       ├── 71_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_71/71_ACGTGAG_L002_R2_001.fastq.gz
│       ├── 72_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_72/72_CAATCTG_L002_R1_001.fastq.gz
│       ├── 72_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_72/72_CAATCTG_L002_R2_001.fastq.gz
│       ├── 73_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_73/73_ATTAGGC_L002_R1_001.fastq.gz
│       ├── 73_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_73/73_ATTAGGC_L002_R2_001.fastq.gz
│       ├── 74_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_74/74_GAACCGT_L002_R1_001.fastq.gz
│       ├── 74_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_74/74_GAACCGT_L002_R2_001.fastq.gz
│       ├── 75_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_75/75_TTGGTAC_L002_R1_001.fastq.gz
│       ├── 75_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_75/75_TTGGTAC_L002_R2_001.fastq.gz
│       ├── 76_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_76/76_CGCCATT_L002_R1_001.fastq.gz
│       ├── 76_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_76/76_CGCCATT_L002_R2_001.fastq.gz
│       ├── 77_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_77/77_TGCAACA_L002_R1_001.fastq.gz
│       ├── 77_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_77/77_TGCAACA_L002_R2_001.fastq.gz
│       ├── 78_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_78/78_GACTCTA_L002_R1_001.fastq.gz
│       ├── 78_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_78/78_GACTCTA_L002_R2_001.fastq.gz
│       ├── 79_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_79/79_CATCTTG_L002_R1_001.fastq.gz
│       ├── 79_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_79/79_CATCTTG_L002_R2_001.fastq.gz
│       ├── 7_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_7/7_CGTTCTT_L001_R1_001.fastq.gz
│       ├── 7_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_7/7_CGTTCTT_L001_R2_001.fastq.gz
│       ├── 80_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_80/80_CGAGTAG_L002_R1_001.fastq.gz
│       ├── 80_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_80/80_CGAGTAG_L002_R2_001.fastq.gz
│       ├── 81_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_81/81_ATGCGCT_L002_R1_001.fastq.gz
│       ├── 81_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_81/81_ATGCGCT_L002_R2_001.fastq.gz
│       ├── 82_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_82/82_TGGAGAC_L002_R1_001.fastq.gz
│       ├── 82_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_82/82_TGGAGAC_L002_R2_001.fastq.gz
│       ├── 83_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_83/83_TGTCCGA_L002_R1_001.fastq.gz
│       ├── 83_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_83/83_TGTCCGA_L002_R2_001.fastq.gz
│       ├── 84_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_84/84_AACTCCT_L002_R1_001.fastq.gz
│       ├── 84_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_84/84_AACTCCT_L002_R2_001.fastq.gz
│       ├── 85_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_85/85_GTAACGA_L002_R1_001.fastq.gz
│       ├── 85_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_85/85_GTAACGA_L002_R2_001.fastq.gz
│       ├── 86_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_86/86_GTACGAC_L002_R1_001.fastq.gz
│       ├── 86_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_86/86_GTACGAC_L002_R2_001.fastq.gz
│       ├── 87_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_87/87_CCTAAGG_L002_R1_001.fastq.gz
│       ├── 87_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_87/87_CCTAAGG_L002_R2_001.fastq.gz
│       ├── 88_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_88/88_TCCGTTG_L002_R1_001.fastq.gz
│       ├── 88_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_88/88_TCCGTTG_L002_R2_001.fastq.gz
│       ├── 89_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_89/89_GGTGGTT_L002_R1_001.fastq.gz
│       ├── 89_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_89/89_GGTGGTT_L002_R2_001.fastq.gz
│       ├── 8_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_8/8_TTCGACG_L001_R1_001.fastq.gz
│       ├── 8_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_8/8_TTCGACG_L001_R2_001.fastq.gz
│       ├── 90_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_90/90_AAGTAGC_L002_R1_001.fastq.gz
│       ├── 90_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_90/90_AAGTAGC_L002_R2_001.fastq.gz
│       ├── 91_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_91/91_TCAGACA_L002_R1_001.fastq.gz
│       ├── 91_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_91/91_TCAGACA_L002_R2_001.fastq.gz
│       ├── 92_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_92/92_ACGATAC_L002_R1_001.fastq.gz
│       ├── 92_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex2/Sample_92/92_ACGATAC_L002_R2_001.fastq.gz
│       ├── 93_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_93/93_CACTTGA_L003_R1_001.fastq.gz
│       ├── 93_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_93/93_CACTTGA_L003_R2_001.fastq.gz
│       ├── 94_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_94/94_CCGGAAT_L003_R1_001.fastq.gz
│       ├── 94_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_94/94_CCGGAAT_L003_R2_001.fastq.gz
│       ├── 95_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_95/95_TAGACCG_L003_R1_001.fastq.gz
│       ├── 95_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_95/95_TAGACCG_L003_R2_001.fastq.gz
│       ├── 96_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_96/96_GTATCTC_L003_R1_001.fastq.gz
│       ├── 96_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_96/96_GTATCTC_L003_R2_001.fastq.gz
│       ├── 97_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_97/97_GCTATAG_L003_R1_001.fastq.gz
│       ├── 97_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_97/97_GCTATAG_L003_R2_001.fastq.gz
│       ├── 98_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_98/98_TTCCGTC_L003_R1_001.fastq.gz
│       ├── 98_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_98/98_TTCCGTC_L003_R2_001.fastq.gz
│       ├── 99_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_99/99_AGAGTGC_L003_R1_001.fastq.gz
│       ├── 99_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex3/Sample_99/99_AGAGTGC_L003_R2_001.fastq.gz
│       ├── 9_R1.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_9/9_ACCAGCA_L001_R1_001.fastq.gz
│       └── 9_R2.fq.gz -> /data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/Project_plex1/Sample_9/9_ACCAGCA_L001_R2_001.fastq.gz
└── week6

8 directories, 828 files
```

#### Week 7

I indexed the genome with the following algorithms:

* bwa-mem
* samtools
* picard
* hisat2

###### DNAseq

I aligned the DNAseq data to the genome with:

* bwa
* picard

They were placed in a directory named `bam`. Each file was also sorted and indexed. For example, for the `ADL06_1` sample, I had the following ouputs:

* `ADL06_1.bam`
* `ADL06_1.RG.bam`
* `ADL06_1.RG.bam.bai`
* `ADL06_1.sort.bam`

##### ATACseq

The ATACseq data was also aligned to the genome with `bwa` and `picard`. The bam files were placed in a directory `bam` separate from the raw data. Each bam file was also sorted and indexed. For example, for the `P004` sample:

* `P004.bam`
* `P004.RG.bam`
* `P004.RG.bam.bai`
* `P004.sort.bam`

##### RNAseq

I aligned a subset of the RNAseq data (samples 1-9, 93-102) with `hisat2`. The alignments were saved as `sam` files in a separate `bam` directory so I converted them to `bam` with `samtools`, sorted, and indexed, so each sample has the following outputs:

* `1.sam`
* `1.bam`
* `1.sorted.bam`
* `1.sorted.bam.bai`

#### Week 8

##### DNAseq

I ran the scripts to merge the lanes within the samples, merge the vcfs into a single vcf, and called snps using gatk. Scripts can be found [here](https://github.com/swd12012/AdvancedInformaticsPracticeAnalyses/tree/main/scripts).
The scripts were mostly unchanged from the provided examples, except for some different directory structure linking.

##### RNAseq

I installed DESeq2 via both R and conda and then counted reads with `featureCounts`.
It reported that only about 4-5% of reads were aligned, though we discussed in the Discord why that was.

#### Week 9

##### ATACseq

I ran a script to take a sorted, indexed bam and run it through the pipeline to look at "genome coverage" for all of my ATACseq files. For each file, the output was a set of files, eg:

* P051.bam
* P051.bw
* P051.coverage
* P051.maj
* P051.sort.bam
* P051.sort.bam.bai
* P051.sort.coverage

I uploaded P060.bw onto [cyverse](https://data.cyverse.org/dav-anon/iplant/home/swd12012/P060.bw) and uploaded it to UCSC Genome Browser on a [custom track](https://data.cyverse.org/dav-anon/iplant/home/swd12012/P060.bw). 

##### RNAseq

I passed the fly counts files through the DESeq2 analysis pipeline and created the following [plots](https://github.com/swd12012/AdvancedInformaticsPracticeAnalyses/tree/main/plots), using Dr. Long's [code](https://github.com/swd12012/AdvancedInformaticsPracticeAnalyses/blob/main/scripts/DESeq2.R) pretty much exactly:

* MA plot - log fold change over mean of normalized counts
* dispest - dispersion estimate over mean of normalized counts
* frequency estimate - histogram of frequency versus p value and expression
* PCA - principal component analysis by group (e.g. by tissue)
* heatmap - heatmap of top differentially expressed genes by group (e.g. tissue)