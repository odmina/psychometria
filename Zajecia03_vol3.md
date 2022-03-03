---
title: Rzetelność związana z doborem treści
---

# Różne aspekty rzetelności

## Próbkowanie treści a zmienność wyników w czasie

- Wykorzystując do oceny rzetelności metodę test-retest badamy zmienność wyników w czasie, między jedną a drugą sytuacją testową
- Jest to tylko jedno z możliwych źródeł błędu
- Innym źródłem błędu jest to, jaką próbkę zachowania będziemy zbierać, innymi słowy to, jakie pozycje trafią do naszego testu

# Ocena rzetelności metodą polegającą na podzieleniu testu na połowy

## Szacowanie rzetelności metodą połówkową
- **PRZYKŁAD:**
  - przeprowadziliśmy w jakiejś grupie test tylko raz i chcemy oszacować jego rzetelność.
- **JAK OSZACOWAĆ RZETELNOŚĆ:**
  - współczynnik równoważności międzypołówkowej
  - korelacja między połówkami testu
  - ważne pytanie: jak dzielić test na połowy??

## Dlaczego dzielenie testu na połowy może pozwolić nam ocenić rzetelność

Zakładamy, że każda z połówek bada ten sam konstrukt, a zatem wyniki uzyskane z wykorzystaniem obydwu połówek powinny być ze sobą skorelowane.

------------

**Ważna uwaga**: oceniając rzetelność metodą test-retest i metodą połówkową oceniamy ją w odniesieniu do różnych źródeł błędu. Dla testu-retestu jest to zmienność wyników w czasie, a dla metody połówkowej dobór treści! Więc w obydwu przypadkach oceniamy rzetelność, ale dowiadujemy się czego innego.

## Uwaga: połówki testu są krótsze niż cały test

Więc siłą rzeczy rzetelność będzie niższa, ponieważ zbieramy mniejszą próbkę zachowania.

## Wzór Spearmana-Browna dla połówek testu
Do szacowania rzetelności całego testu na postawie współczynnika równoważności międzypołówkowej (korelacji między połówkami testu)
$$r_{tt}=\frac{2r_{pp}}{1+r_{pp}}$$
Gdzie:
$r_{tt}$ - rzetelność całego testu   
$r_{pp}$ - rzetelność połówek testu

# Ogólna wersja wzoru Spearmana-Browna

## Wzór Spearmana-Browna wersja ogólna
$$r_{nn}=\frac{nr_{cc}}{1+(n-1)r_{cc}}$$  
Gdzie:  
$r_{nn}$ - rzetelność testu wydłużonego **n** razy  
$r_{cc}$ - rzetelność testu, którą zmierzyliśmy  
Wartość $r_{nn}$ uzyskana ze wzoru Spearmana-Browna nigdy nie będzie większa od 1.
Kto wie dlaczego?   

## Wzór Spearmana-Browna można wykorzystać, by stwierdzić, ile razy należy wydłużyć test, aby uzyskać zakładaną rzetelność

# Rzetelność a spójność wewnętrzna testu

## Alfa Cronbacha wygląda tak

$$\alpha=(\frac{k}{k-1})(1 - \frac{\sum_{i=1}^{k}\sigma_i^2}{\sigma^2_X})$$  
Gdzie:  
k - liczba pozycji w teście  
$\sigma^2_X$ - wariancja wyniku w teście  
$\sigma_i^2$ - wariancja wyniku każdej z pozycji testowych  

## Albo tak

$$\alpha=(\frac{k^2 \overline{\sigma_{ij}}}{\sigma^2_X})$$  
Gdzie:  
k - liczba pozycji w teście
$\sigma^2_X$ - wariancja wyniku w teście
$\overline{\sigma_{ij}}$ - średnia kowariancja pozycji

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

$$KR_{20}=(\frac{k}{k-1})(1 - \frac{\sum_{i=1}^{q}p_i q_i}{\sigma^2_X})$$  
Gdzie:  
k - liczba pozycji w teście  
$\sigma^2_X$ - wariancja wyniku w teście  
$p_i$ - proporcja osób odpowiadających zgodnie z kluczem
$q_i$ - proporcja osób odpowiadających NIEzgodnie z kluczem 


