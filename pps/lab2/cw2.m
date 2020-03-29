clear
close all
clc

function [max_n,min_n] = signal_max_min(n,A,f,phase)
  y=A(1)*sin(2*pi*n*f(1)+phase(1))+...
  A(2)*sin(2*pi*n*f(2)+phase(2))+A(3)*sin(2*pi*n*f(3)+phase(3));
  [max_n, max_i]=max(y);
  [min_n, min_i]=min(y);
  plot(n,y,n(min_i),y(min_i),'ro',n(max_i),y(max_i),'mx');  
endfunction

n=0:0.001:1;
A=[1,2,1.2];
f=[10,8,6]; %Hz
phase=[pi/2,1.5*pi,0.8*pi];

[max_n,min_n] = signal_max_min(n,A,f,phase);