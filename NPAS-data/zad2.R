library("tidyverse")
library("psych")

npas <- read_delim("NPAS-data32.csv", ";")
problems(npas)

half1 <- c('Q1', 'Q3', 'Q5', 'Q7', 'Q9', 'Q11', 'Q13', 'Q15', 'Q17', 'Q19', 'Q21', 'Q23', 'Q25')
half2 <- c('Q2', 'Q4', 'Q6', 'Q8', 'Q10', 'Q12', 'Q14', 'Q16', 'Q18', 'Q20', 'Q22', 'Q24', 'Q26')

split_rtt <- npas %>% 
	select(one_of(half1)) %>%
	rowSums(.) %>%
	bind_cols(npas, total_h1 = .) 
	
split_rtt <- split_rtt %>%
	select(one_of(half2)) %>%
	rowSums(.) %>%
	bind_cols(split_rtt, total_h2 = .) 

split_rtt <- split_rtt %>%
	select(num_range('Q', 1:26)) %>%
	rowSums(.) %>%
	bind_cols(split_rtt, total = .)	

cat(" ", " ", sep = "\n")

print("KORELACJA MIĘDZYPOŁÓWKOWA")
cor(split_rtt$total_h1, split_rtt$total_h2)

cat(" ", " ", sep = "\n")

print("SPEARMAN-BROWN")
2*cor(split_rtt$total_h1, split_rtt$total_h2) / (1+cor(split_rtt$total_h1, split_rtt$total_h2))

cat(" ", " ", sep = "\n")

print('ALFA')
summary(alpha(npas[,1:26]))

