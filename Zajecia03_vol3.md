---
title: Rzetelność - spójność wewnętrzna i podsumowanie
---

# Rzetelność a spójność wewnętrzna testu 

## Alfa Cronbacha wygląda tak 

$$\alpha=(\frac{k}{k-1})(\frac{s^2_t-\sum_{i=1}^{k}s_i^2}{s^2_t})$$  
Gdzie:  
k - liczba pozycji w teście  
$s^2_t$ - wariancja wyniku w teście  
$s_i^2$ - wariancja wyniku każdej z pozycji testowych  

## Albo tak

$$\alpha=(\frac{k^2 \overline{s_{ij}}}{s^2_t})$$  
Gdzie:  
k - liczba pozycji w teście
$s^2_t$ - wariancja wyniku w teście
$\overline{s_{ij}}$ - średnia kowariancja pozycji

## Jaki jest sens alfy

- Na wariancję wyniku testowego składa się wariancja poszczególnych pozycji...
- ...oraz kowariancja (jest to termin zbliżony do korelacji) tych pozycji.
- Alfa jest miarą tego, jaką część ogólnej wariancji wyników w teście stanowi suma kowariancji poszczególnych pozycji.

## Jak to działa

- W hipotetycznej sytuacji, w której wariancja dla poszczególnych itemów zostaje taka sama...
- ...im większa kowariancja między poszczególnymi pozycjami...
- ...tym bardziej zróżnicowany (między badanymi) ogólny wynik w teście...
- ...i tym wyższa alfa.

------------

## Wyobraźcie sobie

- ...że odpowiadacie na pytania zupełnie ze sobą niezwiązane. Jaka będzie kowariancja między odpowiedziami na te pytania?
- ...że odpowiadacie na pytania w teście dotyczącym np. sumienności. Jaka będzie kowariancja między odpowiedziami na poszczególne pytania?

## Tym samym

Alfa Cronbacha jest miarą tego, jak bardzo jednorodny jest test. Zakładamy, ze **jednoczynnikowe** testy i skale mierzą jeden konstrukt i powinny być jednorodne. Alfa jest miarą rzetelności związanej z doborem treści.

## Wzór K-R20

- Wzór K-R20 jest podobny do alfy Cronbacha
- Można go zastosować w testach, w których mamy dwie możliwości odpowiedzi, jedną zgodną, a drugą niezgodną z kluczem

--------------

$$KR_{20}=(\frac{k}{k-1})(\frac{s^2_t-\sum_{i=1}^{q}p_i q_i}{s^2_t})$$  
Gdzie:  
k - liczba pozycji w teście  
$s^2_t$ - wariancja wyniku w teście  
$p_i$ - proporcja osób odpowiadających zgodnie z kluczem
$q_i$ - proporcja osób odpowiadających NIEzgodnie z kluczem 

# Podsumowanie wiedzy o rzetelności

## Źródła błędu a rzetelność
- niezgodność/niespójność w ocenach sędziów
- zmienność w czasie
- brak spójności wewnętrznej testu i błędy w doborze treści

## Metody szacowania rzetelności vs źródła błędu
+-----------------------+------------------------------------------+
|Źródło błędu			|Metody									   |
+:======================+:=========================================+
|Sędziowie			 	|Ocena tego samego materiału  			   |
|						|przez dwóch sędziów i obliczenie  	       |
|						|- współczynnika korelacji                 |
|						|- kappa Cohena							   |
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
