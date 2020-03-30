clear
close all
clc

function dumped_sinus(m,a_max)
t=(0:0.0001:1); #s
f=30; #hz
xt1=sin(2*pi*f*t+pi/2).*e.^(-m(1)*t);
xt2=sin(2*pi*f*t+pi/2).*e.^(-m(2)*t);
xt3=sin(2*pi*f*t+pi/2).*e.^(-m(3)*t);

subplot(2,2,1);
plot(t,xt1);
subplot(2,2,2);
plot(t,xt2);
subplot(2,2,3);
plot(t,xt3);

for i=1:length(t)
  if xt1(i) > a_max(1)
    xt1(i)=a_max(1);
  elseif xt1(i) < -a_max(1)
    xt1(i)=-a_max(1);
  endif
  if xt2(i) > a_max(2)
    xt2(i)=a_max(2);
  elseif xt2(i) < -a_max(2)
    xt2(i)=-a_max(2);
  endif
  if xt3(i) > a_max(3)
    xt3(i)=a_max(3);
  elseif xt3(i) < -a_max(3)
    xt3(i)=-a_max(3);
  endif
endfor

if nargout==0
figure();
subplot(2,2,1);
plot(t,xt1);
subplot(2,2,2);
plot(t,xt2);
subplot(2,2,3);
plot(t,xt3);
endif
endfunction
m=[1,4,8];
a_max=[0.75,0.50,0.25];
dumped_sinus(m,a_max);
