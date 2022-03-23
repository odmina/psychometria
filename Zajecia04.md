---
title: Rzetelność - podsumowanie i interpretacja indywidualnych wyników
---

# Ocena rzetelności indywidualnego wyniku

## Standardowy błąd pomiaru
$$SEM=s_x\sqrt{1-r_{tt}}$$  
  
Gdzie:  
$s_x$ - odchylenie standardowe wyników testowych  
$r_{tt}$ - rzetelność testu  

## Błąd pomiaru ma rozkład normalny
![By Dan Kernler - Own work, CC BY-SA 4.0, https://commons.wikimedia.org/w/index.php?curid=36506025](img/rn.png){#id .class height=350px}
<small>Zmodyfikowane z Dan Kernler, via Wikimedia Commons [link](https://commons.wikimedia.org/w/index.php?curid=36506025), licencja [CC BY-SA 4.0](https://creativecommons.org/licenses/by-sa/4.0/deed.en)</small>

## SEM to odchylenie standardowe błędu pomiaru i dlatego:
- 68% wyników mieści się w zakresie +/- 1 SEM
- 75% wyników mieści się w zakresie +/- 1,15 SEM
- 90% wyników mieści się w zakresie +/- 1,64 SEM
- 95% wyników mieści się w zakresie +/- 1,96 SEM
- 99% wyników mieści się w zakresie +/- 2,58 SEM

## Zadanko
Skonstruujcie 95% przedział ufności dla wyniku 100 w teście o odchyleniu standardowym 15 i rzetelności 0,902
$$<X-1,96 SEM, X+1,96 SEM>$$
$$SEM=s_x\sqrt{1-r_{tt}}$$ 

## Błąd standardowy różnicy między dwoma wynikami
$SE_{diff}=\sqrt{SEM_1^2+SEM_2^2}$
$SE_{diff}=\sqrt{s_{x1}^2(1-r_{tt1})+s_{x2}^2(1-r_{tt2})}$
$SE_{diff}=s_{x}\sqrt{2(1-r_{tt})}$  

## $SE_{diff}$ również ma rozkład normalny
...i dlatego mamy 95% szansy, że różnica wynosząca minimum $1,96 * SE_{diff}$ jest nieprzypadkowa.  
W tym przypadku poziom ufności p wynosi $1-0.95=0.05$

## Zadanko
W teście o rzetelności 0,9 i odchyleniu standardowym 5 otrzymaliśmy u jednego badanego wynik 25 a u drugiego 35. Czy mamy prawo twierdzić, że te wyniki się różnią? Przyjmijcie p = 0.05  
$SE_{diff}=s_{x}\sqrt{2(1-r_{tt})}$

# Normy

## Wynik standardowy

- Każdy wynik w teście możemy przeliczyć na wynik standardowy w oparciu o dane z próby normalizacyjnej. 
- Potrzebujemy w tym celu informacji o średniej i odchyleniu standardowym w próbie normalizacyjnej.
- Liczymy go (m.in.) po to, by zorientować się, jaki jest wynik osoby badanej na tle innych.

## Jak policzyć wynik standardowy

$$z = \frac{X - M}{SD}$$

Gdzie:  
$z$ - wynik standardowy  
$X$ - wynik osoby badanej  
$M$ - średnia  
$SD$ - odchylenie standardowe  

## Wyniki przeciętne, niskie, wysokie...

- Wyniki niskie: $z<-1$
- Wyniki przeciętne $-1<z<1$
- Wyniki wysokie: $z>1$

## Skale

- Skala T: 0-100, $M = 50$, $SD = 10$
- Skala stenowa: 1-10, $M = 5,5$, $SD = 2$
- Skala staninowa: 1-9, $M = 5$, $SD = 2$
- Skala IQ: $M = 100$, $SD = 15$
- Skala tetronowa: 0-21, $M = 10$, $SD = 4$

## Jak przeliczyć wynik standardowy na wybraną skalę?

$wynik na nowej skali = {SD}{z} + M$

Gdzie:

$z$ - wynik standardowy   
$M$ - średnia SKALI NA KTÓRĄ PRZELICZAMY  
$SD$ - odchylenie standardowe SKALI NA KTÓRĄ PRZELICZAMY  

# Podsumowanie wiedzy o rzetelności

## Źródła błędu a rzetelność
- niezgodność/niespójność w ocenach sędziów
- zmienność w czasie
- brak zgodności wewnętrznej testu i błędy w doborze treści

## Metody szacowania rzetelności vs źródła błędu
+-----------------------+------------------------------------------+
|Źródło błędu			      |Metody									   |
+:======================+:=========================================+
|Sędziowie			       	|Ocena tego samego materiału  			   |
|						            |przez dwóch sędziów i obliczenie  	       |
|					  	          |- współczynnika korelacji                 |
|					            	|- kappa Cohena							   |
+-----------------------+------------------------------------------+

----------

+-----------------------+------------------------------------------+
|Źródło błędu			|Metody									   |
+:======================+:=========================================+
|Zmienność w czasie		|Technika test - retest  				   |
|						|i obliczenie współczynnika korelacji  	   |
|						|między testem i retestem				   |
+-----------------------+------------------------------------------+

----------- 

+-----------------------+------------------------------------------+
|Źródło błędu			|Metody									   |
+:======================+:=========================================+
|Dobór (próbkowanie)	|Ocena korelacji między połówkami testu	   |  
|i heterogeniczność     |(pamiętaj o wzorze Spearmana-Browna)	   |
|treści					|Ocena korelacji między wersjami   		   |
|						|alternatywnymi  						   |
|						|Ocena spójności wewnętrznej  			   |
|						|- K-R20								   |
|						|- Alfa Cronbacha						   |
+-----------------------+------------------------------------------+

## Jak zwiększać rzetelność? [@mcintire2007foundations]

:::incremental
- dodanie pytań
- zwiększenie homogeniczności testu
- skrócenie interwału pomiędzy testem i retestem (uwaga na efekt wprawy!)
- zwiększenie efektywności przeprowadzania testu
- ostrożność podczas oceniania
- ograniczenie zgadywania lub odpowiadania nieszczerze / bez zaangażowania 
:::

# Literatura

## Zajęcia przygotowane z wykorzystaniem

<small>