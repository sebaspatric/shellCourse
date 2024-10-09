


# !/bin/bash
# Programa para revisar la declaración de variables

opcion=0
nombre=Marco

echo "Opcion: $opcion y Nombre $nombre"
# Exportar la variable nombre para queesté disponiblea los demás procesos
export nombre 

# Llamar alsiguiente script para recuperar la variable

./2_variables_2.sh

