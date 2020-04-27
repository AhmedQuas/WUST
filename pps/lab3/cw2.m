clear all;
close all;
clc;

function [y,e] = my_quantize(x,bits)
Amax=max(x); #max aplitude
width=2^bits-1;
step=2*Amax/width;
y=round((x-min(x))/step);
y=min(x)+y*step;
e=x-y;
endfunction

#t=(-1:0.01:1);
#x=t;
t=(0:0.02:4*pi);
x=sin(t+0.25*pi);

[y,e]= my_quantize(x,2);

x0=0;
plot(t,x,t,y,'r.-',t,e,'g.',t,x0);
legend('x(t)-normal signal','y(t)-quantized','e(r) quantization error');