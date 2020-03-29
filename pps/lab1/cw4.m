clear 
clc

n=(0:0.01:2); %[s]
A=1;
x1=1*sin(2*pi*10*n);
x2=2*sin(2*pi*20*n);
x3=3*sin(2*pi*30*n);
x=x1+x2+x3;
plot(n,x,'.-');
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');
