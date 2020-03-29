clear 
clc
pkg load symbolic

t=(-1:0.01:1);
% we don`t have time - but dirac(0)=Inf
subplot(2,2,1);
z=dirac(t);
plot(t,z);
title("dirac from symbolic packake")

subplot(2,2,2);
t=(0.01:0.01:2);
z=[zeros(1,100),ones(1),zeros(1,99)];
plot(t,z);
