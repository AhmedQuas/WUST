clear all;
close all;
clc;

#Modulation types & minimum sensitivity at 20 MHz channel spacing, values in dBm
BPSK=-82;     
QPSK_1_2=-79;
QPSK_3_4=-77;
QAM_16_1_2=-74;
QAM_16_3_4=-70;
QAM_64_2_3=-66;
QAM_64_3_4=-65;
QAM_64_5_6=-64;

#100mW = 20dBm
d=(1:0.1:15);


function [LFS] = fsps(d) #Free space loss
  f=2400; #MHz
  LFS=32.44+20*log10(f)+20*log10(0.001*d);
endfunction

function [L] = multi_wall(pts)
  L=pts;
  light_wall=8; # [db]
  heavy_wall=13; # [db]
  Lc=0;          # In our example this const is eq 0 
  
  for i = 1:columns(pts)
    if pts(i) < 3
      L(i)=Lc + fsps(pts(i));
    elseif pts(i) < 5.5
      L(i)=Lc + fsps(pts(i)) + 1*heavy_wall;
    elseif pts(i) < 8
      L(i)=Lc + fsps(pts(i)) + 2*heavy_wall;
    elseif pts(i) < 9.25
      L(i)=Lc + fsps(pts(i)) + 3*heavy_wall;
    elseif pts(i) < 10.5
      L(i)=Lc + fsps(pts(i))+ 3*heavy_wall + 1*light_wall;
    elseif pts(i) < 13.0
      L(i)=Lc + fsps(pts(i))+ 3*heavy_wall + 2*light_wall;
    else
      L(i)=Lc + fsps(pts(i))+ 3*heavy_wall + 3*light_wall;
    end
  endfor
endfunction

function [mbs] = bit_rate(model_absorbtion)
  mbs=model_absorbtion;
  BPSK=-82;     
  QPSK_1_2=-79;
  QPSK_3_4=-77;
  QAM_16_1_2=-74;
  QAM_16_3_4=-70;
  QAM_64_2_3=-66;
  QAM_64_3_4=-65;
  QAM_64_5_6=-64;
  
  for i = 1:columns(model_absorbtion)
    if model_absorbtion(i) > QAM_64_5_6
      mbs(i)=72.2;
    elseif model_absorbtion(i) > QAM_64_3_4
      mbs(i)=65.0;
    elseif model_absorbtion(i) > QAM_64_2_3
      mbs(i)=57.8;
    elseif model_absorbtion(i) > QAM_16_3_4
      mbs(i)= 43.3;
    elseif model_absorbtion(i) > QAM_16_1_2
      mbs(i)= 28.9;
    elseif model_absorbtion(i) > QPSK_3_4
      mbs(i)= 21.7;
    elseif model_absorbtion(i) > QPSK_1_2
      mbs(i)= 14.4;
    elseif model_absorbtion(i) > BPSK
      mbs(i)= 7.2;
    else
      mbs(i)= 0;
    endif
  endfor
endfunction

#100mW = 20dBm

#one slop model for n=2
n=2;
L=fsps(1)+10*n*log10(d);
received_power_one_slop=20.-L;

# one slop model for n=7
n2=7;
L2=fsps(1)+10*n2*log10(d);
received_power_one_slop_2=20.-L2;

#multiwall
pts=[1,2,4,5,6,7,9,10,11,12,14,15];
#pts=[2,4,7,9,10,12,14,15];
#pts=(1:0.5:15);
mwm_absortion=multi_wall(pts);
received_power_mwm=20.-mwm_absortion;

figure(1);
plot(d,received_power_one_slop,"-.",d,received_power_one_slop_2,"-.",pts,received_power_mwm,'-x');
hold on;
title('Wykres mocy odebranej w funkcji odleglosci od punktu dostepowego dla danej trasy propagacji wraz z mocami czulosciowymi dla kanalu 20 MHz');
xlabel('Odleglosc od nadajnika [m]');
ylabel('Moc odebrana [dBm]');
legend("One slope n=2","One slope n=7","Multi wall model");
grid on;

line=linspace(0,15,500);
#line=(0:0.5:15);
plot(line,BPSK);
plot(line,QPSK_1_2);
plot(line,QPSK_3_4);
plot(line,QAM_16_1_2);
plot(line,QAM_16_3_4);
plot(line,QAM_64_2_3);
plot(line,QAM_64_3_4);
plot(line,QAM_64_5_6);

figure(2);
data_rate=bit_rate(received_power_mwm);
plot(pts,data_rate,'-x');
#data_rate=bit_rate(received_power_one_slop);
#plot(d,data_rate,'-x');
title('Wykres szybkosci transmisji w funkcji odleglosci');
xlabel('Odleglosc od nadajnika [m]');
ylabel('Max. szybkosc transmisji [Mb/s]');
legend("Multi wall model");
grid on;
