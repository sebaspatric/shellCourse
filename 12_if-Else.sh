
# !/bin/bash
# Programa para ejemplificar eluso de la sentencia If-else
# Autor: Seba

notaClase=0
edad=0

echo "Ejemplo sentencia if - else"
read -p "Indique cuál es su edad:" edad
if [ $edad -le 17 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 18 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else 
    echo "La persona esadulto mayor"
fi



