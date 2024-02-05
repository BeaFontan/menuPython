# • existe o ficheiro ou directorio (-e)
# • existe o ficheiro NON directorio (-f)
# • o ficheiro non está baleiro (-s)
# • é un directorio (-d)
# • se ten os permisos indicados (-r | -w | -x)
# • máis recente (-nt)
# • máis antigo (-ot)


#!/bin/bash

read -p "Introduce o nome dun ficheiro: " variable

#/existe o ficheiro ou directorio (-e)
if [ -e $variable ]; then
  echo "O ficheiro existe"

    if [ -s $variable ]; then 
      echo "Non está baleiro"
    else
      echo "Está baleiro"
    fi

    if [ -f $variable ]; then
      echo "Non é un directorio"
    else 
      echo "É un directorio"
    fi

    if [ -d $variable]; then
      echo "É un directorio"
      else 
      echo "Non é un directorio"
else
  echo "Ese ficheiro non existe"
fi






