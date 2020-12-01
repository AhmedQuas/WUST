clear all;
close all;
clc

x=0;
y=0.05;

a=0.11;
a2=a*2;
b=0.2;
g=0.015;

Zc=50;

#MHz
f=[120,122.76,142.92,146.28,149.04,171.84,440.04];
#dBuV
Vx_dBuV=[30.29,36.31,35.00,28.44,27.64,38.97,31.04]; 
Vy_dBuV=[40.20,38.79,30.78,28.26,28.23,43.33,34.39];
Vz_dBuV=[33.59,33.59,33.59,33.59,33.59,33.59,34.42];

#pdb=20log10(P/Po)
#dBuV -> uV
#uV
Vx_uV=10.**(Vx_dBuV./20); 
Vy_uV=10.**(Vy_dBuV./20);
Vz_uV=10.**(Vz_dBuV./20);

P_tot_uW=Vx_uV.**2/(Zc*10**6)+Vy_uV.**2/(Zc*10**6)+Vx_uV.**2/(Zc*10**6); 

#P_tot_dBpW=10*log10((P_tot_uW*10**6)/1);  #dBpW
#dBuW
P_tot_dBuW=10*log10(P_tot_uW/1); 
#dBpW
P_tot_dBpW=P_tot_dBuW+(3*10*2);

eoy=2/a*sqrt(Zc)...
*(cosh(  pi/a2*y)/sinh(  pi/a2*b)*cos(  pi/a2*x)*sin(  pi/2)*besselj(0,  pi/a2*g)...
+ cosh(3*pi/a2*y)/sinh(3*pi/a2*b)*cos(3*pi/a2*x)*sin(3*pi/2)*besselj(0,3*pi/a2*g)...
+ cosh(5*pi/a2*y)/sinh(5*pi/a2*b)*cos(5*pi/a2*x)*sin(5*pi/2)*besselj(0,5*pi/a2*g));

FPh_3 =[20.49,20.49,22.41,23.22,23.22,24.64,32.10]; 
FPv_3 =[19.58,19.58,20.26,20.48,20.48,20.70,31.61];
FPh_10=[8.568,8.568,10.94,11.97,11.97,13.76,23.66];
FPv_10=[12.22,12.22,13.49,14.06,14.06,15.06,21.18];

Eh_max_dBuV_m_d_3 = P_tot_dBpW .+ FPh_3 - 20*log10(eoy/sqrt(Zc));
Ev_max_dBuV_m_d_3 = P_tot_dBpW .+ FPv_3 - 20*log10(eoy/sqrt(Zc));

Eh_max_dBuV_m_d_10 = P_tot_dBpW .+ FPh_10 - 20*log10(eoy/sqrt(Zc));
Ev_max_dBuV_m_d_10 = P_tot_dBpW .+ FPv_10 - 20*log10(eoy/sqrt(Zc));

#EN-PN 55022 EM emission norm lines
#n1=(0:1:230);
n1=linspace(0,230,1000);
y1=30;

n2=linspace(230,500,1000);
#n2=(230:1:500);
y2=37;

figure(1);
plot(n1,y1,n2,y2,f,Eh_max_dBuV_m_d_10,'o');
title('Wykres wartosc dla skladowej poziomej EHmax w funkcji czestotliwosci dla d=10m');
xlabel('Czestotliwosc [MHz]');
ylabel('EHmax [dBuV/m]');
grid on;
axis ([0 500 0 40]);

figure(2);
plot(f,Ev_max_dBuV_m_d_10,'o',n1,y1,n2,y2);
title('Wykres wartosc dla skladowej pionowej EVmax w funkcji czestotliwosci dla d=10m');
xlabel('Czestotliwosc [MHz]');
ylabel('EVmax [dBuV/m]');
grid on;
axis ([0 500 0 40]);

figure(3);
plot(f,Eh_max_dBuV_m_d_3,'o');
title('Wykres wartosc dla skladowej poziomej EHmax w funkcji czestotliwosci dla d=3m');
xlabel('Czestotliwosc [MHz]');
ylabel('EHmax [dBuV/m]');
grid on;
axis ([0 500 0 50]);

figure(4);
plot(f,Ev_max_dBuV_m_d_3,'o');
title('Wykres wartosc dla skladowej pionowej EVmax w funkcji czestotliwosci dla d=3m');
xlabel('Czestotliwosc [MHz]');
ylabel('EVmax [dBuV/m]');
grid on;
axis ([0 500 0 50]);