# Elaborado por: Tania Reina
# Colaboradores: Hugo
# Fecha de elaboracion: 1/10/2021
# Ultima modificacion: 3/10/2021
# Version de R: 4.1.1

rm(list = ls())
if(!require(pacman)) install.packages(pacman) #cargar paquete, solo hoy, se borra luego 
if(!require(pacman)) install.packages(pacman)
require(pacman)
p_load(tidyverse,rio,skimr)
Sys.setlocale("LC_CTYPE", "en_US.UTF-8")

#=========#
# Punto 1 #
#=========#

Vector_incial=c(1:100)
cat(Vector_incial)
impares=seq(1,99,2)
cat(impares)
pares=Vector_incial[!Vector_incial %in% impares]
#=========#
# Punto 2 #
#=========#
cultivos=import("task_1/data/input/cultivos.xlsx")
colnames(cultivos) = cultivos[4,]
cultivos=data.frame(cultivos)
cultivos = cultivos %>% drop_na(CODMPIO)
cultivos=cultivos[-c(1,331), ]
cultivos$CODMPIO = as.numeric(cultivos$CODMPIO)
cultivos = cultivos %>% drop_na(CODMPIO)
anuales= 1999:2019 %>% as.character()
for(var in anuales)
  cultivos[,var] = as.numeric(cultivos[,var])
cultivos_pivot = cultivos %>% pivot_longer(!CODDEPTO:MUNICIPIO,names_to="ANUAL",values_to="HA_CULTIVOS")
#=========#
# Punto 3 #
#=========#