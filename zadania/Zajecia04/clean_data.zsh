#!/bin/zsh

## sprawdź, ile jest linijek w pliku csv
wc -l data.csv

## jak już zjadły, to zobacz oryginalną linijkę 13506 (13506+1 bo w oryginalnym pliku są jeszcze nagłówki kolumn)
head -n 13507 data.csv | tail -1

## hurra, psuje się przez " - wywal wszystkie, tylko z kopii pliku, a nie z oryginalnego
## na wszelki wypadek wywal też średniki
cp data.csv data_clean.csv
echo "liczba \" w data_clean.csv PRZED sed"
grep -c '"' data_clean.csv
echo "liczba ; w data_clean.csv PRZED sed"
grep -c ';' data_clean.csv
echo "razem do wywalenia"
grep -c '["|;]' data_clean.csv
sed -i '' 's/["|;]//g' data_clean.csv
echo "liczba \" w data_clean.csv PO sed"
grep -c '"' data_clean.csv
echo "liczba ; w data_clean.csv PO sed"
grep -c ';' data_clean.csv

wc -l data_clean.csv
