clear all;
close all;
clc;

measurement_numer=(1:1:8);

bit_rate_mimo_1x1=[13.5,27,40.5,54,81,108,121.5,135];
capacity_mimo_1x1=[
(11.8+11.8+11.9)/3,...
(24.0+24.0+24.0)/3,...
(36.2+36.1+36.2)/3,...
(47.5+47.5+47.5)/3,...
(     72.5+72.6)/2,...    #observational error
(88.4+94.8+95.1)/3,...
(106 +106 +106 )/3,...
(117 +116 +116 )/3 ...
];

bit_rate_mimo_2x2=[27,54,81,108,162,216,243,270];
capacity_mimo_2x2=[
(23.7+23.7+23.6)/3,...
(47.4+47.1+47.2)/3,...
(72.2+72.2+72.2)/3,...
(94.8+95.0+94.9)/3,...
(137 +137 +137 )/3,...    
(176 +176 +176 )/3,...
(193 +194 +190 )/3,...
(186 +186 +185 )/3,...
];

udp_packet_length=[64,128,256,512,1024,1470,1528,2048,2332];
capacity_udp=[
(7.88+8.65+9.38)/3,...
(17.5+17.1+17.8)/3,...
(34.5+38.4+38.3)/3,...
(78.1+78.8+78.7)/3,...
(160 +160 +160 )/3,...
(176 +176 +175 )/3,...
(111 +112 +112 )/3,...
(145 +128 +132 )/3,...
(168 +164 +166 )/3,...
];

#MIMO 1x1

capacity_bit_rate_mimo_1x1_ratio=capacity_mimo_1x1./bit_rate_mimo_1x1;

figure(1);
plot(measurement_numer,capacity_bit_rate_mimo_1x1_ratio,'o');
title('Wykres stosunku zmierzonej przepustowosci do teoretycznej wartosci przeplywnosci w zaleznosci od pomiaru dla MIMO 1x1');
xlabel('Nr pomiaru');
ylabel('Stosunek zmierzonej przepustowosci do teoretycznej wartosci przeplywnosci');
axis([1 8 0 1]);
grid on;

figure(2);
plot(measurement_numer,bit_rate_mimo_1x1,'o',measurement_numer,capacity_mimo_1x1,'o');
title('Wykres zmierzonej wartosci przepustowosci i teoretycznej wartosci przeplywnosci w zaleznosci od pomiaru dla MIMO 1x1');
xlabel('Nr pomiaru');
ylabel('Predkosc transmisji [Mb/s]');
legend_text=legend('Przeplywnosc bitowa [Mb/s]','Przepustowosc [Mb/s]');
legend(legend_text,'location','southeast');
grid on;

#MIMO 2x2

capacity_bit_rate_mimo_2x2_ratio=capacity_mimo_2x2./bit_rate_mimo_2x2;

figure(3);
plot(measurement_numer,capacity_bit_rate_mimo_2x2_ratio,'o');
title('Wykres stosunku zmierzonej przepustowosci do teoretycznej wartosci przeplywnosci w zaleznosci od pomiaru dla MIMO 2x2');
xlabel('Nr pomiaru');
ylabel('Stosunek zmierzonej przepustowosci do teoretycznej wartosci przeplywnosci');
axis([1 8 0 1]);
grid on;

figure(4);
plot(measurement_numer,bit_rate_mimo_2x2,'o',measurement_numer,capacity_mimo_2x2,'o');
title('Wykres zmierzonej wartosci przepustowosci i teoretycznej wartosci przeplywnosci w zaleznosci od pomiaru dla MIMO 2x2');
xlabel('Nr pomiaru');
ylabel('Predkosc transmisji [Mb/s]');
legend_text=legend('Przeplywnosc bitowa [Mb/s]','Przepustowosc [Mb/s]');
legend(legend_text,'location','southeast');
grid on;

#UDP packet length and it`s capacity

figure(5);
plot(udp_packet_length,capacity_udp,'o');
title('Wykres zmierzonej wartosci przepustowosci w zaleznosci od dlugosci pakietu UDP dla przeplywnosci bitowej 216 Mb/s');
xlabel('Dlugosc pakietu UDP [B]');
ylabel('Przepustowosc [Mb/s]');
legend_text=legend('Przepustowosc [Mb/s]');
legend(legend_text,'location','southeast');
grid on;
