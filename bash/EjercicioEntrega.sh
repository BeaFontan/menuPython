#!/bin/bash

 limpiarPantalla=clear

 menu="
  Pulsa 1 Para operar con dous números
  pulsa 2 para crear un novo ficheiro de texto
  pulsa 3 para averiguar o maior de duas persoas
  pulsa 4 adiviñar un número do 1 o 10
  pulsa 5 para comprobar os alumnos matriculados
  pulsa 6 para Sair: "

  operacions(){
        read -p "Pulsa 1 para suma, 2 para restar, 3 para multiplicar, 4 para dividir: " operacion

        if [ $operacion -eq 1 ]
        then 
            resultado=$(($1+$2))
            echo "$primerNumero + $segundoNumero = $resultado"
        elif [ $operacion -eq 2 ]
        then
            resultado=$(($1-$2))
            echo "$primerNumero - $segundoNumero = $resultado"
        elif [ $operacion -eq 3 ]
        then 
            resultado=$(($1*$2))
            echo "$primerNumero * $segundoNumero = $resultado"
        elif [ $operacion -eq 4 ]
        then
            resultado=$(($1/$2))
            echo "$primerNumero / $segundoNumero = $resultado"
        else
            echo "O número introducido non corresponde a ninguna operación."
        fi
  }

  ficheiro(){
    read -p "Dime o nome que lle queres poñer: " nomeFicheiro

    touch $nomeFicheiro.txt

    echo "ficheiro creado".

    read -p "Pulsa 1 si queres eliminalo, senon, 0: " respuesta

    if [ $respuesta -eq 1 ]
    then
        rm $nomeFicheiro.txt
    else
        echo "Ficheiro non eliminado"
    fi
  }

  maior(){
    read -p "Dime o nome da primeira persoa: " nome1
    read -p "Dime a súa idade: " idade1
    read -p "Dime o nome da segunda persoa: " nome2
    read -p "Dime a súa idade: " idade2

    if [ $idade1 -gt $idade2 ]
    then 
      echo "$nome1 é maior que $nome2."
    elif [ $idade1 -lt $idade2 ]
    then
      echo "$nome2 é maior que $nome1."
    else
      echo "$nome1 e $nome2 teñen a mesma idade."
    fi
  }

  adivina(){
    numeroGanador=4
    contador=0

    read -p "Dime un número do 1 o 10: " numeroEntrada

    # Non me deixa poñer comparadores numericos, non sei porqué.
    while (( numeroEntrada > 10 || numeroEntrada < 1 ))
    do
         read -p "O número ten que ser maior que 1 e menor que 10, dime un correcto: " numeroEntrada
    done

    while (( $numeroEntrada != $numeroGanador ));
     do
        ((contador++))
         read -p "Fallaches, dime outro número: " numeroEntrada
         
            while (( numeroEntrada > 10 || numeroEntrada < 1 ))
            do
                read -p "O número ten que ser maior que 1 e menor que 10, dime un correcto: " numeroEntrada
            done
    done

    echo "Noraboa, acertaches. O número de intentos foron $contador.";
  }

  lista(){
    arrayNomes=("Vanessa" "Carolina" "Elena")

    read -p "Dime o nome do alumno que queres comprobar si está matriculado: " nomeAlumno

    matriculado=false

    for alumno in ${arrayNomes[@]}
    do
        if [ $nomeAlumno == $alumno ]
        then
            matriculado=true
        break
        fi
    done

    if [ $matriculado == true ]
    then
        echo "O alumno está matriculado"
    else
        echo "O alumno non está matriculado"
    fi
  }
  

read -p "$menu" respuesta
echo $limpiarPantalla;

 while (( $respuesta != 6 ))
    do
        case $respuesta in
            1)
                read -p "Dime o primero numero: " primerNumero
                read -p "Dime o segundo numero: " segundoNumero
                operacions $primerNumero $segundoNumero
            ;;

            2)
                ficheiro
            ;;

            3)
                maior
            ;;

            4) 
                adivina
            ;;

            5) 
                lista
            ;;
            *) 
            echo "Opción non válida. Por favor, escolle unha opción entre 1 e 6." 
        esac

        read -p "$menu" respuesta
        echo $limpiarPantalla;

    done
