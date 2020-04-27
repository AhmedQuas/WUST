clear all;
close all;
clc;

f=99; #sin frequency
N=100000; #100kHz 
t=(0:1/N:1);
#t=(0:N-1)/N;
x=sin(2*pi*f*t);
plot(t,x);
xlabel('t[s]');
ylabel('amplituda [a.u.]');

D=40;#decimation
n=t(1:D:end);
y=x(1:D:end);
fs=N/D; #Sampling frequncy
plot(t,x,n,y,'*-');
grid on;
legend('x(t)','y(n)');