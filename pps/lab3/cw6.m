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

sample='sample.wav';
disp(audioinfo(sample));
[y,fs]=audioread(sample);

#sound(y,fs);
t=linspace(0,length(y)/fs,length(y));

#decimation
#d=8.0;                #modify this for resampling
#y2=y(1:d:length(y));
#t2=t(1:d:length(t));
#sound(y2,fs/d);      

#quantization
[y2,e]=my_quantize(y,4);
sound(y2,fs);
t2=t;


subplot(2,1,1);
plot(t,y);
legend("Normal sound");

subplot(2,1,2);
plot(t2,y2);
legend('Resampled, or quantized');
