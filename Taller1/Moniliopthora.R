# leemos los datos descargados y guardados
gbif_data <- read.csv(
  "gbiff_scaptotrigonas_colombia.csv",
  row.names = NULL, #necesario para que no numere las filas 
  stringsAsFactors = FALSE, 
  sep = "\t" #la separación de columnas es tipo "tab"
)

#gbif_data <- read_csv("scaptotrigona_colombia_gbif.csv")

#Cuantas especies hay?
tabla_sp <- table(gbif_data$species)

#Graficar las especies
barplot(
  tabla_sp,
  las = 2,
  main = "Ocurrencias de Scaptotrigona por especie (GBIF)",
  ylab = "Número de registros"
)

