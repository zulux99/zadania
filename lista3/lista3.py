# # ZADANIE 1
# from conversion import binToDec
# try:
#     print("Liczba dziesiętna:", binToDec(input("Podaj liczbę binarną: ")))
# except ValueError:
#     print("Podałeś nieprawidłową liczbę")
# # ZADANIE 2
def wykonajRuch(gracz):
    litera = input("Podaj literę: ")
    liczba = input("Podaj liczbę: ")
    match litera, liczba:
        case "a", "1":
            a[0] = gracz
        case "a", "2":
            a[1] = gracz
        case "a", "3":
            a[2] = gracz
        case "b", "1":
            b[0] = gracz
        case "b", "2":
            b[1] = gracz
        case "b", "3":
            b[2] = gracz
        case "c", "1":
            c[0] = gracz
        case "c", "2":
            c[1] = gracz
        case "c", "3":
            c[2] = gracz
def ktoWygral(a, b, c):
    ciag = ""
    # for ia, ib, ic in zip(a, b, c):
        
    return
a = ["", "", ""]
b = ["", "", ""]
c = ["", "", ""]
gracz = "o"
while True:
    if gracz == "x":
        gracz = "o"
    else:
        gracz = "x"
    wykonajRuch(gracz)
    print(a)
    print(b)
    print(c)
    print("Wygrał:", ktoWygral(a, b, c))