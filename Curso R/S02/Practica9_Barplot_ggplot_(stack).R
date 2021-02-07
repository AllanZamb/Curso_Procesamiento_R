################################################################################
########### Practica 9 BARPLOTS GGPLOT Y ANIMADO STACK ###########################################################
################################################################################

library(ggplot2)
library(hrbrthemes)

# Creamos un Dataset para almacenar datos en pila
mes <- c(rep("ENERO" , 2) , 
            rep("FEBRERO" , 2) , 
            rep("MARZO" , 2) )


condicion <- rep(c("Ingreso" , "Gasto") , 3)


valor<- sample(seq(2000,10000),6)
data <- data.frame(mes,condicion, valor)

# Stack
ggplot(data, aes(fill=condicion, y=valor, x=mes)) + 
  geom_bar(position="stack", stat="identity")+
  ggtitle("StackBar de nuestra economía..") +
  theme_tinyhand() +
  xlab("Nuestros ingresos y gastos")+
  scale_fill_manual("Condición", values = c("Gasto" = "black", "Ingreso" = "orange"))

