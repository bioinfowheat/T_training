#########
# concatenate files smartly.
# concatenate fasta files
https://github.com/marekborowiec/AMAS/
git clone https://github.com/marekborowiec/AMAS.git


python3 /data/programs/AMAS/amas/AMAS.py

python3 /data/programs/AMAS/amas/AMAS.py summary -f fasta -d aa -i *fa -c 50 -o concensus_per_species.summary.txt

# assess
cut -f1-3,6,8,10 concensus_per_species.summary.txt | head | column -t
Alignment_name           No_of_taxa  Alignment_length  Missing_percent  Proportion_variable_sites  Proportion_parsimony_informative
10001at7088.aln.trim.fa  41          689               27.884           0.797                      0.63
10003at7088.aln.trim.fa  47          254               1.181            0.429                      0.295
10006at7088.aln.trim.fa  42          1085              69.368           0.853                      0.092
1000at7088.aln.trim.fa   43          1028              1.319            0.64                       0.5
10014at7088.aln.trim.fa  47          214               0.01             0.383                      0.294
10015at7088.aln.trim.fa  42          243               1.342            0.218                      0.074
10017at7088.aln.trim.fa  44          576               15.925           0.877                      0.743
10025at7088.aln.trim.fa  44          394               8.647            0.893                      0.721
10029at7088.aln.trim.fa  39          929               40.821           0.885                      0.573


# assess summary file
# length > 300, missing < 5%, and %variable > 0.05
cut -f1-3,6,8,10 concensus_per_species.summary.txt | \
awk 'BEGIN {FS=OFS="\t"} {if($3 > 300 && $4 < 5 && $5 > 0.05) print $0}' | wc -l # 1107

cut -f1-3,6,8,10 concensus_per_species.summary.txt | \
awk 'BEGIN {FS=OFS="\t"} {if($3 > 300 && $4 < 5 && $5 > 0.05) print $0}' | cut -f1 > 1107_geneIDs
head 1107_geneIDs
1000at7088.aln.trim.fa
1005at7088.aln.trim.fa
10066at7088.aln.trim.fa
cut -f1-3,6,8,10 concensus_per_species.summary.txt | \
awk 'BEGIN {FS=OFS="\t"} {if($3 > 300 && $4 < 1 && $5 > 0.05) print $0}' | wc -l # 279 genes

cut -f1-3,6,8,10 concensus_per_species.summary.txt | \
awk 'BEGIN {FS=OFS="\t"} {if($3 > 300 && $4 < 1 && $5 > 0.05) print $0}' | cut -f1 | tr "\n" " "

10066at7088.aln.trim.fa 10160at7088.aln.trim.fa 1021at7088.aln.trim.fa 10285at7088.aln.trim.fa 1094at7088.aln.trim.fa 1135at7088.aln.trim.fa 116at7088.aln.trim.fa 1179at7088.aln.trim.fa 1198at7088.aln.trim.fa 1200at7088.aln.trim.fa 1218at7088.aln.trim.fa 1223at7088.aln.trim.fa 1281at7088.aln.trim.fa 1369at7088.aln.trim.fa 1472at7088.aln.trim.fa 1506at7088.aln.trim.fa 1544at7088.aln.trim.fa 1567at7088.aln.trim.fa 1601at7088.aln.trim.fa 1660at7088.aln.trim.fa 1678at7088.aln.trim.fa 1865at7088.aln.trim.fa 1881at7088.aln.trim.fa 1927at7088.aln.trim.fa 1938at7088.aln.trim.fa 2051at7088.aln.trim.fa 2190at7088.aln.trim.fa 2194at7088.aln.trim.fa 2215at7088.aln.trim.fa 2279at7088.aln.trim.fa 235at7088.aln.trim.fa 2372at7088.aln.trim.fa 2384at7088.aln.trim.fa 2385at7088.aln.trim.fa 2459at7088.aln.trim.fa 2517at7088.aln.trim.fa 2666at7088.aln.trim.fa 2696at7088.aln.trim.fa 2813at7088.aln.trim.fa 2890at7088.aln.trim.fa 2917at7088.aln.trim.fa 2932at7088.aln.trim.fa 2939at7088.aln.trim.fa 3023at7088.aln.trim.fa 3025at7088.aln.trim.fa 3027at7088.aln.trim.fa 3071at7088.aln.trim.fa 3122at7088.aln.trim.fa 3126at7088.aln.trim.fa 3127at7088.aln.trim.fa 3135at7088.aln.trim.fa 3165at7088.aln.trim.fa 3175at7088.aln.trim.fa 3200at7088.aln.trim.fa 3204at7088.aln.trim.fa 3211at7088.aln.trim.fa 3219at7088.aln.trim.fa 3226at7088.aln.trim.fa 3259at7088.aln.trim.fa 326at7088.aln.trim.fa 3284at7088.aln.trim.fa 3290at7088.aln.trim.fa 3400at7088.aln.trim.fa 3404at7088.aln.trim.fa 3417at7088.aln.trim.fa 3447at7088.aln.trim.fa 3479at7088.aln.trim.fa 3493at7088.aln.trim.fa 3494at7088.aln.trim.fa 350at7088.aln.trim.fa 3598at7088.aln.trim.fa 3633at7088.aln.trim.fa 3656at7088.aln.trim.fa 3660at7088.aln.trim.fa 3671at7088.aln.trim.fa 3683at7088.aln.trim.fa 3760at7088.aln.trim.fa 3767at7088.aln.trim.fa 3795at7088.aln.trim.fa 3799at7088.aln.trim.fa 3821at7088.aln.trim.fa 3830at7088.aln.trim.fa 3853at7088.aln.trim.fa 3855at7088.aln.trim.fa 386at7088.aln.trim.fa 3874at7088.aln.trim.fa 3925at7088.aln.trim.fa 3929at7088.aln.trim.fa 3931at7088.aln.trim.fa 3964at7088.aln.trim.fa 3966at7088.aln.trim.fa 3989at7088.aln.trim.fa 4002at7088.aln.trim.fa 4010at7088.aln.trim.fa 4032at7088.aln.trim.fa 4052at7088.aln.trim.fa 4063at7088.aln.trim.fa 4092at7088.aln.trim.fa 4123at7088.aln.trim.fa 4173at7088.aln.trim.fa 4200at7088.aln.trim.fa 4212at7088.aln.trim.fa 4244at7088.aln.trim.fa 4301at7088.aln.trim.fa 4322at7088.aln.trim.fa 4335at7088.aln.trim.fa 4362at7088.aln.trim.fa 4392at7088.aln.trim.fa 4406at7088.aln.trim.fa 4418at7088.aln.trim.fa 4420at7088.aln.trim.fa 4455at7088.aln.trim.fa 4499at7088.aln.trim.fa 4557at7088.aln.trim.fa 455at7088.aln.trim.fa 456at7088.aln.trim.fa 4631at7088.aln.trim.fa 4677at7088.aln.trim.fa 4698at7088.aln.trim.fa 4719at7088.aln.trim.fa 4723at7088.aln.trim.fa 4726at7088.aln.trim.fa 4753at7088.aln.trim.fa 4811at7088.aln.trim.fa 4812at7088.aln.trim.fa 4820at7088.aln.trim.fa 4839at7088.aln.trim.fa 4851at7088.aln.trim.fa 4864at7088.aln.trim.fa 4899at7088.aln.trim.fa 4915at7088.aln.trim.fa 4932at7088.aln.trim.fa 4950at7088.aln.trim.fa 4959at7088.aln.trim.fa 499at7088.aln.trim.fa 5031at7088.aln.trim.fa 5040at7088.aln.trim.fa 5050at7088.aln.trim.fa 5057at7088.aln.trim.fa 5098at7088.aln.trim.fa 5099at7088.aln.trim.fa 5129at7088.aln.trim.fa 518at7088.aln.trim.fa 5193at7088.aln.trim.fa 5199at7088.aln.trim.fa 5244at7088.aln.trim.fa 526at7088.aln.trim.fa 5322at7088.aln.trim.fa 5355at7088.aln.trim.fa 5383at7088.aln.trim.fa 5406at7088.aln.trim.fa 5480at7088.aln.trim.fa 5507at7088.aln.trim.fa 5560at7088.aln.trim.fa 5587at7088.aln.trim.fa 5634at7088.aln.trim.fa 563at7088.aln.trim.fa 5672at7088.aln.trim.fa 5717at7088.aln.trim.fa 5761at7088.aln.trim.fa 5773at7088.aln.trim.fa 5792at7088.aln.trim.fa 5793at7088.aln.trim.fa 5969at7088.aln.trim.fa 6062at7088.aln.trim.fa 6110at7088.aln.trim.fa 6119at7088.aln.trim.fa 6156at7088.aln.trim.fa 616at7088.aln.trim.fa 6201at7088.aln.trim.fa 6261at7088.aln.trim.fa 6264at7088.aln.trim.fa 627at7088.aln.trim.fa 6330at7088.aln.trim.fa 6336at7088.aln.trim.fa 6347at7088.aln.trim.fa 6421at7088.aln.trim.fa 6433at7088.aln.trim.fa 6436at7088.aln.trim.fa 6450at7088.aln.trim.fa 6525at7088.aln.trim.fa 6582at7088.aln.trim.fa 6616at7088.aln.trim.fa 6622at7088.aln.trim.fa 6687at7088.aln.trim.fa 6707at7088.aln.trim.fa 6745at7088.aln.trim.fa 6753at7088.aln.trim.fa 6754at7088.aln.trim.fa 6769at7088.aln.trim.fa 6797at7088.aln.trim.fa 6798at7088.aln.trim.fa 6809at7088.aln.trim.fa 680at7088.aln.trim.fa 6835at7088.aln.trim.fa 6853at7088.aln.trim.fa 6871at7088.aln.trim.fa 6873at7088.aln.trim.fa 6919at7088.aln.trim.fa 6935at7088.aln.trim.fa 6937at7088.aln.trim.fa 695at7088.aln.trim.fa 6980at7088.aln.trim.fa 6985at7088.aln.trim.fa 7071at7088.aln.trim.fa 7122at7088.aln.trim.fa 7159at7088.aln.trim.fa 7172at7088.aln.trim.fa 7181at7088.aln.trim.fa 7182at7088.aln.trim.fa 7184at7088.aln.trim.fa 7200at7088.aln.trim.fa 7219at7088.aln.trim.fa 7220at7088.aln.trim.fa 7223at7088.aln.trim.fa 7267at7088.aln.trim.fa 7277at7088.aln.trim.fa 7307at7088.aln.trim.fa 7326at7088.aln.trim.fa 7331at7088.aln.trim.fa 7356at7088.aln.trim.fa 7357at7088.aln.trim.fa 741at7088.aln.trim.fa 7429at7088.aln.trim.fa 7432at7088.aln.trim.fa 7494at7088.aln.trim.fa 7513at7088.aln.trim.fa 7573at7088.aln.trim.fa 7576at7088.aln.trim.fa 7597at7088.aln.trim.fa 7629at7088.aln.trim.fa 7659at7088.aln.trim.fa 7682at7088.aln.trim.fa 7737at7088.aln.trim.fa 7773at7088.aln.trim.fa 7777at7088.aln.trim.fa 7833at7088.aln.trim.fa 7853at7088.aln.trim.fa 7890at7088.aln.trim.fa 7901at7088.aln.trim.fa 790at7088.aln.trim.fa 7935at7088.aln.trim.fa 7956at7088.aln.trim.fa 7975at7088.aln.trim.fa 7986at7088.aln.trim.fa 8007at7088.aln.trim.fa 8008at7088.aln.trim.fa 8011at7088.aln.trim.fa 8065at7088.aln.trim.fa 8089at7088.aln.trim.fa 8100at7088.aln.trim.fa 8103at7088.aln.trim.fa 8111at7088.aln.trim.fa 8183at7088.aln.trim.fa 8204at7088.aln.trim.fa 8205at7088.aln.trim.fa 8356at7088.aln.trim.fa 8372at7088.aln.trim.fa 8377at7088.aln.trim.fa 8394at7088.aln.trim.fa 8440at7088.aln.trim.fa 8491at7088.aln.trim.fa 8709at7088.aln.trim.fa 8712at7088.aln.trim.fa 8777at7088.aln.trim.fa 8860at7088.aln.trim.fa 8908at7088.aln.trim.fa 890at7088.aln.trim.fa 8957at7088.aln.trim.fa 8971at7088.aln.trim.fa 9169at7088.aln.trim.fa 927at7088.aln.trim.fa 949at7088.aln.trim.fa 9518at7088.aln.trim.fa 9519at7088.aln.trim.fa 9662at7088.aln.trim.fa 9701at7088.aln.trim.fa 9962at7088.aln.trim.fa 9987at7088.aln.trim.fa

python3 /mnt/griffin/chrwhe/software/AMAS/amas/AMAS.py concat -f fasta -d aa -i 10066at7088.aln.trim.fa 10160at7088.aln.trim.fa 1021at7088.aln.trim.fa 10285at7088.aln.trim.fa 1094at7088.aln.trim.fa 1135at7088.aln.trim.fa 116at7088.aln.trim.fa 1179at7088.aln.trim.fa 1198at7088.aln.trim.fa 1200at7088.aln.trim.fa 1218at7088.aln.trim.fa 1223at7088.aln.trim.fa 1281at7088.aln.trim.fa 1369at7088.aln.trim.fa 1472at7088.aln.trim.fa 1506at7088.aln.trim.fa 1544at7088.aln.trim.fa 1567at7088.aln.trim.fa 1601at7088.aln.trim.fa 1660at7088.aln.trim.fa 1678at7088.aln.trim.fa 1865at7088.aln.trim.fa 1881at7088.aln.trim.fa 1927at7088.aln.trim.fa 1938at7088.aln.trim.fa 2051at7088.aln.trim.fa 2190at7088.aln.trim.fa 2194at7088.aln.trim.fa 2215at7088.aln.trim.fa 2279at7088.aln.trim.fa 235at7088.aln.trim.fa 2372at7088.aln.trim.fa 2384at7088.aln.trim.fa 2385at7088.aln.trim.fa 2459at7088.aln.trim.fa 2517at7088.aln.trim.fa 2666at7088.aln.trim.fa 2696at7088.aln.trim.fa 2813at7088.aln.trim.fa 2890at7088.aln.trim.fa 2917at7088.aln.trim.fa 2932at7088.aln.trim.fa 2939at7088.aln.trim.fa 3023at7088.aln.trim.fa 3025at7088.aln.trim.fa 3027at7088.aln.trim.fa 3071at7088.aln.trim.fa 3122at7088.aln.trim.fa 3126at7088.aln.trim.fa 3127at7088.aln.trim.fa 3135at7088.aln.trim.fa 3165at7088.aln.trim.fa 3175at7088.aln.trim.fa 3200at7088.aln.trim.fa 3204at7088.aln.trim.fa 3211at7088.aln.trim.fa 3219at7088.aln.trim.fa 3226at7088.aln.trim.fa 3259at7088.aln.trim.fa 326at7088.aln.trim.fa 3284at7088.aln.trim.fa 3290at7088.aln.trim.fa 3400at7088.aln.trim.fa 3404at7088.aln.trim.fa 3417at7088.aln.trim.fa 3447at7088.aln.trim.fa 3479at7088.aln.trim.fa 3493at7088.aln.trim.fa 3494at7088.aln.trim.fa 350at7088.aln.trim.fa 3598at7088.aln.trim.fa 3633at7088.aln.trim.fa 3656at7088.aln.trim.fa 3660at7088.aln.trim.fa 3671at7088.aln.trim.fa 3683at7088.aln.trim.fa 3760at7088.aln.trim.fa 3767at7088.aln.trim.fa 3795at7088.aln.trim.fa 3799at7088.aln.trim.fa 3821at7088.aln.trim.fa 3830at7088.aln.trim.fa 3853at7088.aln.trim.fa 3855at7088.aln.trim.fa 386at7088.aln.trim.fa 3874at7088.aln.trim.fa 3925at7088.aln.trim.fa 3929at7088.aln.trim.fa 3931at7088.aln.trim.fa 3964at7088.aln.trim.fa 3966at7088.aln.trim.fa 3989at7088.aln.trim.fa 4002at7088.aln.trim.fa 4010at7088.aln.trim.fa 4032at7088.aln.trim.fa 4052at7088.aln.trim.fa 4063at7088.aln.trim.fa 4092at7088.aln.trim.fa 4123at7088.aln.trim.fa 4173at7088.aln.trim.fa 4200at7088.aln.trim.fa 4212at7088.aln.trim.fa 4244at7088.aln.trim.fa 4301at7088.aln.trim.fa 4322at7088.aln.trim.fa 4335at7088.aln.trim.fa 4362at7088.aln.trim.fa 4392at7088.aln.trim.fa 4406at7088.aln.trim.fa 4418at7088.aln.trim.fa 4420at7088.aln.trim.fa 4455at7088.aln.trim.fa 4499at7088.aln.trim.fa 4557at7088.aln.trim.fa 455at7088.aln.trim.fa 456at7088.aln.trim.fa 4631at7088.aln.trim.fa 4677at7088.aln.trim.fa 4698at7088.aln.trim.fa 4719at7088.aln.trim.fa 4723at7088.aln.trim.fa 4726at7088.aln.trim.fa 4753at7088.aln.trim.fa 4811at7088.aln.trim.fa 4812at7088.aln.trim.fa 4820at7088.aln.trim.fa 4839at7088.aln.trim.fa 4851at7088.aln.trim.fa 4864at7088.aln.trim.fa 4899at7088.aln.trim.fa 4915at7088.aln.trim.fa 4932at7088.aln.trim.fa 4950at7088.aln.trim.fa 4959at7088.aln.trim.fa 499at7088.aln.trim.fa 5031at7088.aln.trim.fa 5040at7088.aln.trim.fa 5050at7088.aln.trim.fa 5057at7088.aln.trim.fa 5098at7088.aln.trim.fa 5099at7088.aln.trim.fa 5129at7088.aln.trim.fa 518at7088.aln.trim.fa 5193at7088.aln.trim.fa 5199at7088.aln.trim.fa 5244at7088.aln.trim.fa 526at7088.aln.trim.fa 5322at7088.aln.trim.fa 5355at7088.aln.trim.fa 5383at7088.aln.trim.fa 5406at7088.aln.trim.fa 5480at7088.aln.trim.fa 5507at7088.aln.trim.fa 5560at7088.aln.trim.fa 5587at7088.aln.trim.fa 5634at7088.aln.trim.fa 563at7088.aln.trim.fa 5672at7088.aln.trim.fa 5717at7088.aln.trim.fa 5761at7088.aln.trim.fa 5773at7088.aln.trim.fa 5792at7088.aln.trim.fa 5793at7088.aln.trim.fa 5969at7088.aln.trim.fa 6062at7088.aln.trim.fa 6110at7088.aln.trim.fa 6119at7088.aln.trim.fa 6156at7088.aln.trim.fa 616at7088.aln.trim.fa 6201at7088.aln.trim.fa 6261at7088.aln.trim.fa 6264at7088.aln.trim.fa 627at7088.aln.trim.fa 6330at7088.aln.trim.fa 6336at7088.aln.trim.fa 6347at7088.aln.trim.fa 6421at7088.aln.trim.fa 6433at7088.aln.trim.fa 6436at7088.aln.trim.fa 6450at7088.aln.trim.fa 6525at7088.aln.trim.fa 6582at7088.aln.trim.fa 6616at7088.aln.trim.fa 6622at7088.aln.trim.fa 6687at7088.aln.trim.fa 6707at7088.aln.trim.fa 6745at7088.aln.trim.fa 6753at7088.aln.trim.fa 6754at7088.aln.trim.fa 6769at7088.aln.trim.fa 6797at7088.aln.trim.fa 6798at7088.aln.trim.fa 6809at7088.aln.trim.fa 680at7088.aln.trim.fa 6835at7088.aln.trim.fa 6853at7088.aln.trim.fa 6871at7088.aln.trim.fa 6873at7088.aln.trim.fa 6919at7088.aln.trim.fa 6935at7088.aln.trim.fa 6937at7088.aln.trim.fa 695at7088.aln.trim.fa 6980at7088.aln.trim.fa 6985at7088.aln.trim.fa 7071at7088.aln.trim.fa 7122at7088.aln.trim.fa 7159at7088.aln.trim.fa 7172at7088.aln.trim.fa 7181at7088.aln.trim.fa 7182at7088.aln.trim.fa 7184at7088.aln.trim.fa 7200at7088.aln.trim.fa 7219at7088.aln.trim.fa 7220at7088.aln.trim.fa 7223at7088.aln.trim.fa 7267at7088.aln.trim.fa 7277at7088.aln.trim.fa 7307at7088.aln.trim.fa 7326at7088.aln.trim.fa 7331at7088.aln.trim.fa 7356at7088.aln.trim.fa 7357at7088.aln.trim.fa 741at7088.aln.trim.fa 7429at7088.aln.trim.fa 7432at7088.aln.trim.fa 7494at7088.aln.trim.fa 7513at7088.aln.trim.fa 7573at7088.aln.trim.fa 7576at7088.aln.trim.fa 7597at7088.aln.trim.fa 7629at7088.aln.trim.fa 7659at7088.aln.trim.fa 7682at7088.aln.trim.fa 7737at7088.aln.trim.fa 7773at7088.aln.trim.fa 7777at7088.aln.trim.fa 7833at7088.aln.trim.fa 7853at7088.aln.trim.fa 7890at7088.aln.trim.fa 7901at7088.aln.trim.fa 790at7088.aln.trim.fa 7935at7088.aln.trim.fa 7956at7088.aln.trim.fa 7975at7088.aln.trim.fa 7986at7088.aln.trim.fa 8007at7088.aln.trim.fa 8008at7088.aln.trim.fa 8011at7088.aln.trim.fa 8065at7088.aln.trim.fa 8089at7088.aln.trim.fa 8100at7088.aln.trim.fa 8103at7088.aln.trim.fa 8111at7088.aln.trim.fa 8183at7088.aln.trim.fa 8204at7088.aln.trim.fa 8205at7088.aln.trim.fa 8356at7088.aln.trim.fa 8372at7088.aln.trim.fa 8377at7088.aln.trim.fa 8394at7088.aln.trim.fa 8440at7088.aln.trim.fa 8491at7088.aln.trim.fa 8709at7088.aln.trim.fa 8712at7088.aln.trim.fa 8777at7088.aln.trim.fa 8860at7088.aln.trim.fa 8908at7088.aln.trim.fa 890at7088.aln.trim.fa 8957at7088.aln.trim.fa 8971at7088.aln.trim.fa 9169at7088.aln.trim.fa 927at7088.aln.trim.fa 949at7088.aln.trim.fa 9518at7088.aln.trim.fa 9519at7088.aln.trim.fa 9662at7088.aln.trim.fa 9701at7088.aln.trim.fa 9962at7088.aln.trim.fa 9987at7088.aln.trim.fa -p 279.partition_file -c 5 -t concat_out_279.fasta -u fasta -y raxml


# # outgroups: Z_cesonia C_lesbia C_euxanthe
# cat gt300.lt2000.lt1per_miss.gt05variable.fasta_ids | parallel 'python3 /data/programs/AMAS/amas/AMAS.py remove -x Z_cesonia C_lesbia C_euxanthe -f fasta -d dna -i ../fastas/{} -g no_outgroup_fastas/'

# get list passing filter
# cut -f1-3,6,8,10 gt300.lt2000.lt1per_miss.gt05variable.summary.txt |\
# awk 'BEGIN {FS=OFS="\t"} {if($3 > 500 && $3 < 1000 && $4 < 0.1 && $6 > 0.07) print $0}' |\
# cut -f1 > gt500.lt1000.lt0.1per_miss.gt07parinform_fasta_ids

# concatenate
# conceatenate gene files
# usage: AMAS.py [-h] [-p CONCAT_PART] [-t CONCAT_OUT] [-u {fasta,phylip,nexus,phylip-int,nexus-int}] [-y {nexus,raxml,unspecified}] [-n {none,12,123}] [-e] [-c CORES] -i IN_FILES [IN_FILES ...]
#                -f {fasta,phylip,nexus,phylip-int,nexus-int} -d {aa,dna}
# AMAS.py: error: the following arguments are required: -i/--in-files, -f/--in-format, -d/--data-type

# -t concate output file
# -u outfile format
# -y partition file format
python3 /mnt/griffin/chrwhe/software/AMAS/amas/AMAS.py concat -f fasta -d aa -i *fa -p partition_file -c 50 -t concat_out_3147.fasta -u fasta -y raxml
scp chrwhe@duke.zoologi.su.se:/mnt/griffin/chrwhe/T_training_tree/Lepidopteras/protein_alignments_trimmed/concat_out_3147.fasta .

# looks great, need to modify names
grep '>' concat_out_3147.fasta | head
>BUSCO_Acronicta_aceris.faa
>BUSCO_Agonopterix_arenella.faa
>BUSCO_Agrotis_ipsilon.faa
>BUSCO_Amphipyra_tragopoginis.faa
>BUSCO_Antheraea_mylitta.faa
>BUSCO_Aporophyla_lueneburgensis.faa
>BUSCO_Apotomis_betuletana.faa
>BUSCO_Arctia_plantaginis.faa
>BUSCO_Athrips_mouffetella.faa
>BUSCO_Autographa_gamma.faa

grep '>' concat_out_3147.fasta | awk '{gsub(">","",$0); print;}' > original_fasta_headers
# reformat
rev original_fasta_headers | cut -f1,2 -d "_" | rev | awk -F '_' '{print substr($1,1,3),substr($2,1,3)}' | \
awk '{gsub(" ","_",$0); print;}' | awk '{gsub("apo_pro","Par_apo",$0); print;}' | awk '{gsub(/\./,"_");print;}' > new_headers

paste original_fasta_headers new_headers > original_new.tsv
nano original_new.tsv # to fix some of the DToL IDs
column -t original_new.tsv
#
BUSCO_Acronicta_aceris.faa                           Acr_ace
BUSCO_Agonopterix_arenella.faa                       Ago_are
BUSCO_Agrotis_ipsilon.faa                            Agr_ips
BUSCO_Amphipyra_tragopoginis.faa                     Amp_tra
BUSCO_Antheraea_mylitta.faa                          Ant_myl
BUSCO_Aporophyla_lueneburgensis.faa                  Apo_lue
BUSCO_Apotomis_betuletana.faa                        Apo_bet
BUSCO_Arctia_plantaginis.faa                         Arc_pla
BUSCO_Athrips_mouffetella.faa                        Ath_mou
BUSCO_Autographa_gamma.faa                           Aut_gam
BUSCO_Bombyx_mandarina.faa                           Bom_man
BUSCO_Bombyx_mori.faa                                Bom_mor
BUSCO_Chilo_suppressalis.faa                         Chi_sup
BUSCO_Colias_croceus.faa                             Col_cro
BUSCO_Cosmia_trapezina.faa                           Cos_tra
BUSCO_Danaus_plexippus.faa                           Dan_ple
BUSCO_Eilema_depressum.faa                           Eil_dep
BUSCO_Ennomos_fuscantarius.faa                       Enn_fus
BUSCO_Eulithis_prunata.faa                           Eul_pru
BUSCO_GCA_907164705.1_Parnassius_apollo_protein.faa  Par_apo
BUSCO_GCF_905147045.1_ilAglIoxx1.1_protein.faa       Agl_io
BUSCO_GCF_905404315.1_ilLepSina1.1_protein.faa       Lep_sin
BUSCO_GCF_905475465.1_ilPieNapi1.2_protein.faa       Pie_nap
BUSCO_GCF_912999745.1_ilPapMach1.1_protein.faa       Pap_mac
BUSCO_GCF_947172395.1_ilBicAnyn1.1_protein.faa       Bic_any
BUSCO_GCF_963556715.1_ilCydFagi1.1_protein.faa       Cyd_fag
BUSCO_GCF_963855985.1_ilOstNubi1.1_protein.faa       Ost_nub
BUSCO_Galleria_mellonella.faa                        Gal_mel
BUSCO_Helicoverpa_zea.faa                            Hel_zea
BUSCO_Hyles_vespertilio.faa                          Hyl_ves
BUSCO_Lasiommata_megera.faa                          Las_meg
BUSCO_Lymantria_dispar.faa                           Lym_dis
BUSCO_Melitaea_cinxia.faa                            Mel_cin
BUSCO_Mythimna_separata.faa                          Myt_sep
BUSCO_Notodonta_ziczac.faa                           Not_zic
BUSCO_Operophtera_brumata.faa                        Ope_bru
BUSCO_Ostrinia_furnacalis.faa                        Ost_fur
BUSCO_Plodia_interpunctella.faa                      Plo_int
BUSCO_Plutella_xylostella.faa                        Plu_xyl
BUSCO_Spodoptera_exigua.faa                          Spo_exi
BUSCO_Spodoptera_frugiperda.faa                      Spo_fru
BUSCO_Spodoptera_litura.faa                          Spo_lit
BUSCO_Synanthedon_andrenaeformis.faa                 Syn_and
BUSCO_Thymelicus_sylvestris.faa                      Thy_syl
BUSCO_Trichoplusia_ni.faa                            Tri_ni_
BUSCO_Vanessa_cardui.faa                             Van_car
BUSCO_Ypsolopha_scabrella.faa                        Yps_sca
BUSCO_Zerene_cesonia.faa                             Zer_ces


# rename in fasta file
to_edit=concat_out_3147.fasta
lookup_table=original_new.tsv

awk '
    # First read the lookup table file
    NR==FNR {
        map[$1]=$2
        next
    }
    # Then process the fasta file
    /^>/ {
        # If this header exists in our lookup table, replace it
        header = substr($0, 2)  # remove the ">" character
        if (header in map) {
            print ">" map[header]
            next
        }
    }
    # Print all other lines as they are
    {print}
' original_new.tsv concat_out_3147.fasta > concat_out_3147.renamed.fasta

grep '>' concat_out_3147.renamed.fasta
>Acr_ace
>Ago_are
>Agr_ips
>Amp_tra
>Ant_myl
>Apo_lue
>Apo_bet

python3 /data/programs/AMAS/amas/AMAS.py summary -f fasta -d aa -i concat_out_3147.renamed.fasta -c 50 -o concat_out_3147.renamed.summary.txt

# assess
cut -f1-3,6,8,10 concat_out_3147.renamed.summary.txt | head | column -t
Alignment_name                 No_of_taxa  Alignment_length  Missing_percent  Proportion_variable_sites  Proportion_parsimony_informative
concat_out_3147.renamed.fasta  47          1623635           19.306           0.634                      0.472

# smaller set
concat_out_279.fasta

awk '
    # First read the lookup table file
    NR==FNR {
        map[$1]=$2
        next
    }
    # Then process the fasta file
    /^>/ {
        # If this header exists in our lookup table, replace it
        header = substr($0, 2)  # remove the ">" character
        if (header in map) {
            print ">" map[header]
            next
        }
    }
    # Print all other lines as they are
    {print}
' original_new.tsv concat_out_279.fasta > concat_out_279.renamed.fasta


grep '>' concat_out_279.renamed.fasta
>Acr_ace
>Ago_are
>Agr_ips
>Amp_tra
>Ant_myl
>Apo_lue
>Apo_bet
>Arc_pla
>Ath_mou
>Aut_gam
>Bom_man
>Bom_mor
>Chi_sup
>Col_cro
>Cos_tra
>Dan_ple
>Eil_dep
>Enn_fus
>Eul_pru
>Par_apo
>Agl_io
>Lep_sin
>Pie_nap
>Pap_mac
>Bic_any
>Cyd_fag
>Ost_nub
>Gal_mel
>Hel_zea
>Hyl_ves
>Las_meg
>Lym_dis
>Mel_cin
>Myt_sep
>Not_zic
>Ope_bru
>Ost_fur
>Plo_int
>Plu_xyl
>Spo_exi
>Spo_fru
>Spo_lit
>Syn_and
>Thy_syl
>Tri_ni_
>Van_car
>Yps_sca
>Zer_ces

python3 /data/programs/AMAS/amas/AMAS.py summary -f fasta -d aa -i concat_out_279.renamed.fasta -c 5 -o concat_out_279.renamed.summary.txt

# assess
cut -f1-3,6,8,10 concat_out_279.renamed.summary.txt | head | column -t
Alignment_name                No_of_taxa  Alignment_length  Missing_percent  Proportion_variable_sites  Proportion_parsimony_informative
concat_out_279.renamed.fasta  48          148097            7.382            0.475                      0.355
