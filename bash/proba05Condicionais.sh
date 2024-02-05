# Comparadores
# Podemos usar os seguintes comparadores recomendados para os números:
# • menor que (-lt)
# • menor ou igual que (-le)
# • maior que (-gt)
# • maior ou igual que (-ge)
# • igual (-eq)
# • distinto (-ne)

#!/bin/bash

variaUno=3
variaDos=5

if [ $variaUno -gt $variaDos ]
    then
        echo "$variaUno es mayor que $variaDos"
    else
        echo "$variaDos es mayor que $variaUno"
fi


if [ $variaUno -le $variaDos ]
    then
        echo "$variaUno es menor o igual $variaDos"
    else
        echo "$variaDos es menor o igual $variaUno"
fi


#Ojo, mejor usar operadores especiales
if [ $variaUno != $variaDos ]
    then
        echo "Son distintos"
    else
        echo "Son iguales"
fi


#Ejemplo con cadenas

# E os recomendados para cadeas:
# • menor que (\<)
# • maior que (\>)
# • igual (= ou ==)
# • distinto (!=)
# • cadea NON baleira (-n)
# • cadea baleira (-z)

cadena1="Maria"
cadena2="Pedro"

if [ $cadena1 \< $cadena2 ]
    then 
        echo "$cadena1 é menor que $cadena2"
    else
        echo "$cadena2 é maior que $cadena1"
fi


if [ $variaUno -lt $variaDos ] && [ $cadena1 == $cadena2 ]
    then   
        echo "Prueba"
    else
        echo "Prueba sintaxis"
fi

