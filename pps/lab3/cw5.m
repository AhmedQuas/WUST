clear all;
close all;
clc;

c=334;      #light speed in [m/s]

f1=28710;   #28,71 kHz
f2=27130;   #27,13 kHz
fs=64*10^3; #sampling frequency 64kHz
k=30;       #count of full sin()

d=6.5;      #distance between Tx
x=1.5;      #coordinates od Rx
y=3;

#Calculate time delay t1=s1/c
delay1=sqrt(x^2+y^2)/c;
delay2=sqrt(x^2+(d-y)^2)/c;

#signal time -> T = 1/f; T*k=signal_time
signal_t1=1/f1*k;
signal_t2=1/f2*k;

#generate transmitted signal for Tx1
no_signal_1=(0:1/fs:delay1);       #no signal perioid
n1=(delay1:1/fs:delay1+signal_t1);

x_n1 = sin(2*pi*f1*n1);

n1=[no_signal_1, n1];               #no signal + generated signal
x_n1=[zeros(1,length(no_signal_1)),x_n1];

#generate transmitted signal for Tx2
no_signal_2=(0:1/fs:delay2);       
n2=(delay2:1/fs:delay2+signal_t2);

x_n2 = sin(2*pi*f2*n2);

n2=[no_signal_2, n2];               
x_n2=[zeros(1,length(no_signal_2)),x_n2];


#Different size of vectors size(vector,2)=vector 'x lenght'
if size(x_n2,2)>size(x_n2,2)
    so = x_n1;
    so(1:size(x_n2,2)) = so(1:size(x_n2,2)) + x_n2;
else
    so = x_n2;
    so(1:size(x_n1,2)) = so(1:size(x_n1,2)) + x_n1;
end

total_time=size(so,2);
n=(0:total_time-1)/fs;

plot(n,so);