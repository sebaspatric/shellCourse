
# !/bin/bash
# Programa para ejemplificar el uso de la sentencia case
# Autor: Seba

opcion=""

echo "Ejemplo sentencia Case"
read -n1 -p "Ingrese una opciónde la A a la Z:" opcion
echo -e "\n"
case $opcion in
    "A") echo -e "\nOperación guardar Archivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "*") "Opción Incorrecta"
esac




