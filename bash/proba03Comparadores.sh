#!/bin/bash

# Operadores Numéricos

# Variables
numero1=5
numero2=10

# Menor que (-lt)
if [ "$numero1" -lt "$numero2" ]; then
  echo "$numero1 es menor que $numero2"
fi

# Menor o igual que (-le)
if [ "$numero1" -le "$numero2" ]; then
  echo "$numero1 es menor o igual que $numero2"
fi

# Mayor que (-gt)
if [ "$numero1" -gt "$numero2" ]; then
  echo "$numero1 es mayor que $numero2"
fi

# Mayor o igual que (-ge)
if [ "$numero1" -ge "$numero2" ]; then
  echo "$numero1 es mayor o igual que $numero2"
fi

# Igual (-eq)
if [ "$numero1" -eq "$numero2" ]; then
  echo "$numero1 es igual a $numero2"
fi

# Distinto (-ne)
if [ "$numero1" -ne "$numero2" ]; then
  echo "$numero1 no es igual a $numero2"
fi


# Operadores de Cadenas

# Variables
cadena1="abc"
cadena2="def"

# Menor que (\<)
if [[ "$cadena1" < "$cadena2" ]]; then
  echo "$cadena1 es menor que $cadena2"
fi

# Mayor que (\>)
if [[ "$cadena1" > "$cadena2" ]]; then
  echo "$cadena1 es mayor que $cadena2"
fi

# Igual (= o ==)
if [[ "$cadena1" == "$cadena2" ]]; then
  echo "$cadena1 es igual a $cadena2"
fi

# Distinto (!=)
if [[ "$cadena1" != "$cadena2" ]]; then
  echo "$cadena1 no es igual a $cadena2"
fi

# Cadena NO vacía (-n)
if [[ -n "$cadena1" ]]; then
  echo "La cadena1 no está vacía"
fi

# Cadena vacía (-z)
if [[ -z "$cadena2" ]]; then
  echo "La cadena2 está vacía"
fi
