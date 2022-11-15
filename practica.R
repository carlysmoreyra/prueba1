library(readr)
library(janitor)
BankChurners <- read_csv("Austral/Estadística/BankChurners.csv")
tabla <- table(BankChurners$Attrition_Flag, BankChurners$Gender)
chisq.test(tabla)

tabla1 <- table(BankChurners$Education_Level, BankChurners$Attrition_Flag)
chisq.test(tabla1)
tabyl(BankChurners, Attrition_Flag, Gender)
tabyl(BankChurners, Education_Level, Attrition_Flag)
BankChurners %>% 
  tabyl(Attrition_Flag,Gender) %>% 
  adorn_totals(c("row", "col")) %>% 
  adorn_percentages("row") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns()
BankChurners %>% 
  tabyl(Education_Level, Attrition_Flag) %>% 
  adorn_totals(c("row", "col")) %>% 
  adorn_percentages("row") %>%
  adorn_pct_formatting(digits = 2) %>%
  adorn_ns()