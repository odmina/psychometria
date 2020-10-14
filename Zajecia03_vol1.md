---
title: Rzetelność - jak dobrze test mierzy to, co mierzy
---

# Cel zajęć

## Po zajęciach powinniście umieć

- lepiej zrozumieć statystykę, jaka stoi za pomiarem rzetelności
- obliczyć rzetelność testu z wykorzystaniem wybranych metod
  - korelacja między testem a retestem
  - korelacja między połówkami testu i wzór Spearmana-Browna

# PODSTAWOWA STATYSTYKA

## Zadanko: wynik prawdziwy i obserwowany - jedna osoba

$$X_o=X_t+X_e$$
$X_o$ - wynik obserwowany  
$X_t$ - wynik prawdziwy  
$X_e$ - błąd 

# Rzetelność i dwukrotne badanie testem

## Test-retest

- **PRZYKŁAD:**
	- Test pewnej cechy, która jest względnie stała w czasie, np. samooceny, sumienności, ekstrawersji. W naszym teście można otrzymać od 0 do 30 punktów, tak jak SES ma 10 pytań z 4 stopniową skalą Likerta
- **JAK OSZACOWAĆ RZETELNOŚĆ:**
	- technika test-retest 
	- korelacja między wynikami dwukrotnie przeprowadzonego testu

## Dlaczego to robimy

Zakładamy, że poziom naszej cechy w jakimś okresie powinien być (w miarę) stały. Np. osoby z wysoką samooceną powinny mieć wysoką samoocenę 09 października i 16 października. Tym samym u danej osoby nasz test powinien dać zbliżone wyniki w obu pomiarach. Jeżeli badamy grupę osób i policzymy korelację między dwoma pomiarami, a test jest rzetelny, korelacja będzie wysoka.

## Nasze dane

- Badamy stabilność czasową wyników metodą test - retest.
- Wyniki w teście podczas pierwszego pomiaru oznaczamy jako T1.
- Wyniki w teście podczas drugiego pomiaru oznaczamy jako T2.

## Jak to policzymy???

Here comes R :)  
Zadanko 2 test_retest

## 0 - dwa identyczne pomiary

![](img/tt1.png){#id .class height=350px}  
$r_{tt}=1$

## I - dodane trochę błędu do drugiego pomiaru

![](img/tt09.png){#id .class height=350px}  
$r_{tt}=0.8906881$

## II - dodane więcej błędu do drugiego pomiaru

![](img/tt07.png){#id .class height=350px}  
$r_{tt}=0.7064398$

## III - całkowicie losowe wyniki w drugim pomiarze

![](img/tt00.png){#id .class height=350px}  
$r_{tt}=-0.009529104$

# WAŻNE: testy równoległe

- mają taką samą średnią
- mają takie samo odchylenie standardowe
- mają takie same interkorelacje między itemami (o tym później)
- jeżeli spróbujemy skorelować ich wynik z jakąś inną zmienną, dla obydwu testów korelacja będzie taka sama