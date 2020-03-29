clear
close all
clc

function result = find_primes(scope)
scope=50;
n=1:scope;
result=[];
len=length(n);
  for i=1:len
    if n(i)!=0 && isprime(n(i)) #dodac do wektora wynikowego
      result(end+1)=n(i);
      j=2*n(i);
      while (j<=scope)
        n(j)=0;
        j+=n(i);
      endwhile
    endif
  endfor
  n(1)=0;
endfunction

primes=find_primes(50);