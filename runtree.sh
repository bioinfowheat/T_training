#########
RAXML
https://cme.h-its.org/exelixis/resource/download/NewManual.pdf

# raxmlHPC -p 12345 -m PROTGAMMAAUTO -s protein.phy -n output_name
# The example below will execute a simple search under the GAMMA model of rate
# heterogeneity on a protein dataset using the substitution matrix and the base frequencies
# that come with the WAG model.

raxmlHPC -p 12345 -m PROTGAMMAWAG -s concat_out_3147.renamed.fasta -T 40 -n concat_out_3147.PROTGAMMAWAG.raxml
# really does use these 40 cores ... wow.

# All free model parameters will be estimated by RAxML
# GAMMA model of rate heterogeneity, ML estimate of alpha-parameter
#
# GAMMA Model parameters will be estimated up to an accuracy of 0.1000000000 Log Likelihood units
#
# Partition: 0
# Alignment Patterns: 1105655
# Name: No Name Provided
# DataType: AA
# Substitution Matrix: WAG
# Using fixed base frequencies
#
# RAxML was called as follows:
#
# /usr/bin/raxmlHPC-PTHREADS-AVX -p 12345 -m PROTGAMMAWAG -s concat_out_3147.renamed.fasta -T 40 -n concat_out_3147.PROTGAMMAWAG.raxml
killed






#########
# IQtree # outgroup Plutella_xylostella
# -t RANDOM -bb 1000 -alrt 1000 -bnni -nt AUTO
cd /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/phylogenetic_analysis
ln -s /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/concat_out_3147.renamed.fasta .
# -m MFP               Extended model selection followed by tree inference
# -o TAX[,...,TAX]     Outgroup taxon (list) for writing .treefile
#
/data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_3147.renamed.fasta -m MFP -t RANDOM -T AUTO
Alignment most likely contains protein sequences
Alignment has 48 sequences with 1623635 columns, 1105655 distinct patterns
771544 parsimony-informative, 263059 singleton sites, 589032 constant sites
         Gap/Ambiguity  Composition  p-value
   1  Acr_ace   15.01%    failed      0.00%
   2  Ago_are   16.31%    failed      0.00%
   3  Agr_ips   22.88%    failed      0.00%
   4  Amp_tra   17.40%    failed      0.00%
   5  Ant_myl   24.22%    failed      0.00%
   6  Apo_lue   16.99%    failed      0.00%
   7  Apo_bet   20.94%    failed      0.00%
   8  Arc_pla   19.17%    failed      0.00%
   9  Ath_mou   21.68%    failed      0.00%
  10  Aut_gam   16.14%    failed      0.00%
  11  Bom_man   25.51%    failed      0.00%
  12  Bom_mor   17.11%    failed      0.00%
  13  Chi_sup   18.90%    failed      0.00%
  14  Col_cro   16.85%    failed      0.00%
  15  Cos_tra   18.13%    failed      0.00%
  16  Dan_ple   23.19%    failed      0.00%
  17  Eil_dep   18.40%    failed      0.00%
  18  Enn_fus   18.60%    failed      0.00%
  19  Eul_pru   15.37%    failed      0.00%
  20  Par_apo   16.14%    failed      0.00%
  21  Agl_io    24.99%    failed      0.00%
  22  Lep_sin   28.45%    failed      0.00%
  23  Pie_nap   27.45%    failed      0.00%
  24  Pap_mac   19.23%    failed      0.00%
  25  Bic_any   23.17%    failed      0.00%
  26  Cyd_fag   18.52%    failed      0.00%
  27  Ost_nub   20.74%    failed      0.00%
  28  Gal_mel   17.57%    failed      0.00%
  29  Hel_zea   14.96%    failed      0.00%
  30  Hyl_ves   25.89%    failed      0.00%
  31  Las_meg   15.02%    failed      0.00%
  32  Lym_dis   19.58%    failed      0.00%
  33  Mel_cin   17.71%    failed      0.00%
  34  Myt_sep   17.38%    failed      0.00%
  35  Not_zic   19.56%    failed      0.00%
  36  Ope_bru   24.41%    failed      0.00%
  37  Ost_fur   25.74%    failed      0.00%
  38  Plo_int   15.88%    failed      0.00%
  39  Plu_xyl   21.39%    failed      0.00%
  40  Spo_exi   12.73%    failed      0.00%
  41  Spo_fru   14.67%    failed      0.00%
  42  Spo_lit   16.03%    failed      0.00%
  43  Syn_and   18.08%    failed      0.00%
  44  Thy_syl   17.57%    failed      0.00%
  45  Tri_ni_   19.24%    failed      0.00%
  46  Van_car   13.73%    failed      0.00%
  47  Yps_sca   23.12%    failed      0.00%
  48  Zer_ces   23.10%    failed      0.00%
****  TOTAL     19.48%  48 sequences failed composition chi2 test (p-value<5%; df=19)
NOTE: minimal branch length is reduced to 0.000000061590 for long alignment

Create initial parsimony tree by phylogenetic likelihood library (PLL)... 57.526 seconds
Measuring multi-threading efficiency up to 64 CPU cores
2 trees examined
Threads: 1 / Time: 677.502 sec / Speedup: 1.000 / Efficiency: 100% / LogL: -48708778
Threads: 2 / Time: 393.806 sec / Speedup: 1.720 / Efficiency: 86% / LogL: -48708778
Threads: 3 / Time: 257.132 sec / Speedup: 2.635 / Efficiency: 88% / LogL: -48708778
Threads: 4 / Time: 178.175 sec / Speedup: 3.802 / Efficiency: 95% / LogL: -48708778
Threads: 5 / Time: 164.400 sec / Speedup: 4.121 / Efficiency: 82% / LogL: -48708778
Threads: 6 / Time: 124.534 sec / Speedup: 5.440 / Efficiency: 91% / LogL: -48708778
Threads: 7 / Time: 105.460 sec / Speedup: 6.424 / Efficiency: 92% / LogL: -48708778
Threads: 8 / Time: 90.652 sec / Speedup: 7.474 / Efficiency: 93% / LogL: -48708778
Threads: 9 / Time: 110.590 sec / Speedup: 6.126 / Efficiency: 68% / LogL: -48708778
BEST NUMBER OF THREADS: 8

Perform fast likelihood tree search using LG+I+G model...
Estimate model parameters (epsilon = 5.000)
Perform nearest neighbor interchange...
Estimate model parameters (epsilon = 1.000)
1. Initial log-likelihood: -40136951.752
2. Current log-likelihood: -40136948.358
Optimal log-likelihood: -40136948.040
Proportion of invariable sites: 0.270
Gamma shape alpha: 0.747
Parameters optimization took 2 rounds (240.484 sec)
Time for fast ML tree search: 2568.318 seconds

NOTE: ModelFinder requires 81994 MB RAM!
ModelFinder will test up to 546 protein models (sample size: 1623635) ...
 No. Model         -LnL         df  AIC          AICc         BIC
  1  LG            44696513.283 93  89393212.565 89393212.576 89394356.482
  2  LG+I          42298614.026 94  84597416.051 84597416.062 84598572.268
...
killed

####
/data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_3147.renamed.fasta -m MFP -mset LG,WAG,JTT -cmax 4 -t RANDOM -T 10 --prefix iQ.mset3
killed

####
FastTree
https://morgannprice.github.io/fasttree/#Usage

export PATH=$PATH:/mnt/griffin/chrwhe/software/
FastTree concat_out_3147.renamed.fasta > FT.concat_out_3147.tre
# FastTree Version 2.1.11 SSE3
# Alignment: concat_out_3147.renamed.fasta
# Amino acid distances: BLOSUM45 Joins: balanced Support: SH-like 1000
# Search: Normal +NNI +SPR (2 rounds range 10) +ML-NNI opt-each=1
# TopHits: 1.00*sqrtN close=default refresh=0.80
# ML Model: Jones-Taylor-Thorton, CAT approximation with 20 rate categories

ML-NNI round 3: LogLk = -38917304.749 NNIs 0 max delta 0.00 Time 12348.57 (final)
Optimize all lengths: LogLk = -38917209.675 Time 13255.31
Total time: 17186.98 seconds Unique: 48/48 Bad splits: 0/45

#######
# small set
ln -s /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/concat_out_279.renamed.fasta .
export PATH=$PATH:/mnt/griffin/chrwhe/software/
FastTree concat_out_279.renamed.fasta > FT.concat_out_279.tre

ML-NNI round 3: LogLk = -2444986.438 NNIs 0 max delta 0.00 Time 1260.29 (final)
Optimize all lengths: LogLk = -2444986.297 Time 1376.25
Total time: 1702.65 seconds Unique: 48/48 Bad splits: 0/45


# iQtree
/data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_279.renamed.fasta -m MFP -mset LG,WAG,JTT -cmax 4 -t RANDOM -T 10 --prefix iQ.mset3.concat_out_279

--------------------------------------------------------------------
|                    FINALIZING TREE SEARCH                        |
--------------------------------------------------------------------
Performs final model parameters optimization
Estimate model parameters (epsilon = 0.010)
1. Initial log-likelihood: -2491084.216
Optimal log-likelihood: -2491084.216
Site proportion and rates:  (0.596,0.055) (0.221,0.957) (0.141,3.166) (0.042,7.452)
Parameters optimization took 1 rounds (8.011 sec)
BEST SCORE FOUND : -2491084.216
Total tree length: 3.285

Total number of iterations: 102
CPU time used for tree search: 119875.566 sec (33h:17m:55s)
Wall-clock time used for tree search: 12083.803 sec (3h:21m:23s)
Total CPU time used: 120177.478 sec (33h:22m:57s)
Total wall-clock time used: 12114.377 sec (3h:21m:54s)

Analysis results written to:
  IQ-TREE report:                iQ.mset3.concat_out_279.iqtree
  Maximum-likelihood tree:       iQ.mset3.concat_out_279.treefile
  Screen log file:               iQ.mset3.concat_out_279.log

Date and Time: Tue Jan 28 22:49:21 2025

# RAXML
raxmlHPC -p 12345 -m PROTGAMMAWAG -s concat_out_279.renamed.fasta -T 40 -n concat_out_279.PROTGAMMAWAG.raxml

Final GAMMA-based Score of best tree -2530097.603843

Program execution info written to /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/phylogenetic_analysis/RAxML_info.concat_out_279.PROTGAMMAWAG.raxml
Best-scoring ML tree written to: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/phylogenetic_analysis/RAxML_bestTree.concat_out_279.PROTGAMMAWAG.raxml

Overall execution time: 4350.909651 secs or 1.208586 hours or 0.050358 days

# zip
zip 4trees.zip *.tre *.iqtree *.treefile RAxML_bestTree.concat_out_279.PROTGAMMAWAG.raxml README.txt
scp chrwhe@duke.zoologi.su.se:/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/phylogenetic_analysis/4trees.zip .
