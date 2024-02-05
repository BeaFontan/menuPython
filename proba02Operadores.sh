#!/bin/bash

numero1=2
numero2=3

suma=$((numero1+numero2))
echo "La suma de los números es $suma"

resta=$((numero1-numero2))
echo "La resta de los números es $resta"

multiplicacion=$((numero1*numero2))
echo "La multiplicación de los dos números es $multiplicacion"

division=$((numero1/numero2))
echo "La división de los dos números es $division"

modulo=$((numero1%numero2))
echo "El modulo de los dos números $modulo"

ejemploAnd=$((numero1+numero2)) && ((numero1-numero2))
echo $ejemploAnd
