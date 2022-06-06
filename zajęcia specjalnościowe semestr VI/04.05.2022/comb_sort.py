def combSort(lista):
    gap = len(lista) - 1
    sorted = False
    while gap >= 1 or sorted is False:
        sorted = True
        for i in range(0, len(lista) - gap):
            if lista[i] > lista[i + gap]:
                lista[i], lista[i + gap] = lista[i + gap], lista[i]
                sorted = False
        gap = int(gap // 1.3)

lista = [56,32,78,21,20,19,23,28,45,79,65,43,31]
combSort(lista)
print(lista)