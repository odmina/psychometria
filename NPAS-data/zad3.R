library("tidyverse")
library("psych")

npas <- read_delim("NPAS-data01.csv", ";")
# npas <- read_tsv("data.csv")
problems(npas)

#policz totala z NPAS
npas <- npas %>%
	mutate(npas_total = rowSums(.[1:26]))

#zrekoduj TIPI i zrób total
npas <- npas %>%
	mutate(TIPI6r = recode(TIPI6, '1'=7, '2'=6, '3'=5, '4'=4, '5'=3, '6'=2, '7'=1)) %>%
	mutate(TIPIe = TIPI1 + TIPI6r)
 
glimpse(npas)

cat(" ", " ", sep = "\n")

print("KORELACJA Z NERDY")
cor.test(npas$npas_total, npas$nerdy)

print("KORELACJA TIPI")
cor.test(npas$npas_total, npas$TIPIe)
