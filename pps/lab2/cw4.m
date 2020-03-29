clear
close all
clc

function [local_max_values,local_min_values] = signal_max_min(n,A,f,phase)
  x=A(1)*sin(2*pi*n*f(1)+phase(1))+...
  A(2)*sin(2*pi*n*f(2)+phase(2))+A(3)*sin(2*pi*n*f(3)+phase(3));
  plot(n,x);
  grid on;
  xlabel('n[s]');
  ylabel('x(n)');
  
  [min,min_i]=min(x); #min_index
  [max,max_i]=max(x);
  
  subplot(2,2,1);
  plot(n,x,n(min_i),min,'ro',n(max_i),max,'mx');
  grid on;
  
#           -1, x < 0;
#sign (x) = 0, x = 0;
#           1, x > 0.

#diff = pochodna metoda anlityczna

dx = sign(diff([0,x]));
ddx = diff([0,dx]);

# miejsce maksimum lokalnego dzieki zastosowaniu sign() to -1-1=-2 
# teraz szybki find i po tragedii
subplot(2,2,2);
plot(n,x,n,dx,'r',n,ddx,'m');
legend('x(n)','dx/dt','d^2x/dt');

local_min_values=find(ddx<-1); 
# bo w diff dodalismy 0 wiec wszystki jest przesuniete o 1
local_min_values-=1; 

local_max_values=find(ddx>1); 
# bo w diff dodalismy 0 wiec wszystki jest przesuniete o 1
local_max_values-=1; 

subplot(2,2,3);
plot(n,x,n(local_min_values),x(local_min_values),'ro',n(local_max_values),x(local_max_values),'mx');
    
endfunction

n=0:0.001:1;
A=[1,2,1.2];
f=[10,8,6]; %Hz
phase=[pi/2,1.5*pi,0.8*pi];

[max_n,min_n] = signal_max_min(n,A,f,phase);
