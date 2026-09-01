
# Cargar librerías y archivo, determinar ruta del archivo
#install.packages("here") 
library(here)
library(readr)
archivo <-"cantidad_de_residuos_en_la_estacion_de_transferencia_2023.csv"
ruta_csv <- here("GitHub","Ciencia-de-Datos", "Data", archivo)
if (!file.exists(ruta_csv)) {
  stop(paste("No se encontro el archivo en:", ruta_csv))
  
}

#Carga de datos
df <- read_csv2(ruta_csv)
#Verificación de la carga de archivo
cat("--- Archivo cargando exitosamente desde:", basename(ruta_csv), "---\n")

#Análisis del Dataset
print(spec(df))
str(df)
head(df)

cat("--- TAMAÑO DEL ARCHIVO ---\n")
cat("Filas (Registros):", nrow(df), "\n")
cat("Columnas (Variables):", ncol(df), "\n\n")

#Conteo de valores faltantes
valores_nulos <- colSums(is.na(df))
duplicados_totales <- sum(duplicated(df))
cat("---EVALUACION DE DUPLICADOS---")
cat("Filas exactamente iguales:", duplicados_totales)
