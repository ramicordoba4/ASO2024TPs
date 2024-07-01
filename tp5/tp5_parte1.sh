#!/bin/bash

# 3) Calculadora Simple
while true; do
    read -p "Ingresa el primer numero: " num1
    read -p "Ingresa el segundo numero: " num2
    read -p "Ingresa la operacion (+, -, *, /): " operacion

    case $operacion in
        "+")
            resultado=$((num1 + num2))
            ;;
        "-")
            resultado=$((num1 - num2))
            ;;
        "*")
            resultado=$((num1 * num2))
            ;;
        "/")
            if [ $num2 -eq 0 ]; then
                echo "Error: Division por cero no permitida"
                continue
            else
                resultado=$(echo "scale=2; $num1 / $num2" | bc -l)
            fi
            ;;
        *)
            echo "Operacion invalida"
    esac

    echo "El resultado es: $resultado"
done
