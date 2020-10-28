#To jest skrypt, który przerabia plik data.csv na coś strawnego dla studentów

library(dplyr)
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
     TIPI10)


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
    print(max(moje_dane[[i]]))
  }

  #odwróć itemy
  moje_dane <- reverse_items(moje_dane, 
    c("Q3A", "Q4A", "Q6A", "Q7A", "Q9A", "Q10A", "Q11A", "Q14A", "Q16A", "Q17A"),
    1, 5)

  moje_dane$T1 <- apply(moje_dane[ , wszystkie], 1, sum)

  t1_mean <- mean(moje_dane$T1)
  t1_sd <- sd(moje_dane$T1)

  alfa <- alpha(moje_dane[,wszystkie])$total$raw_alpha

  (variance_T1 <- var(moje_dane$T1))

  (error_variance <- variance_T1 * (1-alfa))

  (error_sd <- sqrt(error_variance))

  set.seed(12)
  moje_dane$true <- moje_dane$T1 + rnorm(nrow(moje_dane), mean = 0, sd = 1.2*error_sd)
  set.seed(13)
  moje_dane$T2 <- round(moje_dane$true + rnorm(nrow(moje_dane), mean = 0, sd = 1.2*error_sd))

  cor(moje_dane$T1, moje_dane$T2)

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

  #odwroć tipi
  moje_dane <- reverse_items(moje_dane, c("TIPI6", "TIPI2", "TIPI8", "TIPI4", "TIPI10"), 1, 7)

  #policz tipi
  moje_dane$otwartosc <- moje_dane$TIPI5 + moje_dane$TIPI10
  moje_dane$ugodowosc <- moje_dane$TIPI2 + moje_dane$TIPI7

moje_dane <- moje_dane[,c(wszystkie, "T1", "T2", "otwartosc", "ugodowosc")]

cor(moje_dane$T1, moje_dane$otwartosc)

cor(moje_dane$T1, moje_dane$ugodowosc)

set.seed(20)
moje_dane$kalafior <- round(rnorm(nrow(moje_dane), mean = 12, sd = 3))
min(moje_dane$kalafior)
max(moje_dane$kalafior)

write.csv(moje_dane, "moje_dane.csv")