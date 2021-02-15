#To jest skrypt, który przerabia plik data.csv na coś strawnego dla studentów

library(tidyverse)
library(readr)
library(psych)

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

#import
  moje_dane <- read.delim("data.csv")

  #wybierz zmienne
  moje_dane <- moje_dane %>%
    select(Q1A,
     Q2A,
     Q3A,
     Q4A,
     Q5A,
     Q6A,
     Q7A,
     Q8A,
     Q9A,
     Q10A,
     Q11A,
     Q12A,
     Q13A,
     Q14A,
     Q15A,
     Q16A,
     Q17A,
     Q18A,
     Q19A,
     Q20A,
     TIPI1,
     TIPI2,
     TIPI3,
     TIPI4,
     TIPI4,
     TIPI5,
     TIPI6,
     TIPI7,
     TIPI8,
     TIPI9,
     TIPI10,
     VCL1,
     VCL2,
     VCL3,
     VCL4,
     VCL5,
     VCL6,
     VCL7,
     VCL8,
     VCL9,
     VCL10,
     VCL11,
     VCL12,
     VCL13,
     VCL14,
     VCL15,
     VCL16,
     testelapse)


  #wywal null
  moje_dane <- moje_dane %>%
    filter(Q1A != "NULL",
     Q2A != "NULL",
     Q3A != "NULL",
     Q4A != "NULL",
     Q5A != "NULL",
     Q6A != "NULL",
     Q7A != "NULL",
     Q8A != "NULL",
     Q9A != "NULL",
     Q10A != "NULL",
     Q11A != "NULL",
     Q12A != "NULL",
     Q13A != "NULL",
     Q14A != "NULL",
     Q15A != "NULL",
     Q16A != "NULL",
     Q17A != "NULL",
     Q18A != "NULL",
     Q19A != "NULL",
     Q20A != "NULL")

  #xamien na inty
  moje_dane$Q1A <- as.integer(moje_dane$Q1A)
  moje_dane$Q2A <- as.integer(moje_dane$Q2A)
  moje_dane$Q3A <- as.integer(moje_dane$Q3A)
  moje_dane$Q4A <- as.integer(moje_dane$Q4A)
  moje_dane$Q5A <- as.integer(moje_dane$Q5A)
  moje_dane$Q6A <- as.integer(moje_dane$Q6A)
  moje_dane$Q7A <- as.integer(moje_dane$Q7A)
  moje_dane$Q8A <- as.integer(moje_dane$Q8A)
  moje_dane$Q9A <- as.integer(moje_dane$Q9A)
  moje_dane$Q10A <- as.integer(moje_dane$Q10A)
  moje_dane$Q11A <- as.integer(moje_dane$Q11A)
  moje_dane$Q12A <- as.integer(moje_dane$Q12A)
  moje_dane$Q13A <- as.integer(moje_dane$Q13A)
  moje_dane$Q14A <- as.integer(moje_dane$Q14A)
  moje_dane$Q15A <- as.integer(moje_dane$Q15A)
  moje_dane$Q16A <- as.integer(moje_dane$Q16A)
  moje_dane$Q17A <- as.integer(moje_dane$Q17A)
  moje_dane$Q18A <- as.integer(moje_dane$Q18A)
  moje_dane$Q19A <- as.integer(moje_dane$Q19A)
  moje_dane$Q20A <- as.integer(moje_dane$Q20A)

  wszystkie <- c("Q1A", "Q2A", "Q3A", "Q4A", "Q5A", "Q6A", "Q7A", "Q8A", "Q9A", "Q10A", 
    "Q11A", "Q12A", "Q13A", "Q14A", "Q15A", "Q16A", "Q17A", "Q18A", "Q19A", "Q20A")

  for (i in wszystkie) {
    print (i)
    print (min(moje_dane[i]))
    print(max(moje_dane[[i]]))
  }

  #odwróć itemy
  moje_dane <- reverse_items(moje_dane, 
    c("Q3A", "Q4A", "Q6A", "Q7A", "Q9A", "Q10A", "Q11A", "Q14A", "Q16A", "Q17A"),
    1, 5)

  moje_dane$T1 <- apply(moje_dane[ , wszystkie], 1, sum)

  t1_mean <- mean(moje_dane$T1)
  t1_sd <- sd(moje_dane$T1)

  #alfa <- psych::alpha(moje_dane[,wszystkie])

  #(variance_T1 <- var(moje_dane$T1))

  #(error_variance <- variance_T1 * (1-alfa))

  #(error_sd <- sqrt(error_variance))

  #odfiltruj puste TIPI
  moje_dane <- moje_dane %>%
    filter(TIPI1 !=0,
     TIPI2 !=0,
     TIPI3 !=0,
     TIPI4 !=0,
     TIPI4 !=0,
     TIPI5 !=0,
     TIPI6 !=0,
     TIPI7 !=0,
     TIPI8 !=0,
     TIPI9 !=0,
     TIPI10 !=0)

TIPI <- c("TIPI1", "TIPI2", "TIPI3", "TIPI4", "TIPI4", "TIPI5", "TIPI6", "TIPI7", "TIPI8", "TIPI9", "TIPI10")

for (i in TIPI) {
    print (i)
    print (min(moje_dane[i]))
    print(max(moje_dane[[i]]))
  }

  #odwroć tipi
  moje_dane <- reverse_items(moje_dane, c("TIPI6", "TIPI2", "TIPI8", "TIPI4", "TIPI10"), 1, 7)

ile_plików <- 2
ile_linijek <- 500

dir.create("dane_popr")

setwd("dane_popr")

nry_albumu <- c("51621_mm", "51612_wk")

for (i in c(1:ile_plików)) {
  first_line <- (i-1) * ile_linijek + 70001
  last_line <- i*ile_linijek + 70000
  temp_data <- moje_dane[c(first_line:last_line),]
  file_num <- nry_albumu[i]
  file_name <- paste0("moje_dane_", file_num, ".csv")
  write.csv(temp_data, file_name)
}

setwd("~/Nextcloud/Zajecia/PSYCHOMETRIA/PRACA_ZALICZENIOWA/")
