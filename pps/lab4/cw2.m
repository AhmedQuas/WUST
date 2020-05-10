clear all;
close all;
clc;

fs = 44100; #Sampling Frequency in Hz
f0 = 2108;

#Cz?stotliwo?? podstawowa - fala harmoniczna o najmniejszej cz?stotliwo?ci
f_podst = mod(f0,fs); 

if f_podst > fs/2
	f_podst = -(fs-f_podst);	
  f_podst = abs(f_podst);		
  # je?eli czest. wyliczona jest wi?ksza ni? Fs/2 to jest to cz?stotliwo?? ujemna
  # a poniewa? sygna? jest rzeczywisty (ma tylko rzeczywiste warto?ci)
	# to widmo amplitudowe jest parzyste (symetryczne wzgl?dem zera)
end

s=sprintf('Maxymalna cz?stotliwosc w sygnale sprobkowanym wynosi %.1f',fs/2);
disp(s);
s=sprintf('Czstotliwosc podstawowa wynosi %.1f',f_podst);
disp(s);

#Wyznaczanie widma sygna?u
N = 512;
n = (0:N-1)/fs;
x = sin(2*pi*f0*n);    #tu powinna byc jedna harmoniczna w 2107 Hz
y = square(2*pi*f0*n); #tu spodziewamy si? nieskonczenie wiele harmonicznych

X = fft(x);
Y = fft(y);

#rysowania widma
f = (-N/2:N/2-1)*fs/N;
plot(f,20*log10(abs(fftshift(Y))),'b*-',f,20*log10(abs(fftshift(X))),'ro');
legend('Y(f)-square()','X(f)-sin()'); 
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
s=sprintf('Trzecia harmoniczna wynosi %.1f',f3_h);
disp(s);
s=sprintf('Piata harmoniczna wynosi %.1f',f5_h);
disp(s);