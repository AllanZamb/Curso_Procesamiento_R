################################################################################
################ PRACTICA 2 LISTAS DE DATOS ##################################
################################################################################

#En esta práctica vamos a aprender a crear listas de datos (mixtos)
#Ejercicio 1. Crear los siguientes vectores con los tipos de datos caracter, entero, lógico y numérico
mi_Vector_caracteres
mi_Vector_enteros
mi_Vector_logico
mi_Vector_numerico

#Ejercicio #2 crea una lista con los valores de los vectores anteriores
mi_lista <- list(mi_Vector_caracteres, mi_Vector_enteros, mi_Vector_numerico, mi_Vector_logico)


#Acceder a los registros de las estructuras
mi_Vector_caracteres[1:5]
mi_lista[1:2]


#Creando una lista con dos variables caracter, una con variables numéricas, y otra con un vector numérico 
familia <- list(padre = "Carlos", madre = "María", num_hijos = 3, edad_hijos =c(3,5,7), nombre_hijos = c('Alan', 'Javier', 'Eduardo'))
familia2 <- list(padre = "Joaquin", madre = "Sofia", num_hijos = 2, edad_hijos =c(3,8,5), nombre_hijos = c('José', 'Agustin','Fernanda'))


#Unir a las familias
familias<-append(familia,familia2)
familias <- as.data.frame(familias)


#Unir familias con DataFrame
library(plyr)
familia <- as.data.frame(familia)
familia2 <- as.data.frame(familia2)
familias <- rbind.fill(familia, familia2)




