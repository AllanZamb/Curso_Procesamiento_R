
###############################################################################
######################  PRÁCTICA 7 CICLO FOR    ##############################
#Ciclo FOR ( para cada elemento en mi vector... haz algo)

#La forma más eleaborada de imprimir un ciclo for es utilizando un vector numérico
mi_vector <- 1:5

for (i in mi_vector){
  print(paste('La variable activa es:',iterador))
}

################################################################################
########### 7. Concatenar variables

saludo <- 'Hola'
nombre <- readline("Introduce un nombre: ")
apellido <- readline("Cuál es tu apellido: ")
paste(saludo, nombre, apellido, ', mucho gusto')



################################################################################
#EJERCICIO
#Ciclo FOR con Readline y concatenar

meses <- c("ENERO", "FEBRERO", "MARZO")
ingresos <- c()
gastos <- c()


for (i in 1:3){
  print(paste("ESCRIBE UN VALOR PARA EL MES DE:",meses[i]  ))
  ingresos[i] <- readline("Introduce tu ingreso del mes:")
}

ingresos <- as.numeric(ingresos)



barplot(height=ingresos, 
        names=meses, 
        xlab = "Mes",
        #ylab = "Ingresos",
        main = "Gráfico",
        col="#69b3a2")


library(ggplot2)
tabla_ingresos <- data.frame(meses, ingresos)
ggplot(tabla_ingresos, aes(x=meses, y=ingresos, fill=meses)) + 
  geom_bar(stat='identity')+
  theme_light()+
  scale_fill_manual(values = c( "ENERO" = "orange", "FEBRERO"= "yellow", "MARZO" = "grey"))



