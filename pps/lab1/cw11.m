x=0:0.01:pi/2;
signal=sin(x*pi*pi+pi/2);
noise=randn(size(x));

subplot(2,2,1);
plot(x,signal);

subplot(2,2,2);
plot(x,noise);

subplot(2,2,3);
plot(x,signal+noise);

SNR=sum(signal.*noise);
