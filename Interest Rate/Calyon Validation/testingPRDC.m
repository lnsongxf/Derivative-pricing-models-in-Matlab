% This program tests the PRDC with Razor.
load sw1w2rdrfsigltt.txt;
%ffs = 1;
%S = 0.35;
%FS = [0.05 0.05 0.05 0.05];
%w1 = 1;
%w2 = 0.03;
%bl = 0.0001;
%bu = 1;
%rd = [0.05 0.05 0.05 0.05];
%rf = [0.03 0.03 0.03 0.03];
%df = [0.99 0.98 0.96 0.94];
%sig = [0.25 0.25 0.25 0.25];
%L = [0.05 0.05 0.05 0.05];
%F = 0.05;
%TT = [1 2 3 4];
%PRDC(ffs,FS,w1,w2,bl,bu,rd,rf,df,sig,L,F,TT)

ffs = 0;
S = 1./sw1w2rdrfsigltt(:,1);
w1 = sw1w2rdrfsigltt(1,2);
w2 = -sw1w2rdrfsigltt(1,3);
bl = 0;
bu = 1000;
df = sw1w2rdrfsigltt(:,4);
sig = sw1w2rdrfsigltt(:,6);
L = sw1w2rdrfsigltt(:,7);
F = [];
TT = sw1w2rdrfsigltt(:,8);
rd = -log(sw1w2rdrfsigltt(:,4))./TT;
rf = -log(sw1w2rdrfsigltt(:,5))./TT;
FS = [105.4437723;
105.2919702;
105.4863427;
105.5343785;
105.0727777;
104.9679374;
104.9970636;
104.9482088;
105.0100682;
104.9933982;
105.0551629;
105.0533175;
105.0049247;
105.0157927;
105.1573756;
105.1507126;
105.1320562;
105.1555192;
105.1325027;
105.1555407;
105.2075291;
105.2317323;
105.21694;
107.4069223;
105.1409522;
105.1405563;
105.1008393;
105.1143329;
105.0761283;
105.1062778;
105.3113211;
105.3324254;
105.3189297;
105.3416025;
105.3273509;
105.3516964;
105.3470955;
105.3583397;
105.3376692;
105.3582417;
105.3720203;
105.3946488;
105.3820148;
105.4044704;
105.3919507;
105.4142306;
105.4029108;
105.4375491;
105.4061813;
105.4323917;
105.4313732;
105.4579228;
105.4479076;
105.4699435;
105.4600727;
105.4806527;
105.4700788;
105.4936303;
];
%FS = S(1:length(S)-1).*exp((rd(1:length(rd)-1)-rf(1:length(rf)-1)).*TT(1:length(TT)-1))
%FS = [S;FS];
PRDC(ffs,FS,w1,w2,bl,bu,rd,rf,df,sig,L,F,TT)
