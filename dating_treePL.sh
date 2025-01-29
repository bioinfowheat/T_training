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


# installation
cd /mnt/griffin/chrwhe/software
git clone https://github.com/blackrim/treePL.git
cd treePL/src
The nlopt library is required for optimization. In the deps folder, you can unpack nlopt and run
cd treePL/deps
tar -zxvf nlopt-2.4.2.tar.gz
./configure
make
sudo make install
Libraries have been installed in:
   /usr/local/lib

# If you ever happen to want to link against installed libraries
# in a given directory, LIBDIR, you must either use libtool, and
# specify the full pathname of the library, or use the `-LLIBDIR'
# flag during linking and do at least one of the following:
#    - add LIBDIR to the `LD_LIBRARY_PATH' environment variable
#      during execution
#    - add LIBDIR to the `LD_RUN_PATH' environment variable
#      during linking
#    - use the `-Wl,-rpath -Wl,LIBDIR' linker flag
#    - have your system administrator add LIBDIR to `/etc/ld.so.conf'
#
# See any operating system documentation about shared libraries for
# more information, such as the ld(1) and ld.so(8) manual pages.

# adolc
cd treePL/deps
tar -xzf ADOL-C-2.6.3.tgz
cd ADOL-C-2.6.3/

# After unpacking, for Linux,
./configure --prefix=/usr/local --with-openmp-flag=-fopenmp
# -----------------------------------------------------------------------------
# Configuration:
#
#   C compiler:                         gcc
#   C++ compiler:                       g++
#   Linker:                             /usr/bin/ld -m elf_x86_64
#   Source code location:               /mnt/griffin/chrwhe/software/treePL/deps/ADOL-C-2.6.3
#   Install path:                       /usr/local
#
#   CFLAGS:                             -O2 -fopenmp
#   CXXFLAGS:                           -O2 -fopenmp
#
#   Use Boost pool allocator:           yes
#   Use ADOL-C debug mode:              no
#   Use ADOL-C hard debug mode:         no
#   Zero value in adouble default ctor: yes
#   Access thread number via errno:     no
#   Use ADOL-C safe extern mode:
#   Use ADOL-C late init mode:          no
#
#   Build sparse drivers:               no
#   Build with adjoinable MPI support:  no
#   Build with ColPack:                 no
#
#   Build documented examples:          no
#   Build additional examples:          no
#   tape_doc routine computes values:   yes
#
#   See ADOL-C/src/config.h for further configuration information.
# -----------------------------------------------------------------------------
#   Prefix /usr/local not writable
#   please run ./configure --prefix=DIR
#   with a writable directory path otherwise administrator privileges
#   will be required to run `make install'


# and then
make
# and
sudo make install
# the above didn't work after compiling treePL, so using this other version

cd treePL/deps
tar -xzf adol-c_git_saved.tar.gz

cd ../adol-c
autoreconf -fi
-----------------------------------------------------------------------------
Configuration:

  C compiler:                       /bin/bash /mnt/griffin/chrwhe/software/treePL/deps/adol-c/autoconf/shave cc gcc
  C++ compiler:                     /bin/bash /mnt/griffin/chrwhe/software/treePL/deps/adol-c/autoconf/shave cxx g++
  Linker:                           /usr/bin/ld -m elf_x86_64
  Source code location:             /mnt/griffin/chrwhe/software/treePL/deps/adol-c
  Install path:                     /usr

  CFLAGS:                           -O2 -fopenmp
  CXXFLAGS:                         -O2 -fopenmp

  Use ADOL-C debug mode:            no
  Use ADOL-C hard debug mode:       no
  Use ADOL-C adouble zeroing mode:  no
  Access thread number via errno:   no
  Use ADOL-C safe extern mode:      no

  Build sparse drivers:             no
  Build with ColPack:               no

  Build documented examples:        no
  Build additional examples:        no

  See ADOL-C/src/config.h for further configuration information.

sudo ./configure --with-openmp-flag=-fopenmp --prefix=/usr
-----------------------------------------------------------------------------
Configuration:

  C compiler:                       /bin/bash /mnt/griffin/chrwhe/software/treePL/deps/adol-c/autoconf/shave cc gcc
  C++ compiler:                     /bin/bash /mnt/griffin/chrwhe/software/treePL/deps/adol-c/autoconf/shave cxx g++
  Linker:                           /usr/bin/ld -m elf_x86_64
  Source code location:             /mnt/griffin/chrwhe/software/treePL/deps/adol-c
  Install path:                     /usr

  CFLAGS:                           -O2 -fopenmp
  CXXFLAGS:                         -O2 -fopenmp

  Use ADOL-C debug mode:            no
  Use ADOL-C hard debug mode:       no
  Use ADOL-C adouble zeroing mode:  no
  Access thread number via errno:   no
  Use ADOL-C safe extern mode:      no

  Build sparse drivers:             no
  Build with ColPack:               no

  Build documented examples:        no
  Build additional examples:        no

  See ADOL-C/src/config.h for further configuration information.
-----------------------------------------------------------------------------
sudo make install


## finally
cd ../../src
./configure
make
sudo make install
# nstall -m 0755 treePL /usr/bin/

########
testing

mkdir testing
cp constraint_checker/constraint_table.csv testing/
cp constraint_checker/phy.tre testing/
cd testing
treePL configuration

# assess
column -t -s "," constraint_table.csv
Constraint.name  mrca_L    mrca_R    Min   Max   info
Root             taxon_1   taxon_39  70.1  86.5
CladeA_crown     taxon_1   taxon_14  26.1  31.3  younger than descendant node FossilW
FossilW          taxon_5   taxon_14  34.7  52.3  older than ancestral node CladeA_crown
CladeB_crown     taxon_15  taxon_25  43.7  57.6
CladeC_stem      taxon_15  taxon_39  49.4  56.2
CladeC_crown     taxon_26  taxon_39  38.9  43.7
FossilX          taxon_26  taxon_38  27.9  34.6  younger than descendant node FossilY
FossilY          taxon_26  taxon_35  35.1  37.2  older than ancestral node FossilX
FossilZ          taxon_26  taxon_34  27.3  29.2  dates same node as FossilQ but is younger
FossilQ          taxon_27  taxon_33  31.9  34.6  dates same node as FossilZ but is older

more phy.tre
((((taxon_1:0.8951285032603051,taxon_2:0.8951285032603051):0.8722580757824496,(taxon_3:0.4411472314985434,taxon_4:0.4411472314985434):1.3262393475442114):0.1345131730304563,((((taxon_5:0.04956782409
77995,taxon_6:0.0495678240977995):0.6965606377875024,taxon_7:0.7461284618853019):0.3990740653679619,(taxon_8:0.4034552276865715,taxon_9:0.4034552276865715):0.7417472995666923):0.2930232184658559,(ta
xon_10:1.3498735826387889,(taxon_11:1.3057291716372839,((taxon_12:0.894049080355213,taxon_13:0.894049080355213):0.2720653140214551,taxon_14:1.1661143943766681):0.1396147772606158):0.044144411001505)
:0.0883521630803308)FossilW:0.4636740063540914)CladeA_crown:0.7271232607617275,(((taxon_15:1.6045020720925285,(taxon_16:0.4391994651765021,taxon_17:0.4391994651765021):1.1653026069160264):0.67790596
34373374,(((taxon_18:0.4326145911432153,taxon_19:0.4326145911432153):0.8979756480302583,(taxon_20:1.2297156583296323,(taxon_21:0.5059101456701085,taxon_22:0.5059101456701085):0.7238055126595238):0.1
008745808438414):0.2246605460194486,(taxon_23:1.2104417662193678,(taxon_24:0.360107164834838,taxon_25:0.360107164834838):0.8503346013845299):0.3448090189735544):0.7271572503369437)CladeB_crown:0.240
7971412635503,(((((taxon_26:0.7434384207553382,taxon_27:0.7434384207553382):0.962070786183291,((taxon_28:0.1244187506919863,taxon_29:0.1244187506919863):1.1047375722310691,((taxon_30:0.4452011150583
801,taxon_31:0.4452011150583801):0.4095995207076797,(taxon_32:0.1457498526184207,(taxon_33:0.0490783506061279,taxon_34:0.0490783506061279):0.0966715020122928):0.7090507831476391):0.3743556871569955)
:0.4763528840155739)FossilZ_Q:0.1221180131780224,taxon_35:1.8276272201166517)FossilY:0.2013671674746954,(taxon_36:0.1315458293886045,(taxon_37:0.1204789990761825,taxon_38:0.1204789990761825):0.01106
68303124219):1.8974485582027425)FossilX:0.2298498069681877,taxon_39:2.2588441945595346)CladeC_crown:0.2643609822338815)CladeC_stem:0.1058178360415223)Root;

###
# https://github.com/blackrim/treePL/issues/55
treePL configure_1
treePL: error while loading shared libraries: libadolc.so.2: cannot open shared object file: No such file or directory

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/
