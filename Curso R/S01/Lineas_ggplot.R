
################################################################################
########### LINEAS SENCILLAS Y GGPLOT ##########################################
################################################################################


library(ggplot2)
library(hrbrthemes)


#Creamos nuestros datos
x <- c(1:5)
gastos <- c(400,322,444,55,800)
ingresos <- c(500,100,200,800, 500)


#Hacemos un gráfico de líneas
plot(x, ingresos, type = "b", pch = 6, 
     col = "#69b3a2", 
     xlab = "x", 
     ylab = "y", 
     main = "Evolución financiera")


#Añadimos otra línea
lines(x, gastos, pch = 18, col = "red", type = "b", lty = 2)
# Añadimos una leyenda al gráfico
legend("topleft", legend=c("Gastos", "Ingresos"),
       col=c("red", "blue"), lty = 1:2, cex=0.8)




#Con ggplot

x <- 1:5
data <- data.frame(x,gastos,ingresos)

# Creamos gráfico con ggplot
ggplot(data, aes(x=x)) +
  geom_line(aes(y=ingresos), color="#69b3a2", size=2, alpha=0.9, linetype=1) +
  geom_line(aes(y=gastos), color="red", size=2, alpha=0.9, linetype=1)+
  ggtitle("Evolución de algo")+
  theme_ipsum() 

