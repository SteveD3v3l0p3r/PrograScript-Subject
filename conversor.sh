#!/bin/bash
continuar="s"

while [ $continuar = "s" ]; do
    echo "::::::::::::::::::::::::::::::::::::::::::::::::::"
    echo -e "::::::::::::::.\e[1;33mCONVERSOR DE MEDIDAS\e[0m.::::::::::::::"
    echo "::::::::::::::::::::::::::::::::::::::::::::::::::"
    echo -e "\e[1;33m1. Longitud; 2. Masa; 3. Tiempo; 4. Almacenamiento\e[0m"
    echo "::::::::::::::::::::::::::::::::::::::::::::::::::"
    echo -e "\e[1;31mSelecciona el número de la opción que deseas utilizar:\e[0m"
    read resp
    
    case $resp in
        1) echo ":::.LONGITUD.:::"
            echo "1. Pulgada 2. Centimetro. 3. Metro. 4. Kilometro"
            read -p "¿Qué deseas converir?: " u_cambio
            read -p "Selecciona la unidad de destino: " u_destino
            read -p "Ingresa la cantidad de a convertir: " cant

                if [ $u_cambio -eq 1 -a $u_destino -eq 2 ]; then
                    resultado=$(echo " scale=2; $cant * 2.54" | bc)
                    echo "El resultado es: $resultado cm"
                elif [ $u_cambio -eq 1 -a $u_destino -eq 3 ]; then
                    resultado=$(echo " scale=2; $cant * 0.0254" | bc)
                    echo "El resultado es: $resultado m"
                elif [ $u_cambio -eq 1 -a $u_destino -eq 4 ]; then
                    resultado=$(echo " scale=2; $cant * 0.0000254" | bc)
                    echo "El resultado es: $resultado km"
                elif [ $u_cambio -eq 2 -a $u_destino -eq 1 ]; then
                    resultado=$(echo " scale=2; $cant / 2.54" | bc)
                    echo "El resultado es: $resultado in"
                elif [ $u_cambio -eq 2 -a $u_destino -eq 3 ]; then
                    resultado=$(echo " scale=2; $cant * 0.01" | bc)
                    echo "El resultado es: $resultado m"
                elif [ $u_cambio -eq 2 -a $u_destino -eq 4 ]; then
                    resultado=$(echo " scale=2; $cant * 0.00001" | bc)
                    echo "El resultado es: $resultado km"
                elif [ $u_cambio -eq 3 -a $u_destino -eq 1 ]; then
                    resultado=$(echo " scale=2; $cant * 39.3701" | bc)
                    echo "El resultado es: $resultado ft"
                elif [ $u_cambio -eq 3 -a $u_destino -eq 2 ]; then
                    resultado=$(echo " scale=2; $cant * 100" | bc)
                    echo "El resultado es: $resultado cm"
                elif [ $u_cambio -eq 3 -a $u_destino -eq 4 ]; then
                    resultado=$(echo " scale=2; $cant * 0.0003048" | bc)
                    echo "El resultado es: $resultado km"
                elif [ $u_cambio -eq 4 -a $u_destino -eq 1 ]; then
                    resultado=$(echo " scale=2; $cant * 39370.1" | bc)
                    echo "El resultado es: $resultado in"
                elif [ $u_cambio -eq 4 -a $u_destino -eq 2 ]; then
                    resultado=$(echo " scale=2; $cant * 1000" | bc)
                    echo "El resultado es: $resultado cm"
                elif [ $u_cambio -eq 4 -a $u_destino -eq 3 ]; then
                    resultado=$(echo " scale=2; $cant * 0.003048" | bc)
                    echo "El resultado es: $resultado m"
                else
                    echo "No se puede realizar la operación"
                fi
            ;;
        2) echo ":::.MASA.:::"
            echo "1. Gramo 2. Kilo. 3. Libra. 4. Onza"
            read -p "¿Qué deseas converir?: " u_cambio
            read -p "Selecciona la unidad de destino: " u_destino
            read -p "Ingresa la cantidad de a convertir: " cant

                if [ $u_cambio -eq 1 -a $u_destino -eq 2 ]; then
                    resultado=$(echo " scale=2; $cant * 1000" | bc)
                    echo "El resultado es: $resultado g"
                elif [ $u_cambio -eq 1 -a $u_destino -eq 3 ]; then
                    resultado=$(echo " scale=2; $cant * 0.0022046" | bc)
                    echo "El resultado es: $resultado lb"
                elif [ $u_cambio -eq 1 -a $u_destino -eq 4 ]; then
                    resultado=$(echo " scale=2; $cant * 0.000035274" | bc)
                    echo "El resultado es: $resultado oz"
                elif [ $u_cambio -eq 2 -a $u_destino -eq 1 ]; then
                    resultado=$(echo " scale=2; $cant / 1000" | bc)
                    echo "El resultado es: $resultado kg"
                elif [ $u_cambio -eq 2 -a $u_destino -eq 3 ]; then
                    resultado=$(echo " scale=2; $cant * 2.2046" | bc)
                    echo "El resultado es: $resultado lb"
                elif [ $u_cambio -eq 2 -a $u_destino -eq 4 ]; then
                    resultado=$(echo " scale=2; $cant * 35.274" | bc)
                    echo "El resultado es: $resultado oz"
                elif [ $u_cambio -eq 3 -a $u_destino -eq 1 ]; then
                    resultado=$(echo " scale=2; $cant * 0.0022046" | bc)
                    echo "El resultado es: $resultado g"
                elif [ $u_cambio -eq 3 -a $u_destino -eq 2 ]; then
                    resultado=$(echo " scale=2; $cant * 1000" | bc)
                    echo "El resultado es: $resultado kg"
                elif [ $u_cambio -eq 3 -a $u_destino -eq 4 ]; then
                    resultado=$(echo " scale=2; $cant * 0.035274" | bc)
                    echo "El resultado es: $resultado oz"
                elif [ $u_cambio -eq 4 -a $u_destino -eq 1 ]; then
                    resultado=$(echo " scale=2; $cant * 28.3495" | bc)
                    echo "El resultado es: $resultado g"
                elif [ $u_cambio -eq 4 -a $u_destino -eq 2 ]; then
                    resultado=$(echo " scale=2; $cant * 0.001" | bc)
                    echo "El resultado es: $resultado kg"
                elif [ $u_cambio -eq 4 -a $u_destino -eq 3 ]; then
                    resultado=$(echo " scale=2; $cant * 0.0625" | bc)
                    echo "El resultado es: $resultado lb"
                else
                    echo "No se puede realizar la operación"
                fi
        ;;
        3) echo ":::.TIEMPO.:::"
            echo "1. Segundos 2. Minutos 3. Horas"
            read -p "¿Qué deseas converir?: " t_cambio
            read -p "Selecciona la unidad de destino: " t_destino
            read -p "Ingresa la cantidad de tiempo: " t_cant
            if [ $t_cambio -eq 1 -a $t_destino -eq 2 ]; then
                resultado=$(echo " scale=2; $t_cant / 60" | bc)
                echo "El resultado es: $resultado min"
            elif [ $t_cambio -eq 1 -a $t_destino -eq 3 ]; then
                resultado=$(echo " scale=2; $t_cant / 3600" | bc)
                echo "El resultado es: $resultado horas"
            elif [ $t_cambio -eq 2 -a $t_destino -eq 1 ]; then
                resultado=$(echo " scale=2; $t_cant * 60" | bc)
                echo "El resultado es: $resultado seg"
            elif [ $t_cambio -eq 2 -a $t_destino -eq 3 ]; then
                resultado=$(echo " scale=2; $t_cant / 60" | bc)
                echo "El resultado es: $resultado horas"
            elif [ $t_cambio -eq 3 -a $t_destino -eq 1 ]; then
                resultado=$(echo " scale=2; $t_cant * 3600" | bc)
                echo "El resultado es: $resultado seg"
            elif [ $t_cambio -eq 3 -a $t_destino -eq 2 ]; then
                resultado=$(echo " scale=2; $t_cant * 60" | bc)
                echo "El resultado es: $resultado min"
            else
                echo "No se puede realizar la operación"
            fi
        ;;
        4) echo ":::.ALMACENAMIENTO.:::"
            echo "1. Byte 2. Megabyte 3. Gigabyte 4. Terabyte"
            read -p "¿Qué deseas converir?: " al_cambio
            read -p "Selecciona la unidad de destino: " al_destino
            read -p "Ingresa la cantidad de almacenamiento: " al_cant
            if [ $al_cambio -eq 1 -a $al_destino -eq 2 ]; then
                resultado=$(echo " scale=2; $al_cant / 0.000001" | bc)
                echo "El resultado es: $resultado MB"
            elif [ $al_cambio -eq 1 -a $al_destino -eq 3 ]; then
                resultado=$(echo " scale=2; $al_cant / 0.000000001" | bc)
                echo "El resultado es: $resultado GB"
            elif [ $al_cambio -eq 1 -a $al_destino -eq 4 ]; then
                resultado=$(echo " scale=2; $al_cant / 0.000000000001" | bc)
                echo "El resultado es: $resultado TB"
            elif [ $al_cambio -eq 2 -a $al_destino -eq 1 ]; then
                resultado=$(echo " scale=2; $al_cant * 1.000000" | bc)
                echo "El resultado es: $resultado B"
            elif [ $al_cambio -eq 2 -a $al_destino -eq 3 ]; then
                resultado=$(echo " scale=2; $al_cant * 0.001" | bc)
                echo "El resultado es: $resultado GB"
            elif [ $al_cambio -eq 2 -a $al_destino -eq 4 ]; then
                resultado=$(echo " scale=2; $al_cant * 0.000001" | bc)
                echo "El resultado es: $resultado TB"
            elif [ $al_cambio -eq 3 -a $al_destino -eq 1 ]; then
                resultado=$(echo " scale=2; $al_cant * 1.000000000" | bc)
                echo "El resultado es: $resultado B"
            elif [ $al_cambio -eq 3 -a $al_destino -eq 2 ]; then
                resultado=$(echo " scale=2; $al_cant * 1000" | bc)
                echo "El resultado es: $resultado MB"
            elif [ $al_cambio -eq 3 -a $al_destino -eq 4 ]; then
                resultado=$(echo " scale=2; $al_cant * 0.001" | bc)
                echo "El resultado es: $resultado TB"
            elif [ $al_cambio -eq 4 -a $al_destino -eq 1 ]; then
                resultado=$(echo " scale=2; $al_cant * 1.000000000000" | bc)
                echo "El resultado es: $resultado B"
            elif [ $al_cambio -eq 4 -a $al_destino -eq 2 ]; then
                resultado=$(echo " scale=2; $al_cant * 1.000000" | bc)
                echo "El resultado es: $resultado MB"
            elif [ $al_cambio -eq 4 -a $al_destino -eq 3 ]; then
                resultado=$(echo " scale=2; $al_cant * 1000" | bc)
                echo "El resultado es: $resultado GB"
            else
                echo "No se puede realizar la operación"
            fi
        ;;
        *)  break;;

    esac

    read -p "¿Deseas continuar? (s/n): " continuar
done