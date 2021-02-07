library(tidyverse)
library(gganimate)
library (gifski)
################################################################################

paises<- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

colnames(paises) <- c("Fecha_Reporte", 
                      "Código", 
                      "Pais", 
                      "Region",
                      "Nuevos_casos",
                      "Casos_Acumulados", 
                      "Nuevas_Defunciones",
                      "Defunciones_Acumuladas")


str(paises)
summary(paises)


unique(paises$Region)

paises$Region <- as.factor(paises$Region )

paises$Region <- factor(paises$Region, 
                        levels = c("EMRO","EURO","AFRO","WPRO","AMRO","SEARO","Other"),
                        labels = c("Mediterraneo Oriental","Europa","Africa","Pacífico","América", "Sureste de Asia", "Otros"))


par(mfrow = c(1,1))
plot(paises$Region, 
     main = "Regiones de la OMS",
     xlab = "Regiones",
     ylab = "Frecuencias",
     col = "red"
)

boxplot(paises$Nuevos_casos~paises$Region)

###############################################################################
## Verbo Dplyr (paréntesis)
# %>%  PIPES

colnames(paises)

paises$Fecha_Reporte

paises_filtrado <- paises %>% 
  select(Fecha_Reporte, Region, Nuevos_casos ) %>% 
  filter(Fecha_Reporte == "2020-08-29") %>% 
  arrange(Nuevos_casos)

###############################################################################

paises_filtrado <- paises %>% 
  group_by(Fecha_Reporte, Region) %>% 
  summarise( Casos_Totales = sum(Nuevos_casos))

class(paises_filtrado$Fecha_Reporte)


paises_filtrado$Fecha_Reporte <- as.Date(paises_filtrado$Fecha_Reporte, format = "%Y-%m-%d")

class(paises_filtrado$Fecha_Reporte)
class(paises_filtrado$Region)
class(paises_filtrado$Casos_Totales)

#Diagrama de cajas
ggplot(paises_filtrado, 
       aes(x = Fecha_Reporte, y = Casos_Totales, fill = Region)) + 
  geom_boxplot() 

#Diagrama de lineas
ggplot(paises_filtrado, 
       aes(x = Fecha_Reporte, y = Casos_Totales, col = Region)) + 
  geom_line() + 
  geom_point() +
  transition_reveal(Fecha_Reporte) +
  theme_dark()



colnames(paises)
paises_filtrado_pais <- paises %>%
  group_by(Fecha_Reporte , Pais) %>% 
  summarise(Casos_Nuevos = sum(Casos_Totales)) %>% 
  arrange(desc(Casos_Totales))


#Convertimos a Date
paises_filtrado_pais$Fecha_Reporte <- as.Date(paises_filtrado_pais$Fecha_Reporte, format = "%Y-%m-%d")

ggplot(paises_filtrado_pais,
       aes(x = Fecha_Reporte,
           y = Casos_Nuevos,
           color = Pais)) +
  geom_bar(stat="identity") +
  geom_line() 
#transition_reveal(Fecha_Reporte) 
#facet_grid(Pais~.) + 
#geom_line() +