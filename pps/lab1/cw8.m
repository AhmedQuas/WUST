clear 
clc

subplot(2,2,1);
x=(-3:0.1:5); %[s]
y=2*x-3;
plot(x,y,'.-');
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');


subplot(2,2,2);
x=(-4:0.1:2); %[s]
y=x.^2+2*x-1;
plot(x,y,'.-'); 
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');