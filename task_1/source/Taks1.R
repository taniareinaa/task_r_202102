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

#=========#
# Punto 3 #
#=========#