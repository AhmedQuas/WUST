clear all;
close all;
clc;

N = 300;
fs = 1850; #Sampling Frequency in Hz
t = (0:N-1)/fs; #is equivalent to 0:1/fs:(N-1)/fs

f1 = 120;
f2 = 127;
f3 = 150;

x1 = sin(2*pi*f1*t);
x2 = sin(2*pi*f2*t);
x3 = sin(2*pi*f3*t);

x=x1+x2+x3;

y=awgn(x,35);

X = fft(x);
Y = fft(y);

subplot(2,1,1);
f = (-N/2:N/2-1)*fs/N; #frequency axis
plot(f,20*log10(abs(fftshift(X))),'o');
legend('X(f)- sumy sygnalow sin()'); 
title('Tradycyjne FFT');
grid on;
xlabel('f[Hz]');
ylabel('widmo amplitudowe W(f) [dB]');

#Czym jest przeciek widma
#Przeciek jest to zjawisko, w ktorym dowolny sygna? wejsciowy, 
#ktorego cz?stotliwosc nie jest dokladnie rowna czestotliwosci dla 
#ktorej jest wyznaczony dany prazek dft przecieka do sasiednich 
#prazkow.

#Komentarz do wykresu
#Widac przeciek widma dla czestotliwosci 127 Hz, 
#ktora tez przecieka do 120 Hz. Powodem tej sytuacji
#jest zbyt mala ziarnistosc czestotliwosci, zwana rowniez
#rozdzielczoscia. Wartosc ta okresla co ile pkt jest
#wyznaczana wartosc prazkow dtf/fft.
#Rozdzielczosc mozna wyliczyc korzystajac z wzoru f=fs/N
#fs->czestotliwosc probkowania
#N-> liczba probek
#
#Ze wzgledu ze tf jest wyznaczana dla 125 i 130 to eneegia z 127
#przecieka na sasiednie prazki. Z tego powodu f1 i f2 zlewa sie 
#w jeden szczyt w widmie.

subplot(2,1,2);
NN = 2048 #sztuczne rozszerzenie
XX = fft(x,NN);
ff = (-NN/2:NN/2-1)*fs/NN;
plot(ff,20*log10(abs(fftshift(XX))),'ro');
legend('X(f)-sumy sygnalow sin()'); 
title('Sztuczne zwiekszenie rozdzielczosci');
grid on;
xlabel('f[Hz]');
ylabel('widmo amplitudowe W(f) [dB]');

#Po sztucznym zwi?kszeniu rodzielczo?ci nadal wida? lekki przeciek 
#widma, jednak teraz mo?emy wyró?ni? cz?stotliwo?? 125 Hz i co? w 
#okolicach 127 Hz i tutaj nast?puje lekki przeciek widma do s?siednich 
#pró?ków 128 i 130.