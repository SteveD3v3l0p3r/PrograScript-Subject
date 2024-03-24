#!/bin/bash
read -p "Dime un número: " num1
read -p "Dime otro número: " num2

respuesta=$((num1+num2))
resp=$(expr $num1 + $num2)

echo $resp