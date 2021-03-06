
################################################################################
########### LINEAS SENCILLAS Y GGPLOT ##########################################
################################################################################


library(ggplot2)
library(hrbrthemes)


#Creamos nuestros datos
x <- c(1:5)
gastos <- c(400,322,444,55,800)
ingresos <- c(500,100,200,800, 500)


#Hacemos un gr�fico de l�neas
plot(x, ingresos, type = "b", pch = 6, 
     col = "#69b3a2", 
     xlab = "x", 
     ylab = "y", 
     main = "Evoluci�n financiera")


#A�adimos otra l�nea
lines(x, gastos, pch = 18, col = "red", type = "b", lty = 2)
# A�adimos una leyenda al gr�fico
legend("topleft", legend=c("Gastos", "Ingresos"),
       col=c("red", "blue"), lty = 1:2, cex=0.8)




#Con ggplot

x <- 1:5
data <- data.frame(x,gastos,ingresos)

# Creamos gr�fico con ggplot
ggplot(data, aes(x=x)) +
  geom_line(aes(y=ingresos), color="#69b3a2", size=2, alpha=0.9, linetype=1) +
  geom_line(aes(y=gastos), color="red", size=2, alpha=0.9, linetype=1)+
  ggtitle("Evoluci�n de algo")+
  theme_ipsum() 

