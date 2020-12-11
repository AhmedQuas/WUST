clear all;
close all;
clc;

normal_state_pk_dBuV=62.64;
normal_state_pk_freq=0.242; #MHz

#No info, so test passed
#normal_state_av_dbuV
#normal_state_av_freq

working_state_pk_dBuV=[68.25,61.44,46.48,46.92,50.27,53.39,44.84];
working_state_pk_freq=[0.15 ,0.226,0.35 ,0.678,0.754,2.346 ,4.798 ];

working_state_av_dBuV=[70.68,34.07,31.36,32.20,32.22,37.01,47.75,56.29,40.55 ,39.75];
working_state_av_freq=[0.158,0.278,0.378,0.438,0.598,0.754,1.358,1.590,1.966 ,2.270];

EN55011_QP_dBuV=[66  ,56 ,56,60,60];
EN55011_QP_dBuV_low=EN55011_QP_dBuV .-3.4; #low protect layer
EN55011_QP_dBuV_up=EN55011_QP_dBuV .+3.4; #upper protect layer
EN55011_QP_freq=[0.15,0.5,5 ,5 ,30];

EN55011_AV_dBuV=[56  ,46 ,46,50,50];
EN55011_AV_dBuV_low=EN55011_AV_dBuV .-3.4; #low protect layer
EN55011_AV_dBuV_up=EN55011_AV_dBuV .+3.4; #upper protect layer
EN55011_AV_freq=[0.15,0.5,5 ,5 ,30];

figure(1);
semilogx(EN55011_QP_freq,EN55011_QP_dBuV,'r',EN55011_QP_freq,EN55011_QP_dBuV_up,'m',normal_state_pk_freq,normal_state_pk_dBuV,'o',EN55011_QP_freq,EN55011_QP_dBuV_low,'m');
title('Pomiar przewodzonych zaburzen niesymetrycznych dla nieobciazonego urzadzenia z wykorzystaniem detektora Q-Peak');
xlabel('Czestotliwosc [MHz]');
ylabel('Wartosc napiecia zaburzen przewodzonych [dBuV]');
legend_text=legend('Wartosci graniczne poziomow zaburzen przewodzonych zalecane przez norme PN-EN 55014','Poziom dopuszczalny ± niepewnosc pomiarowa (±3.4 dB)','Wartosc zaburzen zmierzona za pomoca detektora Q-Peak');
legend(legend_text,'location','northoutside');
axis([0.15 30 0 100]);
xticks([0.15,1,10,30]);
grid on;

figure(2);
semilogx(EN55011_AV_freq,EN55011_AV_dBuV,'r',EN55011_AV_freq,EN55011_AV_dBuV_up,'m',EN55011_AV_freq,EN55011_AV_dBuV_low,'m');
title('Pomiar przewodzonych zaburzen niesymetrycznych dla nieobciazonego urzadzenia z wykorzystaniem detektora Average');
xlabel('Czestotliwosc [MHz]');
ylabel('Wartosc napiecia zaburzen przewodzonych [dBuV]');
legend_text=legend('Wartosci graniczne poziomow zaburzen przewodzonych zalecane przez norme PN-EN 55014','Poziom dopuszczalny ± niepewnosc pomiarowa (±3.4 dB)');
legend(legend_text,'location','northoutside');
axis([0.15 30 0 100]);
xticks([0.15,1,10,30]);
grid on;

figure(3);
semilogx(EN55011_QP_freq,EN55011_QP_dBuV,'r',EN55011_QP_freq,EN55011_QP_dBuV_up,'m',working_state_pk_freq,working_state_pk_dBuV,'o',EN55011_QP_freq,EN55011_QP_dBuV_low,'m');
title('Pomiar przewodzonych zaburzen niesymetrycznych dla obciazonego urzadzenia z wykorzystaniem detektora Q-Peak');
xlabel('Czestotliwosc [MHz]');
ylabel('Wartosc napiecia zaburzen przewodzonych [dBuV]');
legend_text=legend('Wartosci graniczne poziomow zaburzen przewodzonych zalecane przez norme PN-EN 55014','Poziom dopuszczalny ± niepewnosc pomiarowa (±3.4 dB)','Wartosc zaburzen zmierzona za pomoca detektora Q-Peak');
legend(legend_text,'location','northoutside');
axis([0.15 30 0 100]);
xticks([0.15,1,10,30]);
grid on;

figure(4);
semilogx(EN55011_AV_freq,EN55011_AV_dBuV,'r',EN55011_AV_freq,EN55011_AV_dBuV_up,'m',working_state_av_freq,working_state_av_dBuV,'o',EN55011_AV_freq,EN55011_AV_dBuV_low,'m');
title('Pomiar przewodzonych zaburzen niesymetrycznych dla obciazonego urzadzenia z wykorzystaniem detektora Average');
xlabel('Czestotliwosc [MHz]');
ylabel('Wartosc napiecia zaburzen przewodzonych [dBuV]');
legend_text=legend('Wartosci graniczne poziomow zaburzen przewodzonych zalecane przez norme PN-EN 55014','Poziom dopuszczalny ± niepewnosc pomiarowa (±3.4 dB)','Wartosc zaburzen zmierzona za pomoca detektora Average');
legend(legend_text,'location','northoutside');
axis([0.15 30 0 100]);
xticks([0.15,1,10,30]);
grid on;
