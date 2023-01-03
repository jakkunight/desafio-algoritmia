#!/usr/bin/python3
lista = [ 3, 0, 40, 1, -2, 9, 3, 54, 1, -5, 0, 1 ]
print("Lista desordenada: " + str(lista) + "\n")
for i in range(0, len(lista) - 1):
    for j in range(i + 1, len(lista)):
        if(lista[i] < lista[j]):
            aux = lista[i]
            lista[i] = lista[j]
            lista[j] = aux
            print("Intercambio de elementos.\n")
            print(str(lista) + "\n")

input("Presione ENTER para continuar...")
