clear all;
close all;
clc;

function fp = perceived_freq(f,fs)

fp=abs(f-fs*round(f/fs))


if nargout == 0
N=100000      #assume that is analog signal
t1=(0:1/N:1);
x1=sin(2*pi*f*t1);

d=N/fs;
t2=t1(1:d:end);
x2=x1(1:d:end);

plot(t1,x1,t2,x2,'*-');
grid on;
xlabel('t[s]');
ylabel('Amplitude');

endif
endfunction

#fp = perceived_freq(100,200);

perceived_freq(30,70);
