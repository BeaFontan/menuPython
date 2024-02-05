#!/bin/bash

# Realiza un script no que se lle amose ao usuario actual co que está logeado e, despois,
# se lle permita modificar este nome. Será unha modificación “virtual” non se mudará realmente o
# usuario de sistema. Deberá amosarse unha mensaxe na que se pida o novo nome. En caso de que o
# usuario pulse enter quererá dicir que non se muda de usuario e o valor será o mesmo que xa se tiña
# gardado.


usuarioActual=`whoami`

echo "Hola $usuarioActual"

read -p "Si queres cambiar o nome, tecleao, senón pulsa enter " novoNome

if [ -z $novoNome ]
    then 
        echo "Usuario root"
    else
    echo "Usuario cambiado a $novoNome"

fi
