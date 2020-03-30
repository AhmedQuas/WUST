clear
close all
clc

function o=bs_okrag(r,sr,N)

#dzielimy 2pi na N k?tów 
k=2*pi*(0:N-1)/N; 

o=zeros(N,2);
o(:,1)=r*cos(k);
o(:,2)=r*sin(k);

#teraz uwzgledniamy srodek
o(:,1)=o(:,1)+sr(1);
o(:,2)=o(:,2)+sr(2);

if nargout==0
  plot(o(:,1),o(:,2),'or');
  grid on;
endif
endfunction

bs_okrag(2,[2,2],40);