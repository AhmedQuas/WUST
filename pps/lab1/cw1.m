clear 
clc

T=75+rand()*150; #T (75,225)
n=(1:0.001:T); %[s]
A=1;
f=10+rand()*190; %rand(10,200)
x=A*sin(2*pi*f*n);
plot(n,x,'.-')
#stem(n,x,'.-') #pokazuje wszytskie rzedne badanej funkcji
grid on %wyswietla siatke
xlabel('n[s]')
ylabel('x(n) [V]')