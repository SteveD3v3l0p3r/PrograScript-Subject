#!/bin/bash
read -p "¿Que archivo deseas buscar? (añade su extension): " archivo

if [ -e "$archivo" ]; then
    echo "Ejecutando archivo: $archivo...."
    echo "********************************"
    cat $archivo
else
    read -p "El archivo '$archivo' no existe, ¿deseas crearlo? (S/N)" resp
    if [ $resp = "s" ]; then
        touch $archivo
        nano $archivo
    else 
        echo "Saliendo del buscador..."
    fi
fi
