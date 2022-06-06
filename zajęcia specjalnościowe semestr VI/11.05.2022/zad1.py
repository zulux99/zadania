from math import sqrt
import copy

def jumpSort(lista):
    szukana = int(input("Podaj szukaną: "))
    n = len(lista) - 1
    i = int(sqrt(n))
    for j in range(0, n, i):
        temp = copy.copy(j)
        while lista[temp] > szukana and temp > temp - i:
            temp -= 1
            if lista[temp] == szukana:
                return temp
        if lista[j] < szukana:
            continue
        elif lista[j] == szukana:
            return j
    while j < n:
        j += 1
        if lista[j] == szukana:
            return j
    return "Nie znaleziono takiej liczby"

lista = [432,54,123,64,9,21,5,13,67,32,765,87,89,1,43,2193,57,26,11]
lista.sort()
print(lista)
print("Szukana liczba ma indeks:", jumpSort(lista))