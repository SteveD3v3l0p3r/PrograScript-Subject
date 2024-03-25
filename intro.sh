#!/bin/bash
#read -p "¿Que archivo deseas buscar? (añade su extension): " archivo

#if [ -e "$archivo" ]; then
 #   echo "Ejecutando archivo: $archivo...."
  #  echo "********************************"
  #  cat $archivo
#else
 #   read -p "El archivo '$archivo' no existe, ¿deseas crearlo? (S/N)" resp
  #  if [ $resp = "s" ]; then
   #     touch $archivo
    #    nano $archivo
    #else 
     #   echo "Saliendo del buscador..."
    #fi
#fi


function redondear(){
    echo "El resultado redondeado a 2 decimales es: $(echo "scale=2; $1" | bc | xargs printf %0.2f)"
}

