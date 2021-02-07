################################################################################
### Práctica 6 .- Condicionales e iteradores
################################################################################

#Forma básica de if (si, algo) - else (de lo contrario haz otra cosa) 
if(4 > 5){
  print("Si, es verdadero")
  
}else{
  print("no, no es verdadero")
  
}

#Condición dependendemos de dos variables

numero1<- 15
numero2 <- 20

if(numero2 > numero1){
  print("Es verdadero")
  
}else{
  print("Es falso")
  
}

################################################################################
#Condición de tres variables
numero3 <- 50

#& Ampersand (AND) me asegura que mi condición sea obligada (las dos dos deben cumplir)
if(numero2 > numero1 & numero3 < numero2){
  print("Es verdadero")
  
}else{
  print("Es falso")
  
}
################################################################################

# | pipe (OR) me asegura que alguna de las dos debe cumplir (por lo menos una)
if(numero2 > numero1 & numero3 < numero2){
  print("Es verdadero")
  
}else{
  print("Es falso")
  
}
