################################################################################
########### Practica 10 FACTORES ###########################################################
################################################################################

#Cargamos nuestra base de datos
bikes <- read.csv("https://raw.githubusercontent.com/AllanZamb/ProcesamientoR/main/BASES/bikes.csv")

#Revisar nuestras variables antes de trabajar7

#Necesitamos revisar la estructura de nuestras variables
str(bikes)

#Necesitamos revisar el resumen de todas nuestras variables
summary(bikes)

#Trabajamos connversiones de datos de caracteres a factores

bikes$season <- factor(bikes$season, 
                       levels = c(1:4), 
                       labels = c("Invierno", "Primavera", "Verano", "Otoño") )


bikes$workingday <- factor(bikes$workingday, 
                           levels = c(0,1),
                           labels = c("No_laboral", "Laboral"))

#("Despejado", "Nublado", "LLuvioso")

bikes$weathersit <- factor(bikes$weathersit, 
                           levels = c(1,2,3),
                           labels = c("Despejado", "Nublado", "LLuvioso"))


#Vector de colores
colores <- c("#B0E9E6", "#56AD65", "#C4DC3E", "#CE8C33")


par(mfrow = c(2,2))

#Categorías 
plot(bikes$workingday, main = "Categorías de las dias laborales del año", 
     xlab = "Temporadas", 
     ylab = "Frecuencias", 
     ylim = c(0,500),
     col = colores)


plot(bikes$weathersit, main = "Categorías de los climas del año",
     xlab= "Climas",
     ylab = "Frecuencias", 
     col = colores)


plot(bikes$season, main = "Categorías de las estaciones del año", 
     xlab = "Temporadas", 
     ylab = "Frecuencias", 
     ylim = c(0,500),
     col = colores)


#Funciones para realizar subconjuntos de datos

invierno <- subset(bikes, season == "Invierno")$cnt
primavera <- subset(bikes, season == "Primavera")$cnt
verano <- subset(bikes, season == "Verano")$cnt
otoño <- subset(bikes, season == "Otoño")$cnt

par(mfrow = c(1,1))

#Cuantitativas
hist(primavera, main = "Histograma de renta de bicicletas", 
     xlab = "Primavera", 
     ylab = "Frecuencia", 
     col = "#56AD65", prob = T )

lines(density(primavera))
abline(v = mean(primavera), col = "green")
abline(h = 0.00010, col = "blue")




hist(verano, main = "Histograma de renta de bicicletas", 
     xlab = "Verano", 
     ylab = "Frecuencia", 
     col = "#C4DC3E", prob = T)
lines(density(verano))
abline(v = mean(verano), col = "green")
abline(v = median(verano), col = "blue")




hist(otoño, main = "Histograma de renta de bicicletas", 
     xlab = "otoño", 
     ylab = "Frecuencia",
     col = "#CE8C33", prob = T)
lines(density(otoño))
abline(v = mean(otoño), col = "green")
abline(v = median(otoño), col = "blue")

hist(invierno, main = "Histograma de renta de bicicletas", 
     xlab = "Invierno", 
     ylab = "Frecuencia", 
     col = "#B0E9E6", prob = T)
lines(density(invierno))
abline(v = mean(invierno), col = "green")
abline(v = median(invierno), col = "blue")


temporada <- split(bikes, bikes$season)

############################################
#PASAR A GGPLOT
ggplot(mapping = aes(x = primavera))+
  geom_histogram(bins = 30, col="white", fill="red")
