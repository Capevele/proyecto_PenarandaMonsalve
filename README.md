# Proyecto Final Gestion y Almacenamiento de Datos
## Francia Elena Monsalve   2236260
## Carlos Enrique Penaranda 2236192


## *Contexto del Problema*
La compañía SG ubicada en EEUU compra y distribuye bebidas alcohólicas y No alcohólicas en 31 estados del país, cuenta con 43 bodegas de almacenamiento de producto.
Los productos son enviados desde 11341 fuentes (proveedores).
Algunos carriles (del proveedor hasta bodega SG) son importados y otros de compra interna (domésticos).
El área de gestión de inventarios debe optimizar el nivel de stock basándose en diferentes parámetros incluido el lead time.

Debido a la pandemia los tiempos de entrega se desestabilizaron y adicionalmente se presentó un cambio de proveedor logístico en el año 2022, lo que afecto la calidad y confiabilidad del dato dificultando la determinación correcta del Lead Time, que es un insumo directo para la correcta administración de la logística de transporte y los niveles de inventario. Aunque este año ha empezado a mejorar la confiabilidad de los datos del Lead Time y sus componentes.
 Las estimaciones del Lead Time se logran a través del cruce de información de diferentes fuentes (Excel, SQL, BlueYonder) y actualmente debido al volumen de información, limitación al momento de realizar limpieza de los datos, inconsistencias en los mismos y la herramienta empleada (Excel) este proceso se hace complejo y lento, y se dificulta aplicar métodos estadísticos que permitan dar un resultado más certero.

## *Descripcion del Proceso a replicar*
![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/08c60a9a-260a-4185-b6b0-8b62adb62154)

## *Descripcion de Archivos, Caracteristicas y Numero de Registros*
 ![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/28c8d6e1-def4-41cb-bba9-f1bde62f6928)

## *Archivos subidos al repositorio*
Se subieron dos Jupyter notebooks:
- Proyecto_PenarandaMonsalveWIP.ipynb
- Proyecto_PenarandaMonsalveSQLconnectionWIP.ipynb

El dashboard en Power Bi:
- Proyect_Dashboard.pbix

El archivo de Queries en SQL:
- Queries.sql

Los archivos con la informacion fuente no pueden ser compartidos, debido a restricciones de la empresa.

## *Proceso de cargue, exploracion, limpieza y transformacion*
- Parte 1 – Exploracion, transformacion y limpieza de datos. 
Cargue de datos
Revision del contenido de cada una de las tablas
Tratamiento de los datos nulos e invalidos
Exploracion grafica de relaciones entre variables
Eliminacion de columnas y filas no relevantes

- Parte 2 – Establecimiento de relaciones entre las tablas. 
El archivo base sera POData que sera enriquecido con informacion contenida en Network y en SGWarehouses.
Para extraer la informacion requerida de Network y SGWarehouses se hace necesario identificar o crear, llaves que permitan relacionar la tabla principal POData con las otras 2.

- Parte 3 – Empleo de herramientas de analitica de datos y reporte. 
Para las variables de interes se realizaran analisis estadisticos que permitan tener valores confiables.
Generacion de un reporte amigable que contenga valores a usar del TLT


## *Resultados de Analisis de Datos*
- Distribucion de los total lead time cargados en el sistema antes de los ajustes (TLT actuales) para todos los carriles

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/377525f1-854f-48d1-8894-6a8be45f730b)

- Distribucion del lead time posterior al analisis

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/2c3852f1-1551-4ce1-88e4-fa395c928da6)

Se observo que el TLT verificado a partir de la informacion real de las ordenes de compra, tiene un comportamiento similar al historico.
Lo que demuestra que hay una tendencia a la estabilizacion y normalizacion del proceso.

- Distribucion y peso de los carriles domesticos e importados

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/2553ac81-40f8-45b2-8ef2-296cdc560c6f)

- Distribucion de ordenes de compra por termino de pago

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/6596ff22-1742-409b-b0c7-f001d2044cc2)

- Distribucion de numero de POs por Pais de Origen para importados

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/2290efaf-85b5-4e4b-885a-558be56fbf99)

- Dispersion TLT existente cargado en el sistema

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/002bffd1-01b9-4fa1-9783-8ff24fceb857)

- Analisis de dispersion TLT propuesto para domestico e importado

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/3a1c722d-b3e0-4c62-ae54-6e3aeb562673)

Se nota como al eliminar los outliers y analizar la dispersion el TLT propuesto es un poco menor que el TLT existente 

## *Dashboard en Power Bi*
Adicionalmente se construyo un dashboard en power Bi que se conecto a la base de datos generada en SQLite3 y con esto se elaboro un dashboard mas dinamico.
A continuacion se muestra un pantallazo del dashboard

![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/44b09965-5456-4fc4-8eea-a758517bd14c)

Las conexiones establecidas entre las tablas:
![image](https://github.com/Capevele/proyecto_PenarandaMonsalve/assets/110875304/b9aa4a4b-cbab-45b6-8641-e10f5278313c)

## *Conclusion y aprendizaje del ejercicio*
Con el uso de las herramientas empleadas permiten la optimizacion para la realizacion de reportes como el descrito anteriormente.
Adicionalmente automatizan el proceso, manejando grandes volumenes de informacion de forma agil y rapida.
