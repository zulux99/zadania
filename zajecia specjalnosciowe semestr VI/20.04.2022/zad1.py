def sortuj(lista):
    sorted = False
    while sorted is False:
        sorted = True
        for i in range(len(lista) - 1):
            if lista[i] > lista[i + 1]:
                lista[i], lista[i + 1] = lista[i + 1], lista[i]
                sorted = False

lista = [412,532,532,643,637,6,8598,76,45,5312,643,637,635,8658,658,54,863,7456,3276,325,752,7]
sortuj(lista)
print(lista)