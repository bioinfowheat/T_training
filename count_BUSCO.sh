# assess run
python3 /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/count_buscos.py -i busco_run_local

# error correct python script via
https://github.com/jamiemcg/BUSCO_phylogenomics/issues/12

python3 /mnt/griffin/chrwhe/software/BUSCO_phylogenomics/count_buscos_v2.py -i busco_run_local > count_busco_out

head count_busco_out
27-01-2025 19:57:23     Looking for BUSCO runs in /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local
27-01-2025 19:57:23     Found 48 BUSCO directories:
/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local/BUSCO_Agonopterix_arenella.faa/run_lepidoptera_odb10
/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local/BUSCO_Acronicta_aceris.faa/run_lepidoptera_odb10
/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local/BUSCO_Agrotis_ipsilon.faa/run_lepidoptera_odb10
/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local/BUSCO_Amphipyra_tragopoginis.faa/run_lepidoptera_odb10


# various output follows.


27-01-2025 19:57:23     Counting BUSCO sequences:
Name    Complete and single-copy BUSCOs
BUSCO_Agonopterix_arenella.faa 4580
BUSCO_Acronicta_aceris.faa 4528
BUSCO_Agrotis_ipsilon.faa 3641
BUSCO_Amphipyra_tragopoginis.faa 3894
BUSCO_Antheraea_mylitta.faa 4208
BUSCO_Aporophyla_lueneburgensis.faa 3882
BUSCO_Apotomis_betuletana.faa 4372
BUSCO_Arctia_plantaginis.faa 3852
BUSCO_Athrips_mouffetella.faa 4368
BUSCO_Autographa_gamma.faa 4053
BUSCO_Bombyx_mandarina.faa 3716
BUSCO_Bombyx_mori.faa 4131
BUSCO_Chilo_suppressalis.faa 4001
BUSCO_Colias_croceus.faa 4095
BUSCO_Cosmia_trapezina.faa 4460
BUSCO_Danaus_plexippus.faa 4120
BUSCO_Eilema_depressum.faa 3837
BUSCO_Ennomos_fuscantarius.faa 3917
BUSCO_Eulithis_prunata.faa 4681
BUSCO_Galleria_mellonella.faa 4067
BUSCO_Helicoverpa_zea.faa 4100
BUSCO_Hyles_vespertilio.faa 4227
BUSCO_Lasiommata_megera.faa 4382
BUSCO_Lymantria_dispar.faa 3865
BUSCO_Melitaea_cinxia.faa 4129
BUSCO_Mythimna_separata.faa 3959
BUSCO_Notodonta_ziczac.faa 3882
BUSCO_Operophtera_brumata.faa 3730
BUSCO_Ostrinia_furnacalis.faa 3740
BUSCO_Plodia_interpunctella.faa 4103
BUSCO_Plutella_xylostella.faa 3996
BUSCO_Spodoptera_exigua.faa 4136
BUSCO_Spodoptera_frugiperda.faa 4075
BUSCO_Spodoptera_litura.faa 4000
BUSCO_Synanthedon_andrenaeformis.faa 3996
BUSCO_Thymelicus_sylvestris.faa 3983
BUSCO_Trichoplusia_ni.faa 3833
BUSCO_Vanessa_cardui.faa 4259
BUSCO_Ypsolopha_scabrella.faa 4374
BUSCO_Zerene_cesonia.faa 3819
BUSCO_GCF_905147045.1_ilAglIoxx1.1_protein.faa 3629
BUSCO_GCF_905404315.1_ilLepSina1.1_protein.faa 3521
BUSCO_GCA_907164705.1_Parnassius_apollo_protein.faa 4534
BUSCO_GCF_905475465.1_ilPieNapi1.2_protein.faa 3457
BUSCO_GCF_912999745.1_ilPapMach1.1_protein.faa 4137
BUSCO_GCF_947172395.1_ilBicAnyn1.1_protein.faa 3781
BUSCO_GCF_963556715.1_ilCydFagi1.1_protein.faa 4205
BUSCO_GCF_963855985.1_ilOstNubi1.1_protein.faa 4116
