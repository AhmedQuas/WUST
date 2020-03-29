clear 
clc

n=(0:0.01:2); %[s]
x1=rand(size(n));    #U(0,1)  Uniform distribution
x2=randn(size(n));   #N(0,1)  Gauss distribution
plot(n,x1,'.-b',n,x2,'.-g');
legend("Uniform distribution","Gauss distribution");
grid on;
xlabel('n[s]');
ylabel('x(n) [V]');
