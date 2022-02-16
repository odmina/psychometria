library("tidyverse")
library("psych")

npas <- read_tsv("data2.csv")
# npas <- read_tsv("data.csv")
problems(npas)

#policz totala z NPAS
npas <- npas %>%
	mutate(npas_total = rowSums(.[1:26]))

#funkcje
my_reverse <- function(item, min, max) {
  max - (item - min)
}
reverse_items <- function(df, items_to_reverse, min, max) {
  for(i in items_to_reverse) {
    df[[i]] <- my_reverse(df[[i]], min, max)
  }
  return(df)
}

#zrekoduj TIPI i zrób total - ekstrawersja
npas <- reverse_items(npas, c("TIPI6", "TIPI2", "TIPI8", "TIPI4", "TIPI10"), 1, 7)

#zrekoduj TIPI i zrób total - ekstrawersja
cor(npas$TIPI1, npas$TIPI6)
cor(npas$TIPI2, npas$TIPI7)
cor(npas$TIPI3, npas$TIPI8)
cor(npas$TIPI4, npas$TIPI9)
cor(npas$TIPI5, npas$TIPI10)

npas$E <- npas$TIPI1 + npas$TIPI6
npas(npas$TIPI2, npas$TIPI7)
npas(npas$TIPI3, npas$TIPI8)
npas(npas$TIPI4, npas$TIPI9)
npas(npas$TIPI5, npas$TIPI10)