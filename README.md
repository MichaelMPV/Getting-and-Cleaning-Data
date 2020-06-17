Name: Cristhian Paucar Ventura
Datetime: 16/06/2020 22:31:00


El analisis de que se hizo para convertir los datos desordenados a datos ordenados esta en el archivo llamado run.analys.R


En este archivo Scrit R se podrá apreciar que inicia haciendo la descarga  y luego se procede a hacer  la lectura  de los documentos
Además en el  Scrit se han etiquetado  los  puntos con # para poder explicar a continuación


En el Punto #1 se observa lo siguiente 
Luego se extrae los campos de las diferentes archivos de donde se necesita obtener los datos para poder ordenarlos para luego fusionar los conjuntos de entrenamiento  
En el Punto #2 se observa lo siguiente 
Extrae solo las mediciones de la media y la desviación estándar para cada medición.
En el Punto #3 se observa lo siguiente 
Utiliza nombres descriptivos de actividades para nombrar las actividades en el conjunto de datos
Esto se hace leyendo las etiquetas del archivo activity_labels.txt
 En el Punto #4 se observa lo siguiente 
Etiqueta adecuadamente el conjunto de datos con nombres descriptivos de variables. Reemplazamos los conjuntos de datos  con "names_data" 
 En el Punto #5 se observa lo siguiente 
Se crea un segundo conjunto de datos ordenado independiente con el promedio de cada variable para cada actividad y cada sujeto. Una ves ordenado se genera con ayuda de la funcion write.table() el archivo  data_convert_tidy.txt