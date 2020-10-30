clc
clear

#Dane inicjalizujace
r=2.2;        #r[cm]
n_dziur=4;    #minimalna liczba otowrow 
n=3;          #liczba otworow polozonych blisko siebie

#Zalozenia projektowe
#Index:           

f=0.62*10^9;
a=50;                    #wymiary boku plyty [cm]
plyta=a*a;
min_sk_ekr=12;           #[dB] min teoretyczna skutecznosc ekranowania
pusta_przestrzen=0.024;  #2,4% przestrzeni otwartej

lambda=3*10^8/f;     
l=0.01*2*r;              #maksymalny wymiar liniowy [m], srednica kola 

S=20*log10(lambda/(2*l)); #rozmiar szczeliny a skutecznosc ekranowania

p_dziury=pi*r^2;
pow_proc_nieoslonieta=p_dziury*n_dziur/plyta*100

if S>12  
  if n>n_dziur
    disp("Liczba otowro polozonych blisko siebie nie moze byc wieksza od calkowitej liczby dziur");
  elseif pow_proc_nieoslonieta < pusta_przestrzen
    disp("Nie spelniono warunku dotyczacego pola przestrzeni nieos?onietej");
  else
    if n>1
      T=-20*log10(sqrt(n));
      S_KONCOWA=S+T;  #teoretyczna skutecznosc ekranowania
     end
     
  end
else
  disp("Nie spelniono zalozenia dotyczacego teoretycznej skutecznosci ekranowania");
end