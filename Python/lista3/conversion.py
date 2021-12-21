def binToDec(liczba):
    decimal = 0
    mnoznik = 1
    for i in liczba[::-1]:
        if i != "1" and i != "0":
            raise ValueError
        x = int(i) * mnoznik
        mnoznik *= 2
        decimal = decimal + x
    return decimal
