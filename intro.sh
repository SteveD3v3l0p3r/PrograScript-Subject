#!/bin/bash

nombre="Gerson Ramirez"
edad=15

if [ $edad -ge 18 ]; then
    echo "$nombre, eres mayor de edad."
else
    echo "$nombre, no eres mayor de edad."
fi