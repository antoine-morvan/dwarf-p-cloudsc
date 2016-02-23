#!/usr/bin/perl

use strict;
use warnings;

my $in = do {
    local $/;
#    <DATA>;
    <>;
};

while ($in =~ m%\s*&(\w+)\s+(.*?)\s*/%gs) {
    my $name = uc($1);
    my $vars = $2;
    $vars =~ s/\n//g;
    $vars =~ s%,%,\n%g;
    $vars =~ s/\n\s+/\n/g;
    $vars =~ s/\s*=\s*/ = /g;
    $vars =~ s/\s+,/,/g;
    printf("\n\n&%s\n",$name);
    printf("%s\n/\n",$vars);
}

__DATA__
&PARAMS1  LSCMEC = F, RG = 9.8066499999999994, RD = 287.0596736665907, RCPD = 1004.7088578330674, RETV = 0.60776673161146366, RLVTT = 2500800., RLSTT
 = 2834500., RLMLT = 333700., RTT = 273.16000000000003, RV = 461.52499330838788, R2ES = 380.16087034428472, R3LES = 17.501999999999999, R3IES = 22.587
, R4LES = 32.189999999999998, R4IES = -0.69999999999999996, R5LES = 4217.45694, R5IES = 6185.6758200000004, R5ALVCP = 10497584.68169531, R5ALSCP = 174
51123.253362577, RALVDCP = 2489.0792795374246, RALSDCP = 2821.2152982440934, RALFDCP = 332.13601870666929, RTWAT = 273.16000000000003, RTICE = 250.160
00000000003, RTICECU = 250.16000000000003, RTWAT_RTICE_R = 4.34782608695652162E-2, RTWAT_RTICECU_R = 4.34782608695652162E-2, RKOOP1 = 2.58300000000000
02, RKOOP2 = 4.81160000000000008E-3, RAMID = 0.80000000000000004, RCLDIFF = 3.00000000000000008E-6, RKCONV = 1.66666666666666661E-4, RPRC1 = 100., RPE
CONS = 5.54725619859993018E-5, RTAUMEL = 7200., RVRFACTOR = 5.08999999999999991E-3, RAMIN = 1.00000000000000002E-8, RLMIN = 1.00000000000000002E-8, RC
OVPMIN = 0.10000000000000001, RLCRITSNOW = 3.00000000000000008E-5, RCLCRIT_SEA = 2.99999999999999974E-4, RCLCRIT_LAND = 5.0000000000000001E-4, RSNOWLI
N1 = 1.00000000000000002E-3, RSNOWLIN2 = 2.50000000000000014E-2, RKOOPTAU = 10800., NSSOPT = 1, NCLDTOP = 15, RTHOMO = 235.16000000000003, RVICE = 0.1
3, RVRAIN = 4., RVSNOW = 1., RICEHI1 = 3.33333333333333349E-5, RICEHI2 = 4.29184549356223174E-3, RICEINIT = 9.9999999999999998E-13, RPRECRHMAX = 0.699
99999999999996, RNICE = 2.69999999999999997E-2, RCCN = 125., RCLDTOPCF = 1.00000000000000002E-2, RDEPLIQREFRATE = 0.10000000000000001, RDEPLIQREFDEPTH
 = 500., LAERLIQAUTOLSP = F, LAERLIQCOLL = F, LAERICESED = F, LAERICEAUTO = F, RCL_KKAAC = 67., RCL_KKBAC = 1.1499999999999999, RCL_KKAAU = 1350., RCL
_KKBAUQ = 2.4700000000000002, RCL_KKBAUN = -1.79, RCL_KK_CLOUD_NUM_SEA = 100., RCL_KK_CLOUD_NUM_LAND = 900., RCL_CONST1S = 1.2077293267352468E-6, RCL_
CONST2S = 79168143.485715821, RCL_CONST3S = 1.1756666666666666, RDENSREF = 1., RCL_KA273 = 2.40000000000000005E-2, RCL_CDENOM1 = 557000000000., RCL_CD
ENOM2 = 103000000., RCL_CDENOM3 = 204., RCL_CONST1R = 1.3823007675795089, RCL_CONST2R = 2143.2299120517614, RCL_CONST3R = 0.63499999999999979, RCL_CON
ST4R = -0.20000000000000018, RCL_FAC1 = 4146.9027898470631, RCL_FAC2 = 0.55555555555555558, LCLDBUDGET = F, LPHYLIN = F, RLPTRC = 266.42345596729064,
RLPAL1 = 0.14999999999999999, RLPAL2 = 20. /
&PARAMS2  LSCMEC = F, RG = 9.8066499999999994, RD = 287.0596736665907, RCPD = 1004.7088578330674, RETV = 0.60776673161146366, RLVTT = 2500800., RLSTT
 = 2834500., RLMLT = 333700., RTT = 273.16000000000003, RV = 461.52499330838788, R2ES = 380.16087034428472, R3LES = 17.501999999999999, R3IES = 22.587/
