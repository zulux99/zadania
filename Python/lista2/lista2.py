import random
import timeit
from pathlib import Path
# ZADANIE 1
def celciusToFahrenheit(degrees):
    return degrees * 1.8 + 32
def fahrenheitToCelcius(degrees):
    return (degrees - 32) * 0.5556
# ZADANIE 2
def sortuj(lista, sposob):
    if sposob == "rosnaco":
        while True:
            zamienione = False
            for i in range(0, len(lista) - 1):
                if lista[i] > lista[i + 1]:
                    temp = lista[i]
                    lista[i] = lista[i + 1]
                    lista[i + 1] = temp
                    zamienione = True
            if zamienione == False: break  
    elif sposob == "malejaco":
        while True:
            zamienione = False
            for i in range(0, len(lista) - 1):
                if lista[i] < lista[i + 1]:
                    temp = lista[i]
                    lista[i] = lista[i + 1]
                    lista[i + 1] = temp
                    zamienione = True
            if zamienione == False: break
    return lista
lista = []
for i in range(0, 30):
    lista.append(random.randint(0, 100))
print("Nieposortowane: ")
for i in lista:
    print(i, end= ' ')
sortuj(lista, "rosnaco")
print("\nPosortowane: ")
for i in lista:
    print(i, end= ' ')
# ZADANIE 3
def sumaMacierzy(macierz1, macierz2):
    macierz1 = []
    macierz2 = []
    macierz3 = []
    for i in range(0, 64):
        macierz1.append([])
        macierz2.append([])
        macierz3.append([])
        for j in range(0, 64):
            macierz1[i].append(random.randint(0, 100))
            macierz2[i].append(random.randint(0, 100))
            macierz3[i].append(0)
    for i in range(0, 64):
        for j in range(0, 64):
            macierz3[i][j] = macierz1[i][j] + macierz2[i][j]
    return macierz3
# ZADANIE 4
x = []
for i in range(0, 3):
    x.append([])
    for j in range(0, 3):
            x[i].append(random.randint(0, 100))
wyznacznik = x[0][0] * x[1][1] * x[2][2] + x[0][1] * x[1][2] * x[2][0] + x[0][2] * x[1][0] * x[2][1] - (x[0][2] * x[1][1] * x[2][0] + x[0][0] * x[1][2] * x[2][1] + x[0][1] * x[1][0] * x[2][2])
print("\nwyznacznik =",wyznacznik)
# ZADANIE 5
mysetup = '''
lista2 = range(10000)
'''
kod = '''
def sortuj(lista, sposob):
    if sposob == "rosnaco":
        while True:
            zamienione = False
            for i in range(0, len(lista) - 1):
                if lista[i] > lista[i + 1]:
                    temp = lista[i]
                    lista[i] = lista[i + 1]
                    lista[i + 1] = temp
                    zamienione = True
            if zamienione == False: break  
    elif sposob == "malejaco":
        while True:
            zamienione = False
            for i in range(0, len(lista) - 1):
                if lista[i] < lista[i + 1]:
                    temp = lista[i]
                    lista[i] = lista[i + 1]
                    lista[i + 1] = temp
                    zamienione = True
            if zamienione == False: break
    return lista
sortuj(lista2, "rosnaco")
'''
kod2 = '''
sorted(lista2)
'''
print("\nMój algorytm: ")
print(timeit.timeit(setup = mysetup, stmt = kod, number = 100))
print("Wbudowany: ")
print(timeit.timeit(setup = mysetup, stmt = kod2, number = 100))
# ZADANIE 6
# w osobnym pliku
# ZADANIE 7
try:
    file = open(Path(__file__).with_name("cpp.txt"), encoding='utf-8-sig')
    cpp = set(file.read().splitlines())
except FileNotFoundError:
    print("Nie znaleziono pliku cpp.txt")
try:
    file = open(Path(__file__).with_name("python.txt"), encoding='utf-8-sig')
    python = set(file.read().splitlines())
except FileNotFoundError:
    print("Nie znaleziono pliku python.txt")
common = cpp.intersection(python)
print(common)