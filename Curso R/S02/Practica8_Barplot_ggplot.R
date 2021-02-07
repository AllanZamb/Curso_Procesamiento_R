################################################################################
########### Practica 8 BARPLOTS GGPLOT Y ANIMADO ###########################################################
################################################################################

library(ggplot2)
library(gganimate)

# Se crean dos dataframes y se unen
a <- data.frame(grupo=c("ENERO","FEBRERO","MARZO"), ingresos=c(200,300,500), frame=c(1,1,1) )
b <- data.frame(grupo=c("ENERO","FEBRERO","MARZO"), ingresos=c(500,800,1000), frame=c(2,2,2) )

#Unimos los dataframes
data <- rbind(a,b)  

# barplot basico
ggplot(a, aes(x=grupo, y=ingresos, fill=grupo)) + 
  geom_bar(stat='identity')

#################################################################################
######## OPCIONAL, SI DA TIEMPO ################################################
################################################################################

# Se a?ade el frame o transici?n de un estado a otro
ggplot(data, aes(x=grupo, y=ingresos, fill=grupo)) + 
  geom_bar(stat='identity') +
  theme_bw() +
  # gganimate estados:
  transition_states(
    frame,
    transition_length = 2,
    state_length = 1
  ) +
  ease_aes('sine-in-out')

# Almacenamos el Gif
anim_save("288-animated-barplot-transition.gif")

