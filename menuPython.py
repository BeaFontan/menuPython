import os


menu = "Pulsa 1 Para sumar dous números \n pulsa 2 para crear un novo ficheiro de texto \n pulsa 3 para averiguar o maior de duas persoas \n pulsa 4 adiviñar un número \n pulsa 5 para comprobar os alumnos matriculados \n pulsa 6 para Sair \n"

def operacions(numero1, numero2):
    
    operacion = int(input(f"Pulsa 1 para suma, 2 para restar, 3 para multiplicar, 4 para dividir: "))

    if operacion == 1:
        resultado =numero1 + numero2
        print(f"{numero1} + {numero2} = {resultado}") 

    elif operacion == 2:
        resultado =numero1 - numero2
        print( f"{numero1} - {numero2} = {resultado}") 

    elif operacion == 3:
        resultado =numero1 * numero2
        print( f"{numero1} * {numero2} = {resultado}") 
 
    elif operacion == 4:
        resultado =numero1 / numero2
        print( f"{numero1} / {numero2} = {resultado}") 


def ficheiro():
    nomeFicheiro=input("Dime o nome que lle queres poñer: ")

    ruta=input("Dime a ruta relativa donde queres crealo: ")

    os.system(f"touch {nomeFicheiro}.txt /{ruta}")

    print("ficheiro creado")
    
    respuesta = int(input("Pulsa 1 si queres eliminalo, senon, 0: " ))

    while respuesta != 1 or respuesta != 0:
        respuesta = int(input("Elixe 1 (Borrar) ou 0 (Continuar): " ))
    

    if respuesta == 1:
        os.system(f"rm {nomeFicheiro}.txt")
        print("Ficheiro eliminado")
    elif respuesta ==0:
        print("Ficheiro non eliminado")
    
    
        



def maior():
    nome1= input("Dime o nome da primeira persoa: ")
    idade1 = int(input("Dime a súa idade: "))
    nome2= input("Dime o nome da primeira persoa: ")
    idade2 = int(input("Dime a súa idade: "))

    if idade1 > idade2:
      print(f"{nome1} é maior que {nome2}.")
    elif idade1 < idade2:

      print(f"{nome2} é maior que {nome1}.") 
    else:
      print(f"{nome1} e {nome2} teñen a mesma idade.") 
    

def adivina():
    numeroGanador=4
    contador=0

    numeroEntrada=int(input("Dime un número do 1 o 10: "))

    while numeroEntrada > 10 or numeroEntrada < 1:

        numeroEntrada=int(input("O número ten que ser maior que 1 e menor que 10, dime un correcto: "))

    while numeroEntrada != numeroGanador:
                
        contador+=1

        if numeroEntrada < numeroGanador:
            print("Quedacheste corto")
        else:
            print("Pasacheste de largo")

        numeroEntrada=int(input("Dime outro número: "))
                
        while numeroEntrada > 10 or numeroEntrada < 1:
                    
            numeroEntrada=int(input("O número ten que ser maior que 1 e menor que 10, dime un correcto: "))
                
    print(f"Noraboa, acertaches. O número de intentos foron {contador}.")

  
def lista():

    arrayNombres = ["Vanessa", "Carolina", "Elena"]

    nombreAlumno = input("Dime el nombre del alumno que quieres comprobar si está matriculado: ")

    if nombreAlumno in arrayNombres:
        print("El alumno está matriculado")
    else:
        print("El alumno no está matriculado")


respuesta = int(input(menu))
os.system("clear")

while respuesta != 6:

    match respuesta:
        case 1:
            numero1=int(input("Dime o primero numero: ")) 
            numero2=int(input("Dime o segundo numero: ")) 
            operacions(numero1,numero2)

        case 2:
            ficheiro()

        case 3:
            maior()
        
        case 4:
            adivina()

        case 5: 
            lista()

        case other:
            print("Opción non válida. Por favor, escolle unha opción entre 1 e 6.") 
  

    respuesta = int(input(menu))
    os.system("clear")

