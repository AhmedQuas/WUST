Zadanie 3.0(Pkt. 3.5):
Utwórz skrypt txtFileStats.sh. Nadaj mu prawo do wykonywania. Skrypt powinien przyjmować dwa
argumenty ($1, $2). Pierwszy argument będzie zawierał ścieżkę do pliku tekstowego. Drugi natomiast ’słowo klucz’. W skrypcie umieść rozwiązania poniższych zadań (Przed kodem dotyczącym
każdego podzadania umieść komentarz z numerem zadania np. #Z1):
1. Wyświetl sposób kodowania pliku tekstowego (file).
2. Wyświetl liczbę linijek pliku tekstowego (wc).
3. Wyświetl liczbę wszystkich znaków w pliku tekstowym (wc).
4. Wyświetl rozmiar pliku, w sposób łatwo interpretowalny przez człowieka (To znaczy rozmiar
podany w B, kB, MB w zależności od dwielkości pliku) (du)
5. Policz linijki, w których występuje ’słowo klucz’ w pliku tekstowym (grep, wc)
• ’słowo klucz’ może być fragmentem innych słów.
6. Policz linijki, w których ’słowo klucz’ nie występuje (grep, wc)
7. Wyświetl 5 linię pliku tekstowego (cat, head, tail)

---

Zadanie 3.1(Pkt. 3.5):
Utwórz skrypt passwdStats.sh. Nadaj mu prawo do wykonywania. Skrypt przyjmuje jeden argument. Zadaniem skryptu jest wyciągnięcie zadanych informacji z pliku /etc/passwd i zapisanie ich
do wskazanych plików plików. W skrypcie umieść rozwiązania poniższych zadań (Przed kodem
dotyczącym każdego podzadania umieść komentarz z numerem zadania np. #Z1):
1. Utwórz katalog, ścieżkę do którego wskazuje pierwszy argument.
2. Wyświetl linijkę pliku /etc/passwd, odpowiadającą użytkownikowi, jako który jesteś zalogowana(ny) (whoami, grep). Nie wpisuj nazwy użytkownika ręcznie.
3. W utworzonym katalogu zapisz do pliku F1.csv(w utworzonym katalogu) użytkowników wraz
z nazwą ich katalogu domowego oraz nazwą powłoki/komendy. Listę posortuj zgodnie z odwróconym porządkiem alfabetycznym według nazwy użytkownika (cut,sort,cat).
4. W utworzonym katalogu zapisz do pliku F2.csv(w utworzonym katalogu) wszystkie nazwy powłoki/polecenia. Nazwy nie mogą się powtarzać. Wynik posortuj alfabetycznie według ostatniej litery w nazwie powłoki/polecenia (rev,uniq,sort).
5. Zapisz do pliku F3.txt(w utworzonym katalogu) nazwy użytkowników zapisane wielkimi literami (tr). To znaczy użytkownik student w pliku zostaje zapsany jako STUDENT
6. Znajdź w pliku linijkę odpowiadającą użytkowi student. Do pliku F4.txt wypisz 4 linijki
powyżej i poniżej tej linii (grep).
7. Użyj polecenia diff aby wskazać różnicę pomiędzy /etc/passwd, a F4.txt. Użyj formatu dwukolumnowego. Wynik zapisz do pliku differences.txt