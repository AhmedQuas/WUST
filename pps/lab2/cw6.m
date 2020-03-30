clear
close all
clc

function [z] = hyperboloid()
x= -2:0.01:2;
y=x;
for i=1:length(x)
  for j=1:length(y)
    z(i,j)=abs(sqrt(x(i)^2+y(j)^2-1));
  endfor
endfor

surf(x,y,z);

#mesh(x,y,z);

endfunction

x= -2:0.1:2;
y=x;

z=hyperboloid();
