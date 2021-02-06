
################################################################################
########### BARPLOTS SENCILLOS ###########################################################
################################################################################


#Creamos nuestros datos
ingresos <- c(500,200,350,423,532)
gastos <- c(400,322,444,55,800)
meses <- c("Enero", "Febrero", "Marzo", "Abril", "Mayo")


# Barra horizontal
barplot(height=ingresos, 
        names=meses, 
        xlab = "Mes",
        #ylab = "Ingresos",
        main = "Gráfico",
        col="#69b3a2",
        density=c(5,10,20,10,7) , 
        angle=c(0,45,90,90,45))
        #horiz=T, las=3)


#Gráfico de Barras con datos
mi_barra <- barplot(height =  ingresos , border=F , names=meses , 
          las=2 , 
          col=c(rgb(0.3,0.1,0.4,0.6) , 
                rgb(0.3,0.5,0.4,0.6) , 
                rgb(0.3,0.9,0.4,0.6) ,  
                rgb(0.3,0.9,0.4,0.6)) , 
          ylim=c(0,1000), 
          main="Ingresos por mes" )

#Trazamos tres líneas
abline(v= c(1,3,5) , col="grey")

#Colocamos un indicador
text(mi_barra, max(ingresos)+100, ingresos) 

