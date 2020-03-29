clear 
clc

fs=1/1500+rand()*(1/700-1/1500);
N=512+rand()*1488; #N (512,2000)
n=(0:fs:N*fs); %[s]
A=1;
f=10+rand()*190; %rand(10,200)
x=A*sin(2*pi*f*n);
plot(n,x,'.-');
xlabel('n[s]');
ylabel('x(n) [V]');
