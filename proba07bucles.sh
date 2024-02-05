# Realiza un script que percorra o home do usuario alumno e, para cada elemento, indica
# si é un arquivo ou un directorio.


#!/bin/bash

# Ruta al directorio home del usuario "alumno"
ruta="/home"


if [ -d "$ruta" ]
 then
    for file in "$ruta";
     do
        if [ -d "$file" ]
         then
            echo "Es un archivo."
        else
            echo "Es un directorio."
        fi
    done
fi

