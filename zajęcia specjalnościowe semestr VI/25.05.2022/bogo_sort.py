import random

def bogoSort(lista):
    licznik = 0
    while isSorted(lista) is False:
        myShuffle(lista)
        licznik += 1
    print(licznik)
    return lista

def isSorted(lista):
    for i in range(1, len(lista)):
        if lista[i] < lista[i - 1]:
            return False
    return True

def myShuffle(lista):
    for i in range(0, len(lista) - 1):
        losowa = random.randint(0, len(lista) - 1)
        lista[i], lista[losowa] = lista[losowa], lista[i]

lista = [1,563,2,235,53,657,8,85,24,268]
print(bogoSort(lista))