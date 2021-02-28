Zadanie 1.0(Pkt. 4.0):
Utwórz skrypt createDirs.sh. Nadaj mu prawo do wykonywania (chmod). Skrypt powinien przyjmować jeden argument (wewnątrz skryptu do pierwszego argumentu odwołujemy się poprzez $1).
W skrypcie umieść rozwiązania poniższych zadań (Przed kodem dotyczącym każdego podzadania
umieść komentarz z numerem zadania np. #Z1):
1. Utwórz katalog do którego ścieżkę wskazuje pierwszy argument.
2. Przejdź do utworzonego katalogu
3. Wewnątrz katalogu utwórz następującą strukturę folderów/plików:
```
./
    d1/
        d1.1/
        t1.txt
    d2/
        d2.1/
        f1.csv
    d3/
        d3.1/
        d3.2/
            f2.csv
    Aa
    Bb
    Cc
```
4. Przenieś plik t1.txt do katalogu d1.1.
5. Skopiuj plik f1.csv do katalogu d1
6. Zmień nazwę katalogu Aa na Aa1
7. Wylistuj katalogi, których nazwy kończą się cyfrą 1 lub 2 (ls, wildcards).
8. Wyświetl rozmiary katalogów znajdujących się na pierwszym poziomie utworzonego folderu
(du).

---

Zadanie 1.1(Pkt. 4.0):
Utwórz skrypt copyDirTree.sh. Nadaj mu prawo do wykonywania. skrypt powinien przyjmować dwa
argumenty ($1, $2)
1. Utwórz katalog, ścieżkę do którego wskazuje drugi argument.
1
2. Skopiuj rekursywnie katalog wskazywany przez pierwszy argument do wcześniej stworzonego
katalogu.
3. Przejdź do wcześniej stworzonego katalogu.
4. Wylistuj jego zawartość (long format)(ls).
5. Wyświetl drzewo plików, pokazujące rozmiary plików i katalogów(tree).
6. Wyświetl bezwzględną ścieżkę do katalogu, w którym się znajdujesz.
7. Wróć do wcześniejszego katalogu (nie do katalogu o jeden poziom wyżej (../). Należy cofnąć
operację cd z punktu 3.).
8. Usuń stworzony katalog.