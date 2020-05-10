clear all;
close all;
clc;

fs = 44100; #Sampling Frequency in Hz
f0 = 2108;

f_podst = mod(f0,fs); 

if f_podst > fs/2
	f_podst = abs(-(fs-f_podst));
end

disp('Maxymalna cztstotliwosc w sygnale sprobkowanym wynosi Hz:');
disp(fs/2);
disp('Czstotliwosc podstawowa wynosi');
disp(f_podst);

#Wyznaczanie widma sygna?u
N = 512;
n = (0:N-1)/fs;
x = square(2*pi*f0*n); #tu spodziewamy si? nieskonczenie wiele harmonicznych

X = fft(x);

#rysowania widma
f = (-N/2:N/2-1)*fs/N;
plot(f,20*log10(abs(fftshift(X))));
legend('X(f)-square()'); 
grid on;
xlabel('f[Hz]');
ylabel('widmo amplitudowe W(f) [dB]');

f3_h=mod(3*f0,fs);
f5_h=mod(5*f0,fs);

if f3_h > fs/2
  f3_h = abs(-(fs-f3_h));
endif

if f5_h > fs/2
  f5_h = abs(-(fs-f5_h));
endif

disp('Trzecia harmoniczna wynosi [Hz]');
disp(f3_h);
disp('Piata harmoniczna wynosi [Hz]');
disp(f5_h);