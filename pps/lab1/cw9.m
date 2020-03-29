clear 
clc

n=(0:1/717:512*1/717);
subplot(2,2,1);
x1=3*sin(2*pi*pi*n);
plot(n,x1,'.-');
grid on;
title('3*sin(2*pi*pi*n)');

subplot(2,2,2);
x2=0.2*rand(size(n));
plot(n,x2,'.-');
grid on;
title('0.2*rand(n) szum');

subplot(2,2,3);
x=x1+x2;
plot(n,x,'.-');
grid on;
title('sin + szum');
