library(janitor)
library(readr)
data <- read_csv("BankChurners.csv")

summary(data)
data$Attrition_Flag <- as.factor(data$Attrition_Flag)
data$Gender<-as.factor(data$Gender)
data$Education_Level<as.factor(data$Education_Level)
data$Dependent_count <- as.factor(data$Dependent_count)
data$Marital_Status<-as.factor(data$Marital_Status)
data$Income_Category<-as.factor(data$Income_Category)
data$Card_Category<-as.factor(data$Card_Category)

library(dplyr)
summary(data)
count(data, Education_Level)
FrecAbsolutas <- table(data$Education_Level)


library(janitor)
tabyl(data, Education_Level)


barplot(table(data$Education_Level),
        main="Gráfico de barras para el nivel de Educación",
        ylim=c(0,3500),
        ylab="Frecuencia", font.axis=1, col="skyblue3", las=2)
plot(x = data$Education_Level,
     main = "Distribución de clientes según el nivel de educación",
     xlab = "Nivel Educativo", ylab = "Frecuencia Absoluta",
     col = "skyblue3",
     ylim=c(0,3500),las=2,
     cex.lab = 1.2, cex.axis = 0.8, font = 1)
box()