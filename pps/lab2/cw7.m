clear
close all
clc

function [y,polymonial_roots] = polymonial(x,an,a0,want_plot)

a=[an,a0];
y=polyval(a,x);
y1(1:length(x))=0;
polymonial_roots=roots(a);
y2(1:length(polymonial_roots))=0;
if nargin == 4
  if want_plot == true
    plot(x,y,x,y1,polymonial_roots,y2,'or');
  endif
endif

polymonial_roots=roots(a);


endfunction
x=-9:1:6;
an=[1,8,-5,-40,4];
a0=32;

[values,polymonial_roots_vec]=polymonial(x,an,a0,true);