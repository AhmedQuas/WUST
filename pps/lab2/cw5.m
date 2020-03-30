clear
close all
clc

function [x,y] = polymonial(a,b,T,Fs)

if nargin < 3
  T=1;
  FS=10;
endif

x=-T:1/Fs:T;
#y=1+b(1)*x+b(2)*x.^2;
y1=(1+b(2)*x+b(3)*x.^2);
y2=(a(1)+a(2)*x+a(3)*x.^2);
y=y1./y2;

endfunction

a=[1,2,3];
b=[1,3,2];
T=2;    #s
Fs=10;  #Hz

[x,y] = polymonial(a,b,T,Fs);

plot(x,y);
grid on;
legend("(1+b_2*x+b_3*x^2)/(a_1+a_2*x+a_3*x^2)");
xlabel("axis x");
ylabel("axis y");