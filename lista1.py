import math
import random
# ZADANIE 2
print("Suma =", 4 + 6 - 3 + 9)
print("Różnica =", (4 + 6 - 3 + 9) / 4)
# ZADANIE 3
a = 3
b = 7
P = a * b
print(f"Pole prostokąta o bokach {a} i {b} wynosi {P}")
# ZADANIE 4
liczby = [4, 6, -3, 9]
print("Suma=",math.fsum(liczby))
print("Średnia =", math.fsum(liczby) / len(liczby))
# ZADANIE 5
lista = list(range(3,100,3))
del lista[5::3]
for i in lista:
    print(i)
print(sum(lista) / len(lista))
# ZADANIE 6
print("Wyliczę funkcję kwadratową")
a = int(input("Podaj a: "))
b = int(input("Podaj b: "))
c = int(input("Podaj c: "))
delta = b ** 2 - 4 * a * c
if delta > 0: 
    x1 = (-b - math.sqrt(delta)) / (2 * a)
    x2 = (-b + math.sqrt(delta)) / (2 * a)
    print("x1 =", x1, "\nx2 =", x2)
elif delta == 0:
    x = -b / (2 * a)
    print("x =", x)
else:
    print("Brak miejsc zerowych")
# ZADANIE 7
ciagZnakow = input("Podaj literę lub ciąg znaków: ")
for i in list(ciagZnakow):
    print(i, ord(i))
# ZADANIE 8
slownik = { "myszka" : 140, "klawiatura" : 290, "monitor" : 740, "procesor" : 830, "obudowa" : 220}
staraSrednia = math.fsum(slownik.values()) / len(slownik)
print("Średnia cena to:", staraSrednia)
nazwaProduktu = input("Podaj nazwę nowego produktu:")
cenaProduktu = int(input("Podaj cenę nowego produktu: "))
slownik[nazwaProduktu] = cenaProduktu
for i in sorted(slownik):
    print(i, "=", slownik[i])
nowaSrednia = math.fsum(slownik.values()) / len(slownik)
print("Nowa średnia cena to:", nowaSrednia)
if (nowaSrednia > staraSrednia):
    print("Średnia cena wzrosła")
elif (nowaSrednia < staraSrednia):
    print("Średnia cena zmalała")
else:
    pass
# ZADANIE 9
# WAŻNE!!!! DO POPRAWNEGO DZIAŁANIA TEGO ZADANIA WYMAGANA JEST WERSJA PYTHON 3.10
# Z POWODU ZASTOSOWANIA INSTRUKCJI SWITCH (MATCH)
while True:
    try:
        x = int(input("Podaj ciąg cyfr: "))
    except ValueError:
        print("Podana wartość nie jest ciągiem znaków")
        continue
    else:
        ciagCyfr = list(str(x))
        break
for i in ciagCyfr: 
    match i:
        case "0": print("zero", end=' ')
        case "1": print("jeden", end=' ')
        case "2": print("dwa", end=' ')
        case "3": print("trzy", end=' ')
        case "4": print("cztery", end=' ')
        case "5": print("pięć", end=' ')
        case "6": print("sześć", end=' ')
        case "7": print("siedem", end=' ')
        case "8": print("osiem", end=' ')
        case "9": print("dziewięć", end=' ')
# ZADANIE 10
wylosowanaLiczba = random.randint(0, 99)
podanaLiczba = 417641
licznik = 0
while(wylosowanaLiczba != podanaLiczba):
    podanaLiczba = int(input("Jaką liczbę wylosowałem?\n"))
    roznica = wylosowanaLiczba - podanaLiczba
    if roznica > 40:
        print("Dużo większa")
    elif roznica < -40:
        print("Dużo mniejsza")
    elif roznica > 10:
        print("Większa")
    elif roznica < -10:
        print("Mniejsza")
    elif roznica < 10 and roznica > 0:
        print("Trochę większa")
    elif roznica > -10 and roznica < 0:
        print("Trochę mniejsza")
    licznik += 1
print(f"Zgadłeś w {licznik} w próbach")

