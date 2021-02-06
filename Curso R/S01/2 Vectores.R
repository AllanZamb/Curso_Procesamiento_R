################################################################################
################ PRACTICA 2 VECTORES DE DATOS ##################################
################################################################################

#En este ejercicio vamos a practicar almacenar los diferentes tipos de datos en 
#Estructuras determinadas como Vectores

#Declaramos el objeto que almacenará el vector

#Vector numérico
mi_Vector_numerico <- c(1,2,3,4,5,6,7,8,9.99)

#Vector Caractéres
mi_Vector_caracteres <- c('1','2','3', 'a', 'b', 'c', "d", 'T', 'Hola')

#Vector Lógico
mi_Vector_logico <- c(T,F,F,F,T,FALSE,TRUE,TRUE,F)

#Vector Enteros
mi_Vector_enteros <- c(5L,6L,7L,3L,2L,3L,4L,5L,6L)

#Vector mixto 
mis_Vectores <- c(mi_Vector_logico, mi_Vector_numerico)



#Nombramos los elementos de un vector

mi_vector_frutas <- c(5,7,9,6)
names(mi_vector_frutas) <- c('Platanos', 'Fresas', 'Manzanas', 'Mandarinas')

#Versión corta
mi_vector_frutas <- c('Platanos'=5, 'Fresas'=7, 'Manzanas'=9, 'Mandarinas'=6)

mi_vector_frutas[4] <- 50







