import math
# ZADANIE 2
# print("Suma =", 4 + 6 - 3 + 9)
# print("Różnica =", (4 + 6 - 3 + 9) / 4)
# ZADANIE 3
# a = 3
# b = 7
# P = a * b
# print(f"Pole prostokąta o bokach {a} i {b} wynosi {P}")
# ZADANIE 4
# liczby = [4, 6, -3, 9]
# print("Suma=",math.fsum(liczby))
# print("Średnia =", math.fsum(liczby) / len(liczby))
# ZADANIE 5
# lista = list(range(3,100,3))
# del lista[5::3]
# for i in lista:
#     print(i)
# print(sum(lista) / len(lista))
# ZADANIE 6
# print("Wyliczę funkcję kwadratową")
# a = int(input("Podaj a: "))
# b = int(input("Podaj b: "))
# c = int(input("Podaj c: "))
# delta = b ** 2 - 4 * a * c
# if delta > 0: 
#     x1 = (-b - math.sqrt(delta)) / (2 * a)
#     x2 = (-b + math.sqrt(delta)) / (2 * a)
#     print("x1 =", x1, "\nx2 =", x2)
# elif delta == 0:
#     x = -b / (2 * a)
#     print("x =", x)
# else:
#     print("Brak miejsc zerowych")
# ZADANIE 7
# ciagZnakow = input("Podaj literę lub ciąg znaków: ")
# for i in list(ciagZnakow):
#     print(i, ord(i))
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
