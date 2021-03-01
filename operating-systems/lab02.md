Zadanie 2.0(Pkt. 7.0):
Utwórz skrypt links.sh. Nadaj mu prawo do wykonywania. skrypt powinien przyjmować jeden argument ($1). W skrypcie umieść rozwiązania poniższych zadań (Przed kodem dotyczącym każdego
podzadania umieść komentarz z numerem zadania np. #Z1):
1. Utwórz katalog, ścieżkę do którego wskazuje argument.
2. Wewnątrz katalogu utwórz następującą strukturę katalogów/plików:
```
<tworzony katalog>
    D1/
    D2/
        F1.txt
    D3/
        F1.txt
    D4/
        F1.txt
```
3. W katalogu ```\<tworzony katalog>/D1/``` utwórz dowiązanie symboliczne do pliku /etc/passwd
4. Wyświetl bezwzględną ścieżkę do pliku, na który wskazuje utworzone uprzednio dowiązanie
symboliczne (readlink).
5. W podkatalogu D2 utwórz twarde dowiązanie do pliku ```\<tworzony katalog>/D3/F1.txt```. Nazwij dowiązanie F2.txt
6. Zmień uprawnienia utworzonego wcześniej dowiązania tak, aby tylko właściciel miał uprawnienia do odczytu i zapisu. Pozostali nie mają dostępu do pliku (nie mogą go ani odczytać
ani do niego zapisywać).
7. Zmień grupę dowiązania na student (chown).
8. Zmień grupę katalogu ```\<tworzony katalog>/D3/``` na student (chgrp).
9. Zmień uprawnienia katalogu ```\<tworzony katalog>/D3/``` tak, aby nie można było do niego
wejść (polecenie cd ```\<tworzony katalog>/D3/``` zakończy się błędem). Pozostałe uprawnienia opzostają bez zmian.
10. Zmień uprawnienia katalogu ```\<tworzony katalog>/D2/``` tak, aby nikt nie mógł tworzyć w
nim plików i podkatalogów (polecenie touch ```\<tworzony katalog>/D2/X.txt``` zakończy się
błędem). Do katalogu można wejść oraz przejrzeć jego zawartość.
1
11. Zmień uprawnienia katalogu ```\<tworzony katalog>/D4/``` tak, aby nikt nie przeglądać jego zawartości polecenie ls ```\<tworzony katalog>/D4/``` zakończy się błędem). Do katalogu można
wejść, a także stworzyć w nim nowy plik.
12. Dla folderu ```\<tworzony katalog>/D4/``` ustaw sticky bit. Pozostałe uprawnienia pozostają bez
zmian.
13. W katalogu ```\<tworzony katalog>/D1/``` utwórz plik scr1.sh. Nadaj prawa do wykonywania
dla właściciela i grupy. Pozostali nie mają prawa wykonywać skryptu. Pozostałe uprawnienia
pozostają bez zmian.
14. Dla stworzonego wcześniej pliku ustaw SUID i SGID. Pozostałe uprawnienia pozostają bez
zmian