#!/bin/zsh

mkdir wyniki

for i in $(ls dane_dla_studentow)
do
	echo $i
	sed -e "s/NAZWA_ZBIORU/dane_dla_studentow\/$i/g" wyniki/tresc_zadania_wypelniona.rmd > temp.rmd
	Rscript knit_students.R
	mv temp.html wyniki/$i.html
	rm temp.rmd temp.md
done
