#install.packages("reticulate")

temperaturas <- c(18,22,15,25,30)
vector_filtrado <- temperaturas[temperaturas>20]
print(vector_filtrado)

print("-----------------------------------------------------")

edades <-c(9,10,22,19,35,60,65,70,75)
jubilados <-edades[edades>=65]
print(jubilados)

#aplico condicion de jubilacion
es_jubilado<-ifelse(edades>=65,"Es jubilado", "No es jubilado")
print(es_jubilado)

#verificacion de si todos son jubilados
jubilados_todos<-ifelse (all(edades>=65), "Todos son jubilados", "No todos son jubilados") 
print(jubilados_todos)


#verificacion de si al menos hay un jubilado
jubilados_uno_al_menos <-ifelse (any(edades>=65), "Hay al menos un jubilado", "No hay jubilados")
print(jubilados_uno_al_menos)

