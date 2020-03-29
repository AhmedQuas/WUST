clear 
clc
pkg load signal

n=(0:0.01:20); %[s]
subplot(2,2,1);
x1=square(n,50); % duty given in percentage
grid on;
plot(n,x1,'.-');
title('duty 0.50');
xlabel('n[s]');
ylabel('x(n) [V]');

subplot(2,2,2);
x2=square(n,90);
grid on;
plot(n,x2,'.-');
title('duty 0.90');
xlabel('n[s]');
ylabel('x(n) [V]');

subplot(2,2,3);
x3=square(n,25);
grid on;
plot(n,x3,'.-');
title('duty 0.25');
xlabel('n[s]');
ylabel('x(n) [V]');
