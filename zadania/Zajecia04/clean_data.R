library(tidyverse)

NPAS <- read_tsv("data_clean.csv")

head(NPAS)

NPAS_items <- c("Q1", "Q2", "Q3", "Q4", "Q5", "Q6", "Q7", "Q8", "Q9", "Q10", "Q11", "Q12", "Q13", "Q14", "Q15", "Q16", "Q17", "Q18", "Q19", "Q20", "Q21", "Q22", "Q23", "Q24", "Q25", "Q26")

NPAS_total <- apply(NPAS[ , NPAS_items], 1, sum)

my_reverse <- function(item, min, max) {
  max - (item - min)
}

NPAS <- NPAS %>%
  mutate(ekstrawersja = TIPI1 + my_reverse(TIPI6, 1, 7),
    ugodowosc = my_reverse(TIPI2, 1, 7) + TIPI7)

