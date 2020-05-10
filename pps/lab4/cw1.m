clear all;
close all;
clc;

N = 500;
fs = 1000; #Sampling Frequency in Hz
t = (0:N-1)/fs; #is equivalent to 0:1/fs:(N-1)/fs

f1 = 38;
f2 = 79;

x1=sin(2*pi*f1*t);
x2=2*sin(2*pi*f2*t);

x=x1+x2;

#SNR=10*log10(P_signal/P_noise)
y=awgn(x,50);

X = fft(x);
Y = fft(y);

f = fs*(0:N-1)/N; #frequency axis

figure();
plot(f,20*log10(abs(X)),f,20*log10(abs(Y)));
#plot(f,log10(abs(X)));#,f,log10(abs(Y)));

legend('|X(f)|','|Y(f)|'); 
grid on; 
xlabel('f [Hz]'); 
ylabel('widmo apml. [dB]');

figure();
p1=linspace(-2*pi,2*pi,length(X));
polar(p1,abs(X));

#figure();    Cos mnie tutaj nie dziala
#unwrap(angle(X));