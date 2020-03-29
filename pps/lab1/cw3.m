clear 
clc

n=(0:0.01:2); %[s]
subplot(2,2,1);
A=1;
x=A*sin(2*pi*5*n);
plot(n,x,'.-');
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');

subplot(2,2,2);
A=2;
x2=A*sin(2*pi*5*n);
plot(n,x2,'.-',n,x,'.-');
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');
title('zmiana amplitudy');

subplot(2,2,3);
A=1;
x3=A*sin(2*pi*5*n+pi/2);
plot(n,x3,'.-',n,x,'.-');
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');
title('zmiana fazy');
