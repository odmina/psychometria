#ten plik dzieli moje_dane.csv na pliki zawierające po 500 rekordów

setwd("~/Nextcloud/Zajecia/PSYCHOMETRIA/PRACA_ZALICZENIOWA/")      

library(dplyr)
library(readr)
library(psych)

moje_dane <- read.csv("moje_dane.csv")

(nka <- nrow(moje_dane))

any(is.na(moje_dane))

for (i in names(moje_dane)) {
  print(i)
  print(min(moje_dane[[i]]))
  print(max(moje_dane[[i]]))
}

nry_albumu <- read.csv("~/Nextcloud/Studenci_organizacyjne/LISTA_PZ_2rok_nry_albumu.csv")

ile_plików <- nrow(nry_albumu)
ile_linijek <- 500

dir.create("dane_dla_studentow")

setwd("dane_dla_studentow")

for (i in c(1:ile_plików)) {
  first_line <- (i-1) * ile_linijek + 1
  last_line <- i*ile_linijek
  temp_data <- moje_dane[c(first_line:last_line),]
  file_num <- nry_albumu[i, "Nr.albumu"]
  file_name <- paste0("moje_dane_", file_num, ".csv")
  write.csv(temp_data, file_name)
}

setwd("~/Nextcloud/Zajecia/PSYCHOMETRIA/PRACA_ZALICZENIOWA/")
