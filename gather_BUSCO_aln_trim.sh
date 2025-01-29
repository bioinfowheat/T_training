


# https://github.com/jamiemcg/BUSCO_phylogenomics
python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics.py --help

python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics.py -i busco_run_local -o aa_busco_phylogenomics -t 30 --supermatrix_only

nano /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics.py

if isdir(i):
    for j in listdir(i):
	   k = join(i, j)
	   if isdir(k) and "run_" in j:
		  busco_samples.append(k)
		  busco_sample_names.append(basename(i))

python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics_v2.py -i busco_run_local -o aa_busco_phylogenomics -t 30 --supermatrix_only

# dependencies
# muscle
https://github.com/rcedgar/muscle/releases/tag/v5.3
wget https://github.com/rcedgar/muscle/releases/download/v5.3/muscle-linux-x86.v5.3
chmod 777 muscle-linux-x86.v5.3

/mnt/griffin/chrwhe/software/muscle-linux-x86.v5.3

# trimAL
https://github.com/inab/trimal
git clone https://github.com/inab/trimal.git
cd trimal
cd source
make

/mnt/griffin/chrwhe/software/trimal/source/trimal


# fasttree
https://github.com/morgannprice/fasttree
wget https://morgannprice.github.io/fasttree/FastTreeDbl
scp FastTree chrwhe@duke.zoologi.su.se:/mnt/griffin/chrwhe/software/
chmod 777 FastTree

/mnt/griffin/chrwhe/software/FastTree

# export path
export PATH=$PATH:/mnt/griffin/chrwhe/software/
export PATH=$PATH:/mnt/griffin/chrwhe/software/trimal/source/


# This will look in the "BUSCO_results" directory for completed BUSCO runs, generate multiple sequence
#  alignments for all complete single-copy proteins that were found in all samples, trim alignments with
#  trimal and then concatenate them together, generating a concatenated alignment in Fasta and Phylip
#  format along with a partitions file in NEXUS format. It will also generate gene trees for all BUSCO
#  proteins that are complete and single-copy in at least 4 samples. The output will be stored in a
#  directory named "output_busco_phylogenomics". The pipeline is written to be executed on a single
#  node/machine, here 8 parallel alignment/trimming/phylogeny jobs would run.
#
# # If you don't want to generate gene trees, you can use the parameter --supermatrix-only to only
# generate the concatenated alignment.

# https://github.com/jamiemcg/BUSCO_phylogenomics

# -psc PSC, --percent_single_copy PSC
# 				  BUSCO presence cut-off. BUSCOs that are complete and
# 				  single-copy in at least [-psc] percent of species will
# 				  be included in the contatenated alignment
# 				  [default=100.0]
# --trimal_strategy TRIMAL_STRATEGY
# 				  trimal trimming strategy (automated1, gappyout,
# 				  strict, strictplus) [default=automated1]
# --missing_character MISSING_CHARACTER
# 				  Character to represent missing data [default='?']
# --gene_tree_program GENE_TREE_PROGRAM
# 				  Program to use to generate gene trees (fasttree or
# 				  iqtree) [default=fasttree]



python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics.py -i busco_run_local -o aa_busco_phylogenomics -t 30 --supermatrix_only

27-01-2025 20:06:08     Identifying BUSCOs that are complete and single-copy in all species
27-01-2025 20:06:08     Identified 127 BUSCO sequences that are complete and single-copy in all species:
10059at7088,10178at7088,10180at7088,10186at7088,10240at7088,10304at7088,10406at7088,10444at7088,10528at7088,10628at7088,10661at7088,11192at7088,11225at7088,11288at7088,11621at7088,11638at7088,11719at7088,11777at7088,11787at7088,11972at7088,12021at7088,12036at7088,12055at7088,12204at7088,12355at7088,12389at7088,12444at7088,12481at7088,12492at7088,12540at7088,12607at7088,12632at7088,12696at7088,1273at7088,12789at7088,12905at7088,13037at7088,13067at7088,13072at7088,13110at7088,13166at7088,13314at7088,13468at7088,13483at7088,13651at7088,13902at7088,14028at7088,14104at7088,14240at7088,14566at7088,14594at7088,14886at7088,15272at7088,15293at7088,15379at7088,16088at7088,16168at7088,1927at7088,1931at7088,2295at7088,2329at7088,2547at7088,2703at7088,2791at7088,2830at7088,2939at7088,3025at7088,3126at7088,3226at7088,3402at7088,3479at7088,3493at7088,3598at7088,3730at7088,4070at7088,4317at7088,4455at7088,4845at7088,4899at7088,4932at7088,5012at7088,5057at7088,5327at7088,5455at7088,5487at7088,5625at7088,5728at7088,5761at7088,5775at7088,5793at7088,5881at7088,6020at7088,6325at7088,6436at7088,6582at7088,6601at7088,6606at7088,6753at7088,6789at7088,6795at7088,6909at7088,6935at7088,6936at7088,7088at7088,7106at7088,7159at7088,7473at7088,7573at7088,787at7088,7911at7088,8148at7088,8372at7088,8536at7088,8564at7088,9006at7088,927at7088,9475at7088,9517at7088,9567at7088,9595at7088,9669at7088,9730at7088,9775at7088,9782at7088,9836at7088,9871at7088,9935at7088

27-01-2025 20:06:08     Writing protein sequences to /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa_busco_phylogenomics/supermatrix/sequences
27-01-2025 20:06:08     Aligning protein sequences using MUSCLE with 30 parallel jobs to: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa_busco_phylogenomics/supermatrix/alignments
27-01-2025 20:06:09     Trimming alignments using trimAL (-automated1) with 30 parallel jobs to: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa_busco_phylogenomics/supermatrix/trimmed_alignments
sh: 1: sh: 1: trimal: not foundtrimal: not found

python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics_v2.py -i busco_run_local -o aa80_busco_phylogenomics -t 30 --supermatrix_only -psc 80

27-01-2025 20:27:02     Identifying BUSCOs that are complete and single-copy in at least 80.0 percent of species
27-01-2025 20:27:02     Identified 3147 BUSCO sequences that are complete and single-copy in at least 80.0 percent of species:

27-01-2025 20:27:22     Writing concatenated supermatrix alignment to phylip format: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/SUPERMATRIX.phylip
Traceback (most recent call last):
  File "/mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics_v2.py", line 417, in <module>
    main()
  File "/mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics_v2.py", line 297, in main
    SeqIO.write(alignment_records, "SUPERMATRIX.phylip", "phylip-relaxed")
  File "/home/chrwhe/miniforge3/envs/busco_env/lib/python3.10/site-packages/Bio/SeqIO/__init__.py", line 556, in write
    alignment_count = AlignIO.write([alignment], handle, format)

#######

mamba create -n BUSCO_phylogenomics_2 -c bioconda busco_phylogenomics
mamba activate BUSCO_phylogenomics_2

BUSCO_phylogenomics.py --help

BUSCO_phylogenomics.py -i busco_run_local -o aa80_mamba_busco_phylogenomics -t 30 --supermatrix_only -psc 80

#
still crashes


####
# files
cd /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences
ls *.faa > faa_files
head faa_files
# 10001at7088.faa
# 10003at7088.faa
# 10006at7088.faa
# 1000at7088.faa

# normal command line version is
MUSCLE v3.8.1551 by Robert C. Edgar

# # aligmnet # MUSCLE (based on performance: Wang, Yingying, Hongyan Wu, and Yunpeng Cai. “A Benchmark Study of Sequence Alignment Methods for Protein Clustering.” BMC Bioinformatics 19, no. 19 (December 31, 2018): 529. https://doi.org/10.1186/s12859-018-2524-4.)
# export PATH=$PATH:/mnt/griffin/chrwhe/software/
# # muscle -align sequences.fasta -output alignment.fasta
#
# muscle 5.3.linux64 [-]  528Gb RAM, 64 cores
# Built Nov 11 2024 08:05:12


# test
muscle -in 14016at7088.faa -out test.fasta -maxiters 2

input	/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/
output	/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/
filelist	faa_files
#
cat /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/faa_files | parallel --dryrun 'muscle -in /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/{} -out /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/{.}.fasta -maxiters 2'

muscle -in /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/10188at7088.faa -out /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/10188at7088.fasta -maxiters 2
muscle -in /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/10189at7088.faa -out /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/10189at7088.fasta -maxiters 2

# run all
cat /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/faa_files | parallel 'muscle -in /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/aa80_busco_phylogenomics/supermatrix/sequences/{} -out /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/{.}.fasta -maxiters 2'

####
# clipkit for trimmimg
# https://github.com/JLSteenwyk/ClipKIT

# # download
# git clone https://github.com/JLSteenwyk/ClipKIT.git
# cd ClipKIT/
# # create virtual environment
# python3 -m venv venv
# # activate virtual environment
# source venv/bin/activate
# # install
# make install
# # deactivate virtual environment
# deactivate
mamba create -n clipkit_env -c bioconda bioconda::clipkit
mamba activate clipkit_env

cd /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments
ls *.fasta > aln_files
cd /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/
mkdir protein_alignments_trimmed
# Output file with the suffix “.clipkit”
cat /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/aln_files | parallel --dryrun 'clipkit /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/{} -o /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/{.}.aln.trim.fa -l'
# test, passed
clipkit /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/10259at7088.fasta -o /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/10259at7088.aln.trim.fa -l

# run
cat /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/aln_files | parallel 'clipkit /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments/{} -o /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/{.}.aln.trim.fa -l'
