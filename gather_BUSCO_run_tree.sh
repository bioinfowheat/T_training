
# assess run
python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/count_buscos.py -i BUSCO_runs



# https://github.com/jamiemcg/BUSCO_phylogenomics

python /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/BUSCO_phylogenomics.py -i busco_run_local --supermatrix-only -o output_busco_phylogenomics -t 30

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
