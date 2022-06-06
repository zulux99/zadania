def quickSort(lista, low, high):
    if low < high:
        pivot = partition(lista, low, high)
        quickSort(lista, low, pivot - 1)
        quickSort(lista, pivot + 1, high)

def partition(lista, low, high):
    pivot = lista[high]
    i = low - 1
    for j in range(low, high):
        if lista[j] <= pivot:
            i += 1
            lista[i], lista[j] = lista[j], lista[i]
    lista[i + 1], lista[high] = lista[high], lista[i + 1]
    return i + 1

lista = [45,21,34,65,97,6,345,245,65,421,7,5,3,25,11]
quickSort(lista, 0, len(lista) - 1)
print(lista)