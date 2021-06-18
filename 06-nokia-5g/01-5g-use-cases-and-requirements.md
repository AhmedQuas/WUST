# Chapter 1: 5G use cases and requirements

Generacje sieci komórkowych:
- `1G` - '80 -'90, analogowa transmisja, transmisja głosu
- `2G` - '90 - 2000, cyfrowa transmisja danych, znaczny przeskok jakościowy, GSM, transmisja głosu,
- `3G` - 2000 - 2009, transmisja danych, wideo, serwisy streamingowe
- `4G` - 2009 - 2016, LTE, LTE-A, WiMax, szerokopasmowych przesył danych
- `5G` - 2016, `NR`(New Radio, konkretny standard(jedyny), który spełnia wymagania generacji 5G):
  - obsługa ogromnej ilości urządzeń IoT + ruch od ludzi, 
  - prędkość 100 Mbps, 
  - opóźnienia na poziomie 1 ms,
  - gwarancja określonej wartości przesyłu informacji,
  - podział sieci na mniejsze logiczne części - pozwalają na korzystanie z tego samego sprzętu przez operatora i zarazem oferowaniu różnych funkcji 

`GSM` - Global System for Mobile Communications,
`WCDMA` - Wideband Code Division Multiple Access,
`HS(D/U)PA` - High Speed(Downling/Uplink) Packet Access,
`LTE-(A)` - Long Term Evolution (Advanced),
`NR` - New Radio

Generacje zmieniają się średnio co dekadę.

Trójkąt use case 5G:
- `eMBB` - Extreme mobile broadband, szerokopasmowy dostęp do Internetu(prędkość najważniejsza) 10 Gbps, 100 Mbps, 90%
- `mMTC` - Massive machine type communication, obszar adresowany do IoT(czujniki, lodówki), wydajność energetyczna i możliwa liczba obsłużonych urządzeń na danej powierzchni
- `URLLC` - Ultra-reliable low-latency communication, opóźnienia i wysoka wiarygodność transmisji 99,999 %(5 -'9')

Wskaźniki wydajności, `KPI` - Key Performance Indicators:
- `peak user data rate(thorughput)` - szczytowa wartość przesyłu informacji(>10Gbps), czysto marketingowy zabieg, coś jak max prędkość auta, częściowo wskazuje jak wydajnie korzysta się z przydzielonego pasma. Osiągane dzięki szerokiemu pasmu, odpowiedniej modulacji, bliskiej odległości, MIMO
- `typical user data rate` - pasmo współdzielone z innymi użytkownikami, coś jak prędkość średnia, prędkość dużo niższa niż peak, możliwe coś koło 100 Mbps:
  - kolejkowanie, QoS,
  - problemy z komunikacji `outdoor to indoor` - duże straty propagacji
  - godziny szczytu dla telefonii 18 - 22
- `1 mln user devices/km^2`:
  - dla gęsto zurbanizowanych terenów,
  - komunikacja outdoor to indoor,
  - umowa podpisywana na bardzo długi okres czasu(10 lat i więcej, np dostawcy energii Tauron)
- `10 years on a single battery`:
  - battery leakage, sprawność baterii,
  - low data exchange,
  - sleep mode, DRX/DTX,
  - im wyższa częstotliwość, tym mniejsze tłumienie, co przkłada się na większy pobór mocy,
  - 5G jest znacznie bardziej wydajne energetycznie jeśli chodzi o sferę kontrolną
- `<1ms latency` - 1ms opóźnienia na interfejsie radiowycm, opóźnienie end-to-end może być znacznie wyższe. 
  - dobrze jest zdawać sobie sprawę, że istnieją technologie, które wymagają dużych przepływności i niskich opóźnień - VR/AR inne
- `99,999%` - osiągnięcie wysokiej wiarygoności wymaga dużych zasobów radiowych

wysoka wiarygodność i niskie opóźnienia = Industry 4.0(wyrywanie zagrożeń)

Komunikacja między ludźmi, maszynami i czujnikami

`FWA` - Fixed Wireless Access, ma na celu dostarczenie podobnej jakości transmisji radiowej jak ta spotykana w światłowodach. Znacznie prostszy montaż, na dobrą sprawę każdy to zainstalować CPE(Customer Premise Equipment Indoor/Outdoor jak bardzo tłumi szyba okienna). Urządzenia umieszczone na oknach w bezpośredniej widoczności z Access Unit, wszystko działa 

Obecnie operatorzy korzystają z eMBB(szybciej i taniej - GB/$), natomiast mMTC i URLLC to raczej rozwiązania na przyszłość

`3GPP` - dba głównie o rozwój 5G
R15 - pierszy release dotyczący 5G, skupia się głównie na eMBB,
R16 - URRLC, Critical machine communication,
R17 - jeszcze nie opublikowany, będzie dotyczył Massive machine communication(mMTC)

`HAPS` - High Altitude Platform Services, ruchome stacje bazowe

Ekosystem 5G
- 90% ruchu 5G to US, China, Japan and South Korea
- nowa technologia to olbrzymie wydatki na infrastrukture
- w US 350 mln użytkowników obsługuje 3 operatorów, China Mobile 870 mln, Europa 1,1mld, 170 operatorów

Głóni operatorzy:
- NTT DoCoMo - Japan, żeby było na olimpiadę w Tokyo
- China Mobile
- AT&T,
- Deutsche telekom - polski T-Mobile

Dostawcy sprzętu:
- Ericsson - Szwecja,
- Nokia - Finlandia,
- Huawei - Chiny
- ZTE - mniejszy brat Huawei
- Samsung - Korea Południowa, producent elektroniki wszelakiej

Beamforming - kształtowanie wiązki, efekt latarki, skupienia energii, śledzenie, przełączanie wiązki tak, aby podążała za klientem

FWA - rozwiązanie statyczne tu beamforming skupia wiązkę, aby przepustowość była jak największa

<div align="right">
<a href="02-radio-propagation-and-channel-modeling-up-to-100ghz-for-5g-systems.md">Next: Chapter 2</a>
</div>
