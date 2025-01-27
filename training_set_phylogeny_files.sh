I put the BRAKER annotations from Stepan Saenko on our web server:

https://bioinf.uni-greifswald.de/bioinf/braker/lepi/Lepidopteras_IDs.tsv
https://bioinf.uni-greifswald.de/bioinf/braker/lepi/Lepidopteras_without_genomes.tar.gz
https://bioinf.uni-greifswald.de/bioinf/braker/lepi/make.doc

# DUKE
cd /mnt/griffin/chrwhe/T_training_tree

more Lepidopteras_IDs.tsv
Lepidopteras    Accession_GenBank
Agrotis_ipsilon GCA_028554685.1
Plutella_xylostella     GCF_932276165.1
Colias_croceus  GCF_905220415.1
Ennomos_fuscantarius    GCA_905220475.3
Eulithis_prunata        GCA_918843925.1
Antheraea_mylitta       GCA_014332785.1
Melitaea_cinxia GCF_905220565.1
Plodia_interpunctella   GCF_027563975.1
Synanthedon_andrenaeformis      GCA_936446665.2
Cosmia_trapezina        GCA_905163495.3
Galleria_mellonella     GCF_026898425.1
Operophtera_brumata     GCA_932527175.1
Agonopterix_arenella    GCA_927399405.1
Arctia_plantaginis      GCA_902825455.1
Notodonta_ziczac        GCA_918843915.1
Vanessa_cardui  GCA_905220365.2
Mythimna_separata       GCA_029852925.1
Acronicta_aceris        GCA_910591435.1
Spodoptera_frugiperda   GCF_023101765.2
Autographa_gamma        GCA_905146925.1
Hyles_vespertilio       GCA_009982885.2
Chilo_suppressalis      GCA_902850365.2
Lymantria_dispar        GCA_016802235.1
Bombyx_mori     GCF_014905235.1
Amphipyra_tragopoginis  GCA_905220435.1
Zerene_cesonia  GCF_012273895.1
Eilema_depressum        GCA_914767945.1
Thymelicus_sylvestris   GCA_911387775.1
Lasiommata_megera       GCA_928268935.1
Ostrinia_furnacalis     GCF_004193835.2
Athrips_mouffetella     GCA_947532105.1
Apotomis_betuletana     GCA_932273695.1
Aporophyla_lueneburgensis       GCA_932294355.1
Ypsolopha_scabrella     GCA_910592155.1
Helicoverpa_zea GCF_022581195.2
Spodoptera_exigua       GCA_902829305.4
Danaus_plexippus        GCF_009731565.1
Trichoplusia_ni GCF_003590095.1
Bombyx_mandarina        GCF_003987935.1
Spodoptera_litura       GCF_002706865.2

tar -zxvf Lepidopteras_without_genomes.tar.gz
ls *.faa /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_files/ | head
Acronicta_aceris.faa
Agonopterix_arenella.faa
Agrotis_ipsilon.faa
Amphipyra_tragopoginis.faa
Antheraea_mylitta.faa
Aporophyla_lueneburgensis.faa
Apotomis_betuletana.faa
Arctia_plantaginis.faa
Athrips_mouffetella.faa
Autographa_gamma.faa


# also need my proteomes, where I have removed any species already in their dataset, even if different accessions
Bicyclus_anynana	GCF_947172395.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/947/172/395/GCF_947172395.1_ilBicAnyn1.1/GCF_947172395.1_ilBicAnyn1.1_protein.faa.gz
Cydia_fagiglandana	GCF_963556715.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/963/556/715/GCF_963556715.1_ilCydFagi1.1/GCF_963556715.1_ilCydFagi1.1_protein.faa.gz
Leptidea_sinapis	GCF_905404315.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/905/404/315/GCF_905404315.1_ilLepSina1.1/GCF_905404315.1_ilLepSina1.1_protein.faa.gz
Nymphalis_io	GCF_905147045.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/905/147/045/GCF_905147045.1_ilAglIoxx1.1/GCF_905147045.1_ilAglIoxx1.1_protein.faa.gz
Ostrinia_nubilalis	GCF_963855985.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/963/855/985/GCF_963855985.1_ilOstNubi1.1/GCF_963855985.1_ilOstNubi1.1_protein.faa.gz
Papilio_machaon	GCF_912999745.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/912/999/745/GCF_912999745.1_ilPapMach1.1/GCF_912999745.1_ilPapMach1.1_protein.faa.gz
Parnassius_apollo	GCA_907164705.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCA/907/164/705/GCA_907164705.1_Parnassius_apollo/GCA_907164705.1_Parnassius_apollo_protein.faa.gz
Pieris_napi	GCF_905475465.1	https://ftp.ncbi.nlm.nih.gov/genomes/all/GCF/905/475/465/GCF_905475465.1_ilPieNapi1.2/GCF_905475465.1_ilPieNapi1.2_protein.faa.gz

#
cut -f3 faa_2_get | parallel -j2 'wget {}'
gunzip *gz
