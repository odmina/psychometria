library(rmarkdown)
library(knitr)
knit("temp.rmd", output = "temp.md")
render("temp.md")