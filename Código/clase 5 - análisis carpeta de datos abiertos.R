# Cargar librerías y archivo, determinar ruta del archivo
library(here)
library(readr)
archivo <-"rupe-julio-2026.csv"
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

#ID Rut de los proveedores del Estado

cat("--- TAMAÑO DEL ARCHIVO ---\n")
cat("Filas (Registros):", nrow(df), "\n")
cat("Columnas (Variables):", ncol(df), "\n\n")

#Conteo de valores faltantes
valores_nulos <- colSums(is.na(df))
duplicados_totales <- sum(duplicated(df))
cat("---EVALUACION DE DUPLICADOS---")
cat("Filas exactamente iguales:", duplicados_totales)
