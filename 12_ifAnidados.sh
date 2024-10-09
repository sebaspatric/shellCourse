
# !/bin/bash
# Programa para ejemplificar eluso de los if anidados
# Autor: Seba

notaClase=0

echo "Ejemplo sentencia if - else"
read -n1 -p "Indique cuál es su nota (1-9):" notaClase
echo -e "\n"
if [ $notaClase -ge 7 ]; then  
    echo "El alumno aprueba la materia"
    read -p "Si va a continuar estudiando en el siguiente nivel (s/n):" continua
    if [ $continua = "s" ]; then 
        echo "Bienvenido al siguiente nivel"
    else
        echo "Gracias por trabajar con nosotros: mucha suerte"
    fi
else
    echo "El alumno reprueba la materia" 
fi

