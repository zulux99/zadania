def polaczTablice(lista1, lista2):
    i = 0
    while lista2:
        while lista1[i] > lista2[0] or lista1[i] == lista2[0]:
            lista1.insert(i, lista2.pop(0))
        while lista1[i] < lista2[0] and i < len(lista1) - 1:
            i += 1
        lista1.append(lista2.pop(0))

lista1 = [1,2,3,4,5,7,8,9]
lista2 = [0,6,10,11,12,13,14,15]
polaczTablice(lista1, lista2)
print(lista1)
