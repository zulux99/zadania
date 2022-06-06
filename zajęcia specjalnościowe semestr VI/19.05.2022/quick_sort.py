def quickSort(lista, low, high):
    if low < high:
        pi = partition(lista, low, high)
        quickSort(lista, low, pi - 1)
        quickSort(lista, pi + 1, high)


def partition(lista, low, high):
    pivot = lista[high]
    
lista = [45,21,34,65,97,6,345,245,65,421,7,5,3,25,11]
quickSort(lista, 0, lista(len) - 1)