def find_common(lista1, lista2, lista3):
    common = []
    pos2 = 0
    pos3 = 0
    for pos1 in range(0, len(lista1) - 1):
        while lista2[pos2] < lista1[pos1] and pos2 < len(lista2):
            pos2 += 1
        while lista3[pos3] < lista1[pos1] and pos3 < len(lista3):
            pos3 += 1
        if lista2[pos2] is lista1[pos1] and lista3[pos3] is lista1[pos1]:
            common.append(lista1[pos1])
        print(common)
    return common


lista1 = [0,4,7,12,15,23,25,30]
lista2 = [1,2,4,13,15,16,25,27]
lista3 = [0,4,5,7,8,15,20,22,24,25,29]
print(find_common(lista1, lista2, lista3))