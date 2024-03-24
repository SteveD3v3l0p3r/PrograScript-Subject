#!/bin/bash
num_mayor=0

for i in $(seq 1 5); do
    read -p "Ingresa un numero: " numero
    if [ $numero -ge $num_mayor ]; then
        num_mayor=$numero
    fi
done

echo "El numero mayor es: $num_mayor" 