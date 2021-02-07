library(tidyverse)
library(dplyr)

paises <- read.csv("https://covid19.who.int/WHO-COVID-19-global-data.csv")

colnames(paises) <- c("Fecha_de_reporte", 
                      "Código_de_país", 
                      "Paises", "Región_OMS" ,
                      "Casos_Nuevos", 
                      "Casos_Acumulados", 
                      "Defunciones_Nuevas", 
                      "Defunciones_Acumuladas" )



paises$Fecha_de_reporte <- as.Date(paises$Fecha_de_reporte, format = "%Y-%m-%d" )


paises_filtrados <- select(paises, Fecha_de_reporte, Paises, Casos_Acumulados )
paises_filtrados <- filter(paises_filtrados, Fecha_de_reporte >" 2020-11-05" & Fecha_de_reporte < "2021-02-05" )
paises_filtrados <- rename(paises_filtrados, Total_de_casos = Casos_Acumulados)
paises_filtrados <- mutate(paises_filtrados, 
                           Paises = str_to_title(paises_filtrados$Paises), 
                           Acumulados_por_millón = Total_de_casos * 1000000 /5 )
paises_filtrados <- arrange(paises_filtrados, desc(Total_de_casos))



# Pipes
# Windows crt + shift + m
# Mac Cmd + shift + m


paises_filtrados_pipe <- paises %>% 
  select(Fecha_de_reporte, Paises, Casos_Acumulados) %>% 
  filter(Fecha_de_reporte >" 2020-11-05" & Fecha_de_reporte < "2020-12-05" ) %>% 
  rename(Total_de_casos = Casos_Acumulados) %>% 
  mutate(Paises = str_to_title(paises_filtrados$Paises), 
         Acumulados_por_millón = Total_de_casos * 1000000 /5) %>% 
  arrange(desc(Total_de_casos))




group.colors <- c("#333BFF", "#CC6600","#9633FF", "#E2FF33", "#E3DB71","#E2FF33", "#E3DB71")

ggplot(sitrep, aes(fill=WHO_region, y=New_cases, x=Date_reported)) + 
  geom_bar(position="stack", stat="identity")
scale_fill_manual(values=group.colors)