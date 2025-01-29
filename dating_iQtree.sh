http://www.iqtree.org/doc/Dating

# date file
taxon1,taxon2	      -50
taxon3,taxon4,taxon5  -100
taxon6                -10

# If you know the root date, then you can set it via --date-root option

# If you already have a tree, you can use option -te TREE_FILE to ask IQ-TREE to load and fix this tree topology:

iqtree -s ALN_FILE --date DATE_FILE -te TREE_FILE

 # If you know the model already, you set can it via -m option;
 # or in a partitioned analysis, you can provide a partition file with specified models.


 # iQtree original run
 /data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_279.renamed.fasta -m MFP -mset LG,WAG,JTT -cmax 4 -t RANDOM -T 10 --prefix iQ.mset3.concat_out_279

# I wasn to use the FastTree tree
FT.concat_out_3147.tre

# but I have also rooted this in FigTree, so bringing this back from Mac
scp FT.concat_out_3147.rooted.tre chrwhe@duke.zoologi.su.se:/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/dating


#
cd /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/dating
#using smaller dataset
ln -s /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/concat_out_279.renamed.fasta .

head FT.concat_out_3147.rooted.tre
(((Apo_bet:0.08340999999999998,Cyd_fag:0.07146000000000002):0.15193999999999996,(Syn_and:0.26215,((Ago_are:0.13680000000000003,Ath_mou:0.21051000000000003):0.04468,(((Par_apo:0.10578000000000001,Pap_mac:0.13552):0.09997000000000003,(Thy_syl:0.20211,((Lep_sin:0.20636,(Pie_nap:0.15578,(Col_cro:0.030399999999999983,Zer_ces:0.03294999999999998):0.07746):0.03989000000000001):0.07566,(Dan_ple:0.18723999999999996,((Bic_any:0.07820999999999997,Las_meg:0.07258):0.09422,(Mel_cin:0.09308999999999998,(Agl_io:0.03487000000000001,Van_car:0.028959999999999986):0.04793):0.058359999999999995):0.016100000000000003):0.04353000000000001):0.027859999999999996):0.02100000000000002):0.03899999999999998,(((Chi_sup:0.15379000000000004,(Ost_nub:0.004980000000000012,Ost_fur:0.004640000000000005):0.12407000000000001):0.054759999999999975,(Gal_mel:0.13694,Plo_int:0.17072000000000004):0.04194999999999999):0.025760000000000005,((Not_zic:0.13416999999999998,(((Aut_gam:0.034769999999999995,Tri_ni_:0.042919999999999986):0.06431,((Acr_ace:0.07029000000000002,Amp_tra:0.04793):0.008349999999999996,(((Apo_lue:0.03764000000000001,Cos_tra:0.030830000000000024):0.014130000000000004,(Myt_sep:0.04980999999999999,Agr_ips:0.050699999999999995):0.005670000000000008):0.028219999999999995,((Spo_exi:0.024380000000000013,(Spo_fru:0.018679999999999974,Spo_lit:0.01867000000000002):0.010560000000000014):0.06674,Hel_zea:0.06721000000000002):0.009360000000000007):0.0179):0.021960000000000007):0.03411000000000003,(Lym_dis:0.12903,(Arc_pla:0.07858000000000001,Eil_dep:0.07797000000000001):0.04236000000000001):0.04506000000000002):0.029039999999999955):0.04630000000000001,((Enn_fus:0.15215,(Eul_pru:0.08678999999999998,Ope_bru:0.08052999999999999):0.10202):0.06933,((Bom_man:0.005230000000000012,Bom_mor:0.0022900000000000142):0.20771000000000006,(Ant_myl:0.16857,Hyl_ves:0.15022000000000002):0.01905000000000001):0.03494999999999998):0.014239999999999975):0.029330000000000023):0.01543):0.012969999999999982):0.017910000000000037):0.01691999999999999):0.054115,(Plu_xyl:0.19384,Yps_sca:0.15520999999999996):0.05411499999999999);

# date_file
Plu_xyl,Van_car -140
Ost_fur,Mel_cin -110
Mel_cin,Pap_mac -100
Pie_nap,Col_cro -50
Spo_fru,Hel_zea -40
# crashes
# Error: There's conflict or not enough signal in the input temporal constraints.

# revised
Mel_cin,Pap_mac -100
Pie_nap,Col_cro -50
Spo_fru,Hel_zea -40


/data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_279.renamed.fasta -m WAG --date date_file -te FT.concat_out_3147.rooted.tre --date-tip 0
# finishes
- Dating results:
 rate 0.000948395, tMRCA -116.87

TOTAL ELAPSED TIME: 0.033 seconds
LSD results written to:
  LSD report:                  concat_out_279.renamed.fasta.timetree.lsd
  Time tree in nexus format:   concat_out_279.renamed.fasta.timetree.nex
  Time tree in newick format:  concat_out_279.renamed.fasta.timetree.nwk

--- End phylogenetic dating ---
Date and Time: Wed Jan 29 11:28:57 2025

# too young, caused by input tree not having proper root in analysis.

scp chrwhe@duke.zoologi.su.se:/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/dating/concat_out_279.renamed.fasta.timetree.nwk .


/data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_279.renamed.fasta -m WAG --date date_file -te FT.concat_out_3147.rooted.tre --date-tip 0 --prefix 3spC.tip0.rtPlu -o Plu_xyl
 rate 0.000892613, tMRCA -112.404

/data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_279.renamed.fasta -m WAG --date date_file -te FT.concat_out_3147.rooted.tre --date-tip 0 --date-root -140 -o Plu_xyl --prefix 3spC.tip0.rt140.rtPlu
 rate 0.000815216, tMRCA -140

 /data/programs/iqtree-2.0.6-Linux/bin/iqtree2 -s concat_out_279.renamed.fasta -m WAG --date date_file5 -te FT.concat_out_3147.rooted.tre --date-tip 0 --date-root -140 -o Plu_xyl,Yps_sca --prefix 5spC.tip0.rt140.rtPluYps
 rate 0.000829066, tMRCA -140

scp chrwhe@duke.zoologi.su.se:/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/dating/5spC.tip0.rt140.rtPluYps.timetree.nwk .
# not bad, needed to scale the branches by 1000 to get MY at nodes, looks pretty good.
