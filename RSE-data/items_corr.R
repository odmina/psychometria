library("tidyverse")
library("psych")

RSE <- read_tsv("data_scores.csv")

corr(RSE)