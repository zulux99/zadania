def insertion_sort(lista):
    for i in range(1, len(lista)):
        j = i - 1
        while j >= 0 and lista[i] < lista[j]:
            j -= 1
        lista.insert(j + 1, lista.pop(i))


lista = [12, 34, 153, 21, 456, 865, 96, 45, 4321, 45, 865, 87]
insertion_sort(lista)
print(lista)