# Chapter 2: Radio propagation and channel modeling up to 100GHz for 5G systems

Częstotliwość wpływa na to jakie mamy zjawiska w torze radiowym i z jaka jest ich intensywność.

Typowe scenariusze 5G:
- UMi - Street canyon, sygnały odbijają się od ścian budnynków, warunki najcięższe do modelowania, bo mamy wielodrogowość, poniżej wysokości okolicznych dachów
- UMIi - Open area, otwarta przestrzeń, 
- UMa - duże komórki miejskie, powyżej wysokości oklicznych dachów
- Indoor Office
- Indoor Shopping mall

`UM` - Urban Micro

`O2O` - outdoor-to-outdoor

`O2I` - outdoor-to-indoor

Typy propagacji fal:
- fala bezpośrednia i odbita, widoczność bezpośrednia
- fala odbita od jonosfery
- fala powierzchniowa

Model tłumienia w wolnej przestrzeni(Free space loss) - tu nic się nie tłumi na obiektach, tylko chodzi tylko i wyłącznie o rozproszenie sygnału(gęstość)

Prx = Ptx * Gtx * Grx(lambda/4\*pi\*R)^2

Gtx * Grx = 1 dla izotropowej

Izotropowa - promieniuje równomiernie w każdym kierunku

G = At*4pi/lambda^2

Im większa częstotliwość to mniejszy rozmiar anteny przeznaczonej do jej odbioru, a więc i mała moc sygnału odebranego.

Apertura efektyna/apertura izotropowa = ile razy więcej mamy małych kwadracików w stosunku do jednego kwadracika.

Tłumienie wynikające z atmosfery(para wodna, tlen), często są one pomijane.

Tłumienie wynikające z deszczu(rozproszenie fali radiowej na kroplach deszczu)

Odbicia fali radiowej

Fale milimetrowe, większa częstotliwośc, mniejsza długość fali, znaczenie może mieć tutaj chropowatość ścian(Rayleigh/Fraunhofer)

sigma >= lambda/cos(alfa) * Vi

Dyfrakcja - uginanie fali na przeszkodach, może pomogać w propagacji sygnału

Strefy Fresnela(położenie nadajników, częstotliwość) - w 1 przesyłane jest najwięcej sygnału

Tłumienie w zależności od materiału z jakiego jest wykonana przeszjoda

Statystycznie 80% ruchu w sieci pochodzi z wnętrza budynków

Modele propagacji:
- one slope
- PLCI - Path Loss close-in reference model
- PLCIF - Path Loss close in frequency-dependent
- alpha, beta, gamma

Efekty małej skali(small scale fading, fast fading[ale to nie do końca poprawna nazwa]) - zmieniają się częściej i szybciej:
- propagacja wielodrogowa - szczególnie w ruchu w środowisku wielko miejskim(superpozycja, wygłuszenie, wzmocnienie),
- efekt Dopplera - zmiana częstotliwości w zależności od prędkości 
    f_delta[Hz] = f[GHz] * v[km/h]
- sygnał jest "niezmienny" w czasie gdy tc ~ 1/4fd - kanał nie powinien się zmienić podczas trwania symbolu
- rozmycie rozprowszenia czasowego, czasu dostarczenia sygnału podczas wielodrogowości, problem pojawia się jak długość trwania symbolu jest mniejsza od rozmycia

Długość podnośnych w 5G i długość trwania symbolu może być różna, tak aby spełnić wymagania dotyczące ruchu(efekt dopplera) i wielodrogowość

Modelowanie toru radiowego dla anten kierunkowych i beamformingu:
- charakterystyka w rzeczywistym środowisku z reguły będzie inna niż w przypadku pomiarów z komory bezodbiciowej,
- dużo zależy do wzajemnego wpływu charakterystyki antenowej i kanału radiowego,
- rozproszenie w płaszczyźnie pionowej(vertykalnej) kilka stopni, `większe jest w horyzontalnej`(poziomej)
- przy tej samej ilości elementów antenowych(promienników), a innym układzie możemy zmienić sobie zysk(12x12 vs 24x6), kątowe rozproszenie w kanale radiowym

---

<div>
<a href="01-5g-use-cases-and-requirements.md">Prev: Chapter 1</a>
</div>
<div align="right">
<a href="03-multiantenna-systems-beamforming-and-massive-mimo-part-1.md">Next: Chapter 3</a>
</div>

