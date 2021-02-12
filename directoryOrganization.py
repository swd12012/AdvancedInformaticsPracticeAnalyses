import os
import shutil
import sys
import re
import numpy as np
import pandas as pd

### For DNAseq files

path0 = '/data/class/ecoevo283/swdu/'

# Make directories if they do not exist
if not os.path.exists(path0+'DNAseq'):
    os.mkdir(path0+'DNAseq')
if not os.path.exists(path0+'DNAseq/raw'):
    os.mkdir(path0+'DNAseq/raw')

path1 = '/data/class/ecoevo283/public/RAWDATA/DNAseq/'
path2 = '/data/class/ecoevo283/swdu/DNAseq/raw/'

os.chdir(path1)

# Find all the .fq.gz files and write the output to DNAlist after splitting output into lines
DNAoutput = os.popen('find *.fq.gz').read()
DNAlist = DNAoutput.split()

# Symlink from class directory to personal directory
for i in DNAlist:
    os.system('ln -s ' + path1 + i + ' ' + path2 + i)

### For ATACseq files

# Make directories if they do not exist
if not os.path.exists(path0+'ATACseq'):
    os.mkdir(path0+'ATACseq')
if not os.path.exists(path0+'ATACseq/raw'):
    os.mkdir(path0+'ATACseq/raw')
    
os.chdir('/data/class/ecoevo283/public/RAWDATA/ATACseq')

# Find all the .fq.gz files and write the output to ATAClist after splitting output into lines
ATACoutput = os.popen('find *.fq.gz').read()
ATAClist = ATACoutput.split()
print(ATAClist)

# Remove most of the unnecessary file names to form sample names by string substitution
ATAC_sample_names = []
for k in ATAClist:
    ATAC_sample_names.append(re.sub('((.*)L1_)', '', k))

#print(ATAC_sample_names)

# Create a dictionary that links the path to the files with the new sample names
ATAC_dic = {ATAClist[i]: ATAC_sample_names[i] for i in range(len(ATAClist))}
#print(ATAC_dic)

path4 = '/data/class/ecoevo283/public/RAWDATA/ATACseq/'
path5 = path0+'ATACseq/raw/'

# Create symlinks using the dictionary created above (old path: new data path + new sample name)
for key in ATAC_dic:
    os.symlink(path4+key, path5+ATAC_dic[key])


### For RNAseq files

# Make directories if they do not exist
if not os.path.exists(path0+'RNAseq'):
    os.mkdir(path0+'RNAseq')
if not os.path.exists(path0+'RNAseq/raw'):
    os.mkdir(path0+'RNAseq/raw')

path3= '/data/class/ecoevo283/public/RAWDATA/RNAseq/RNAseq384plex_flowcell01/'

os.chdir(path3)

# Find all the .gz files and write the output to RNAlist after splitting output into lines
RNAoutput = os.popen('find "$PWD" -not -path "*Undetermined*" -type f -and -path *.gz').read()
RNAlist=RNAoutput.split()
#print(RNAlist)
#print(type(RNAlist))

# Remove everything from path except sample name and read direction
RNA_sample_names = []
for x in RNAlist:
    match = re.findall('(?:Sample_[0-9]{1,3}\/)(.*R[1-2])', x)
    #print(type(match))
    if match[0] not in RNA_sample_names:
        foo = re.sub("_.*_", "_", match[0])
        RNA_sample_names.append(foo)

#print(RNA_sample_names)

# Create a dictionary that links the path to the files with the new sample names
RNA_dic = {RNAlist[i]: RNA_sample_names[i] for i in range(len(RNAlist))}
#print(RNA_dic)

path6 = path0 +'RNAseq/raw/'

# Create symlinks using the dictionary created above (old path: new data path + new sample name + .fq.gz to rename file)
for key in RNA_dic:
    os.symlink(key, path6+RNA_dic[key]+'.fq.gz')
