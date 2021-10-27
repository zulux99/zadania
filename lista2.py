import random
# ZADANIE 1
def celciusToFahrenheit(degrees):
    return degrees * 1.8 + 32
def fahrenheitToCelcius(degrees):
    return (degrees - 32) * 0.5556
# ZADANIE 2
def sortuj(lista):
    while True:
        zamienione = False
        for i in range(0, len(lista) - 1):
            if lista[i] > lista[i + 1]:
                temp = lista[i]
                lista[i] = lista[i + 1]
                lista[i + 1] = temp
                zamienione = True
        if zamienione == False: break  
lista = []
for i in range(0, 30):
    lista.append(random.randint(0, 100))
print("Nieposortowane: ")
for i in lista:
    print(i, end= ' ')
sortuj(lista)
print("\nPosortowane: ")
for i in lista:
    print(i, end= ' ')
# ZADANIE 3
macierz1 = []
macierz2 = []
for i in range(0, 64):
    macierz1.append([])
    macierz2.append([])
    for j in range(0, 64):
        macierz1[i].append(random.randint(0, 100))
        macierz2[i].append(random.randint(0, 100))
for i in macierz1:
    print(macierz1)