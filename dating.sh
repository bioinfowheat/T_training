#
https://github.com/blackrim/treePL

Constraint checking (R) code, along with example data, is available here:
https://github.com/blackrim/treePL/tree/master/constraint_checker

# example constraint file
constraint_table.csv
Constraint.name,mrca_L,mrca_R,Min,Max,info
Root,taxon_1,taxon_39,70.1,86.5,
CladeA_crown,taxon_1,taxon_14,26.1,31.3,younger than descendant node FossilW
FossilW,taxon_5,taxon_14,34.7,52.3,older than ancestral node CladeA_crown
CladeB_crown,taxon_15,taxon_25,43.7,57.6,
CladeC_stem,taxon_15,taxon_39,49.4,56.2,
CladeC_crown,taxon_26,taxon_39,38.9,43.7,
FossilX,taxon_26,taxon_38,27.9,34.6,younger than descendant node FossilY
FossilY,taxon_26,taxon_35,35.1,37.2,older than ancestral node FossilX
FossilZ,taxon_26,taxon_34,27.3,29.2,dates same node as FossilQ but is younger
FossilQ,taxon_27,taxon_33,31.9,34.6,dates same node as FossilZ but is older

#which is
fossils;
   Constraint.name   mrca_L   mrca_R  Min  Max                                      info
1             Root  taxon_1 taxon_39 70.1 86.5                                      <NA>
2     CladeA_crown  taxon_1 taxon_14 26.1 31.3      younger than descendant node FossilW
3          FossilW  taxon_5 taxon_14 34.7 52.3    older than ancestral node CladeA_crown
4     CladeB_crown taxon_15 taxon_25 43.7 57.6                                      <NA>
5      CladeC_stem taxon_15 taxon_39 49.4 56.2                                      <NA>
6     CladeC_crown taxon_26 taxon_39 38.9 43.7                                      <NA>
7          FossilX taxon_26 taxon_38 27.9 34.6      younger than descendant node FossilY
8          FossilY taxon_26 taxon_35 35.1 37.2         older than ancestral node FossilX
9          FossilZ taxon_26 taxon_34 27.3 29.2 dates same node as FossilQ but is younger
10         FossilQ taxon_27 taxon_33 31.9 34.6   dates same node as FossilZ but is older


# Quick run overview
https://github.com/blackrim/treePL/wiki/Quick-run
