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

function sqnr = calc_sqnr(x,bits)
[y,e] = my_quantize(x,2);

px=sum(x.*x)/length(x);
pe=sum(e.*e)/length(e);

sqnr=10*log10(px/pe);

endfunction

t=(0:0.02:4*pi);
x=sin(t+0.25*pi);

sqnr = calc_sqnr(x,2);

disp(sqnr);