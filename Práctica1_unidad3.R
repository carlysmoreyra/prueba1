install.packages("DescTools")
library(DescTools)
library(readr)
Heart_disease <- read_delim("Heart_disease.csv", 
                            delim = ";", escape_double = FALSE, trim_ws = TRUE)

#ejercicio 1
MeanCI(Heart_disease$rest_SBP, sd = 23.5, method = "classic", conf.level = 0.95)

#ejercicio 2
VarCI(Heart_disease$rest_SBP, method = "classic", conf.level = 0.95)

#ejercicio 3
MeanCI(Heart_disease$rest_SBP, sd = NULL, method = "classic", conf.level = 0.95)

#ejercicio 4
library(janitor)
tabyl(Heart_disease, diameter_narrowing)
BinomCI(139, 303, conf.level = 0.95, method =  "clopper-pearson")
