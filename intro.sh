#!/bin/bash

echo "***CALCULADORA BASICA***"

read -p "Ingrese el primer numero: " num1
read -p "Ingrese el segundo numero: " num2

echo "1. SUMA"
echo "2. RESTA"
echo "3. MULTIPLICACION"
echo "4. DIVISION"
echo "5. EXPONENCIACION"

read -p "Seleccione una opcion: " opcion

if [ $opcion -eq 1 ]; then
    respuesta=$((num1 + num2))
elif [ $opcion -eq 2 ]; then
    respuesta=$((num1 - num2))
elif [ $opcion -eq 3 ]; then
    respuesta=$((num1 * num2))
elif [ $opcion -eq 4 ]; then
    respuesta=$((num1 / num2))
elif [ $opcion -eq 5 ]; then
    #respuesta=$((num1 ** num2))
    respuesta=$(echo "$num1 ^ $num2 " | bc)
fi

echo "La respuesta es: $respuesta" 