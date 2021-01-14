clear all;
close all;
clc;
#Do not know why but dlmread() works instead of csvread()
#Wurth Elektronik

Zg = 150; #Ohm, source impedance
Zl = 150; #Ohm, load impedance

freq_column = 1;
dBuV_column = 2;

ref_raw = dlmread('measurements/ref.csv',';');
ref_freq = ref_raw(:,freq_column)/10^6; #MHz
ref_dBuV = ref_raw(:,dBuV_column);

k=4; #degree of the polynomial which will approximate to given points

#---------------------------- 742 758 15 Ferrite ----------------------------#

single_turn_742_758_15_raw = dlmread('measurements/single_turn_742_758_15.csv',';');
single_turn_742_758_15_freq = single_turn_742_758_15_raw(:,freq_column)/10^6;
single_turn_742_758_15_dBuV = single_turn_742_758_15_raw(:,dBuV_column);
single_turn_742_758_15_attenuation =  ref_dBuV .- single_turn_742_758_15_dBuV;

coefficient = polyfit(ref_freq,single_turn_742_758_15_attenuation,k);
regression_single_turn_742_758_15_attenuation=polyval(coefficient,ref_freq);

ZB_single_turn_742_758_15 = (Zg+Zl)./10.^(-single_turn_742_758_15_attenuation./20)...
  .*(1-10.^(-single_turn_742_758_15_attenuation./20));

coefficient = polyfit(ref_freq,ZB_single_turn_742_758_15,k);
regression_ZB_single_turn_742_758_15=polyval(coefficient,ref_freq); 
 
dual_turn_742_758_15_raw = dlmread('measurements/dual_turn_742_758_15.csv',';');
dual_turn_742_758_15_freq = dual_turn_742_758_15_raw(:,freq_column)/10^6;
dual_turn_742_758_15_dBuV = dual_turn_742_758_15_raw(:,dBuV_column);
dual_turn_742_758_15_attenuation = ref_dBuV .- dual_turn_742_758_15_dBuV;

coefficient = polyfit(ref_freq,dual_turn_742_758_15_attenuation,k);
regression_dual_turn_742_758_15_attenuation=polyval(coefficient,ref_freq);

ZB_dual_turn_742_758_15 = (Zg+Zl)./10.^(-dual_turn_742_758_15_attenuation./20)...
  .*(1-10.^(-dual_turn_742_758_15_attenuation./20));

coefficient = polyfit(ref_freq,ZB_dual_turn_742_758_15,k);
regression_ZB_dual_turn_742_758_15=polyval(coefficient,ref_freq);   

figure(1);
semilogx(ref_freq,single_turn_742_758_15_attenuation,
ref_freq,dual_turn_742_758_15_attenuation,
ref_freq,regression_single_turn_742_758_15_attenuation,'--',
ref_freq,regression_dual_turn_742_758_15_attenuation,'--');

title('Charakterystyka tlumieniowa dla ferrytu 742 758 15');
legend_text=legend('1-krotny przeplot', '2-krotny przeplot');
legend(legend_text,'location','northwest');
xlabel('Czestotliwosc [MHz]');
ylabel('Tlumienie [dB]');
grid on;
axis ([1 1000 0 25]);

figure(2,'position',[0,0,1000,1000]);
loglog(ref_freq,ZB_single_turn_742_758_15,
ref_freq,ZB_dual_turn_742_758_15,
ref_freq,regression_ZB_single_turn_742_758_15,
ref_freq,regression_ZB_dual_turn_742_758_15);
legend_text=legend('1-krotny przeplot', '2-krotny przeplot');
legend(legend_text,'location','northwest');
title('Wartosc impdancji w zaleznosci od czestotliwosci dla ferrytu 742 758 15');
xlabel('Czestotliwosc [MHz]');
ylabel('Impedancja ZB [Ohm]');
grid on;
axis ([1 1000 1 1000]); #mozliwe ze bedzie trzeba to zmienic

#---------------------------- 742 727 22 Ferrite ----------------------------#

single_turn_742_727_22_raw = dlmread('measurements/single_turn_742_727_22.csv',';');
single_turn_742_727_22_freq = single_turn_742_727_22_raw(:,freq_column)/10^6;
single_turn_742_727_22_dBuV = single_turn_742_727_22_raw(:,dBuV_column);
single_turn_742_727_22_attenuation = ref_dBuV .- single_turn_742_727_22_dBuV;

coefficient = polyfit(ref_freq,single_turn_742_727_22_attenuation,k);
regression_single_turn_742_727_22_attenuation=polyval(coefficient,ref_freq);

ZB_single_turn_742_727_22 = (Zg+Zl)./10.^(-single_turn_742_727_22_attenuation./20)...
  .*(1-10.^(-single_turn_742_727_22_attenuation./20));

coefficient = polyfit(ref_freq,ZB_single_turn_742_727_22,k);
regression_ZB_single_turn_742_727_22=polyval(coefficient,ref_freq);

dual_turn_742_727_22_raw = dlmread('measurements/dual_turn_742_727_22.csv',';');
dual_turn_742_727_22_freq = dual_turn_742_727_22_raw(:,freq_column)/10^6;
dual_turn_742_727_22_dBuV = dual_turn_742_727_22_raw(:,dBuV_column);
dual_turn_742_727_22_attenuation = ref_dBuV .- dual_turn_742_727_22_dBuV;

coefficient = polyfit(ref_freq,dual_turn_742_727_22_attenuation,k);
regression_dual_turn_742_727_22_attenuation=polyval(coefficient,ref_freq);

ZB_dual_turn_742_727_22 = (Zg+Zl)./10.^(-dual_turn_742_727_22_attenuation./20)...
  .*(1-10.^(-dual_turn_742_727_22_attenuation./20));

coefficient = polyfit(ref_freq,ZB_dual_turn_742_727_22,k);
regression_ZB_dual_turn_742_727_22=polyval(coefficient,ref_freq);

figure(3);
semilogx(ref_freq,single_turn_742_727_22_attenuation,
ref_freq,dual_turn_742_727_22_attenuation,
ref_freq,regression_single_turn_742_727_22_attenuation,'--',
ref_freq,regression_dual_turn_742_727_22_attenuation,'--');

legend_text=legend('1-krotny przeplot', '2-krotny przeplot');
legend(legend_text,'location','northwest');
title('Charakterystyka tlumieniowa dla ferrytu 742 727 22');
xlabel('Czestotliwosc [MHz]');
ylabel('Tlumienie [dB]');
grid on;
axis ([1 1000 0 15]);

figure(4,'position',[0,0,1000,1000]);
loglog(ref_freq,ZB_single_turn_742_727_22,
ref_freq,ZB_dual_turn_742_727_22,
ref_freq,regression_ZB_single_turn_742_727_22,
ref_freq,regression_ZB_dual_turn_742_727_22);

legend_text=legend('1-krotny przeplot', '2-krotny przeplot');
legend(legend_text,'location','northwest');
title('Wartosc impdancji w zaleznosci od czestotliwosci dla ferrytu 742 727 22');
xlabel('Czestotliwosc [MHz]');
ylabel('Impedancja ZB [Ohm]');
grid on;
axis ([0.1 1000 10 1000]);

#---------------------------- 742 715 1 Ferrite ----------------------------#

single_turn_742_715_1_raw = dlmread('measurements/single_turn_742_715_1.csv',';');
single_turn_742_715_1_freq = single_turn_742_715_1_raw(:,freq_column)/10^6;
single_turn_742_715_1_dBuV = single_turn_742_715_1_raw(:,dBuV_column);
single_turn_742_715_1_attenuation = ref_dBuV .- single_turn_742_715_1_dBuV;

coefficient = polyfit(ref_freq,single_turn_742_715_1_attenuation,k);
regression_single_turn_742_715_1_attenuation=polyval(coefficient,ref_freq);

ZB_single_turn_742_715_1 = (Zg+Zl)./10.^(-single_turn_742_715_1_attenuation./20)...
  .*(1-10.^(-single_turn_742_715_1_attenuation./20));

coefficient = polyfit(ref_freq,ZB_single_turn_742_715_1,k);
regression_ZB_single_turn_742_715_1=polyval(coefficient,ref_freq);

dual_turn_742_715_1_raw = dlmread('measurements/dual_turn_742_715_1.csv',';');
dual_turn_742_715_1_freq = dual_turn_742_715_1_raw(:,freq_column)/10^6;
dual_turn_742_715_1_dBuV = dual_turn_742_715_1_raw(:,dBuV_column);
dual_turn_742_715_1_attenuation = ref_dBuV .- dual_turn_742_715_1_dBuV;

coefficient = polyfit(ref_freq,dual_turn_742_715_1_attenuation,k);
regression_dual_turn_742_715_1_attenuation=polyval(coefficient,ref_freq);

ZB_dual_turn_742_715_1 = (Zg+Zl)./10.^(-dual_turn_742_715_1_attenuation./20)...
  .*(1-10.^(-dual_turn_742_715_1_attenuation./20));

coefficient = polyfit(ref_freq,ZB_dual_turn_742_715_1,k);
regression_ZB_dual_turn_742_715_1=polyval(coefficient,ref_freq);

figure(5);
semilogx(ref_freq,single_turn_742_715_1_attenuation,
ref_freq,dual_turn_742_715_1_attenuation,
ref_freq,regression_single_turn_742_715_1_attenuation,'--',
ref_freq,regression_dual_turn_742_715_1_attenuation,'--');

legend_text=legend('1-krotny przeplot', '2-krotny przeplot');
legend(legend_text,'location','northwest');
title('Charakterystyka tlumieniowa dla ferrytu 742 715 1');
xlabel('Czestotliwosc [MHz]');
ylabel('Tlumienie [dB]');
grid on;
axis ([1 1000 0 12]);

figure(6,'position',[0,0,1000,1000]);
loglog(ref_freq,ZB_single_turn_742_715_1,
ref_freq,ZB_dual_turn_742_715_1,
ref_freq,regression_ZB_single_turn_742_715_1,
ref_freq,regression_ZB_dual_turn_742_715_1);

legend_text=legend('1-krotny przeplot', '2-krotny przeplot');
legend(legend_text,'location','northwest');
title('Wartosc impdancji w zaleznosci od czestotliwosci dla ferrytu 742 715 1');
xlabel('Czestotliwosc [MHz]');
ylabel('Impedancja ZB [Ohm]');
grid on;
axis ([1 1000 1 1000]);

###########################################################################
#single_turn_742_758_15_attenuation =  ref_dBuV .- single_turn_742_758_15_dBuV;
#20*log10(one_turn_742_758_15_dBuV.-ref_dBuV);
  
#single_turn_742_758_15_uV=10.**(single_turn_742_758_15_dBuV./20);
#ref_uV=10.**(ref_dBuV./20);
#single_turn_742_758_15_attenuation_2 = ...
#  (20*log10(single_turn_742_758_15_uV./ref_uV));
