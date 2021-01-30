clear all;
close all;
clc;

SF=[7,8,9,10,11,12];  #spreading factor
CR=[4/5,4/6,4/7,4/8]; #coding rate
BW=[62.5,125,250,500];#bandwidth

#Equivalent bitrate BW_CR

#BW 500kHz
bw500_5=[21875,12500,7031.25,3906.25,2148.44,1171.88];
bw500_6=[18229.17,10416.67,5859.38,2355.21,1790.36,976.56];
bw500_7=[15625,8928.57,5022.32,2790.18,1534.6,837.05];
bw500_8=[13671.88,7812.5,4394.53,2441.42,1342.77,732.42];

figure(1);
plot(SF,bw500_5,'o',SF,bw500_6,'o',SF,bw500_7,'o',SF,bw500_8,'o');
title('Wplyw zmian wartosci wspolczynnika SF i kodowania CR na szybkosc transmisji przy szerokosci pasma BW = 500kHz');
xlabel('Wspolczynnik rozpraszania SF');
ylabel('Szybkosc transmisji [bps]');
legend('CR = 4/5','CR = 4/6','CR = 4/7','CR = 4/8');
axis([7 12 0 23000]);

#BW 250kHz
bw250_5=[10937.5,6250,3515.63,1953.13,1074.22,585.94];
bw250_6=[9114.58,5208.33,2929.69,1627.6,895.18,488.28];
bw250_7=[7812.5,4464.29,2511.16,1395.09,767.3,418.94];
bw250_8=[6835.94,3906.25,2197.27,1220.7,671.39,366.21];

figure(2);
plot(SF,bw250_5,'o',SF,bw250_6,'o',SF,bw250_7,'o',SF,bw250_8,'o');
title('Wplyw zmian wartosci wspolczynnika SF i kodowania CR na szybkosc transmisji przy szerokosci pasma BW = 250kHz');
xlabel('Wspolczynnik rozpraszania SF');
ylabel('Szybkosc transmisji [bps]');
legend('CR = 4/5','CR = 4/6','CR = 4/7','CR = 4/8');
axis([7 12 0 23000]);

#BW 125kHz
bw125_5=[5468.75,3125,1757.81,976.56,537.11,292.97];
bw125_6=[4557.29,2604.17,1464.84,813.8,447.59,244.14];
bw125_7=[3906.25,2232.14,1255.58,697.54,383.65,209.26];
bw125_8=[3417.97,1953.13,1098.63,610.35,335.69,183.11];

figure(3);
plot(SF,bw125_5,'o',SF,bw125_6,'o',SF,bw125_7,'o',SF,bw125_8,'o');
title('Wplyw zmian wartosci wspolczynnika SF i kodowania CR na szybkosc transmisji przy szerokosci pasma BW = 125kHz');
xlabel('Wspolczynnik rozpraszania SF');
ylabel('Szybkosc transmisji [bps]');
legend('CR = 4/5','CR = 4/6','CR = 4/7','CR = 4/8');
axis([7 12 0 23000]);

#BW 62.5kHz
bw62_5=[2734.38,1562.5,878.91,488.28,268.55,146.48];
bw62_6=[2278.65,1302.08,732.42,406.9,223.8,122.07];
bw62_7=[1953.13,1116.07,627.79,345.77,191.82,104.63];
bw62_8=[1708.98,976.56,549.32,305.18,167.85,91.55];

figure(4);
plot(SF,bw62_5,'o',SF,bw62_6,'o',SF,bw62_7,'o',SF,bw62_8,'o');
title('Wplyw zmian wartosci wspolczynnika SF i kodowania CR na szybkosc transmisji przy szerokosci pasma BW = 62.5kHz');
xlabel('Wspolczynnik rozpraszania SF');
ylabel('Szybkosc transmisji [bps]');
legend('CR = 4/5','CR = 4/6','CR = 4/7','CR = 4/8');
axis([7 12 0 23000]);

clear all;
close all;
clc;

SF=[7,8,9,10,11,12];
f=868; #MHz

#link_budget_Ptx_BW
link_budget_20_500=[137,140,143,146,148.5,151]; #dB
link_budget_20_250=[140,143,146,149,151.5,154];
link_budget_20_125=[143,146,149,152,154.5,157];
link_budget_20_62 =[146,149,152,155,157.5,160];

log10d=link_budget_20_500-32.44-20*log10(f); #20log10d
d_20_500=10.^(log10d./20);
log10d=link_budget_20_250-32.44-20*log10(f);
d_20_250=10.^(log10d./20);
log10d=link_budget_20_125-32.44-20*log10(f);
d_20_125=10.^(log10d./20);
log10d=link_budget_20_62-32.44-20*log10(f);
d_20_62=10.^(log10d./20);

figure(5);
plot(SF,d_20_500,'o',SF,d_20_250,'o',
     SF,d_20_125,'o',SF,d_20_62,'o');
title('Zasieg systemu LoRa w zaleznosci od wspolczynnika SF,BW dla Ptx=20dBm');
xlabel('Wspolczynnik rozpraszania SF');
ylabel('Zasieg [km]');
legend('BW = 500kHz','BW = 250kHz','BW = 125kHz','BW = 62.5kHz');

link_budget_10_500=[127,130,133,136,138.5,141];
link_budget_10_250=[130,133,136,139,141.5,144];
link_budget_10_125=[133,136,139,142,144.5,147];
link_budget_10_62 =[136,139,142,145,147.5,150];

log10d=link_budget_10_500-32.44-20*log10(f); #20log10d
d_10_500=10.^(log10d./20);
log10d=link_budget_10_250-32.44-20*log10(f);
d_10_250=10.^(log10d./20);
log10d=link_budget_10_125-32.44-20*log10(f);
d_10_125=10.^(log10d./20);
log10d=link_budget_10_62-32.44-20*log10(f);
d_10_62=10.^(log10d./20);

figure(6);
plot(SF,d_10_500,'o',SF,d_10_250,'o',
     SF,d_10_125,'o',SF,d_10_62,'o');
title('Zasieg systemu LoRa w zaleznosci od wspolczynnika SF,BW dla Ptx=10dBm');
xlabel('Wspolczynnik rozpraszania SF');
ylabel('Zasieg [km]');
legend('BW = 500kHz','BW = 250kHz','BW = 125kHz','BW = 62.5kHz');