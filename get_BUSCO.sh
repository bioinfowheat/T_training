mamba activate busco_env # mamba deactivate when done
# test
busco -v

/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_files

cd /mnt/griffin/chrwhe/T_training_tree/Lepidopteras

mkdir busco_run_local

# setup run
busco -i /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_files/Acronicta_aceris.faa -l lepidoptera_odb10 -m prot -c 40 --out_path /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local
# running this once will download the local dataset that is needed. Run this once.
# Downloading file 'https://busco-data.ezlab.org/v5/data/lineages/lepidoptera_odb10.2024-01-08.tar.gz'
# 2024-10-09 14:40:17 INFO:       Decompressing file '/mnt/griffin/chrwhe/clock_genes/genomes_testing/busco_downloads/lineages/lepidoptera_odb10.tar.gz'

---------------------------------------------------
|Results from dataset lepidoptera_odb10            |
---------------------------------------------------
|C:97.3%[S:85.7%,D:11.6%],F:0.8%,M:1.9%,n:5286     |
|5139    Complete BUSCOs (C)                       |
|4528    Complete and single-copy BUSCOs (S)       |
|611    Complete and duplicated BUSCOs (D)         |
|44    Fragmented BUSCOs (F)                       |
|103    Missing BUSCOs (M)                         |
|5286    Total BUSCO groups searched               |
---------------------------------------------------
2025-01-27 17:23:25 INFO:       BUSCO analysis done. Total running time: 342 seconds
2025-01-27 17:23:25 INFO:       Results written in /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local/BUSCO_Acronicta_aceris.faa


# now run in // of all genomes and output into a new folder
# parallel -j 2 'busco -i {} -l lepidoptera_odb10 --out_path busco_runs -m prot -c 25' ::: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_files/*.faa
parallel -j 2 'busco -f -i {} -l lepidoptera_odb10 -m prot -c 25 --out_path /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local' ::: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_files/*.faa

# then wheat files
parallel -j 2 'busco -f -i {} -l lepidoptera_odb10 -m prot -c 25 --out_path /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/busco_run_local' ::: /mnt/griffin/chrwhe/T_training_tree/Lepidopteras/wheat_protein_files/*.faa
