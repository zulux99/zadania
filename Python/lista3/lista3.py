# ZADANIE 1
from conversion import binToDec
try:
    print("Liczba dziesiętna:", binToDec(input("Podaj liczbę binarną: ")))
except ValueError:
    print("Podałeś nieprawidłową liczbę")
# ZADANIE 2
def wykonajRuch(gracz):
    litera = input("Podaj literę: ")
    liczba = input("Podaj liczbę: ")
    match litera, liczba:
        case "a", "1": a[0] = gracz
        case "a", "2": a[1] = gracz
        case "a", "3": a[2] = gracz
        case "b", "1": b[0] = gracz
        case "b", "2": b[1] = gracz
        case "b", "3": b[2] = gracz
        case "c", "1": c[0] = gracz
        case "c", "2": c[1] = gracz
        case "c", "3": c[2] = gracz
def ktoWygral(a, b, c):
    for ia, ib, ic in zip(a, b, c):
        if ia == ib == ic and ia != "":
            print("Wygrał gracz:", ia)
            return True
    if a[0] == b[1] == c[2] and a[0] != "":
        print("Wygrał gracz:", a[0])
        return True
    if a[2] == b[1] == c[0] and c[0] != "":
        print("Wygrał gracz:", c[0])
        return True
    return False
def odwrocListe(a, b, c):
    kopia_a = a.copy()
    kopia_b = b.copy()
    kopia_c = c.copy()
    kopia_a[1], kopia_b[0] = kopia_b[0], kopia_a[1]
    kopia_a[2], kopia_c[0] = kopia_c[0], kopia_a[2]
    kopia_b[2], kopia_c[1] = kopia_c[1], kopia_b[2]
    return ktoWygral(kopia_a, kopia_b, kopia_c)
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
    licznik = 0
    if ktoWygral(a, b, c) or odwrocListe(a, b, c):
        break
# ZADANIE 3
import tkinter
okno = tkinter.Tk()
okno.geometry("215x235")
tkinter.Text(okno).place(x = 10, y = 10, width = 195, height = 50)
tkinter.Button(okno, text="7").place(x = 10, y = 70, width = 35, height = 30)
tkinter.Button(okno, text="8").place(x = 50, y = 70, width = 35, height = 30)
tkinter.Button(okno, text="9").place(x = 90, y = 70, width = 35, height = 30)
tkinter.Button(okno, text="/").place(x = 130, y = 70, width = 35, height = 30)
tkinter.Button(okno, text="√").place(x = 170, y = 70, width = 35, height = 30)
tkinter.Button(okno, text="4").place(x = 10, y = 110, width = 35, height = 30)
tkinter.Button(okno, text="5").place(x = 50, y = 110, width = 35, height = 30)
tkinter.Button(okno, text="6").place(x = 90, y = 110, width = 35, height = 30)
tkinter.Button(okno, text="*").place(x = 130, y = 110, width = 35, height = 30)
tkinter.Button(okno, text="%").place(x = 170, y = 110, width = 35, height = 30)
tkinter.Button(okno, text="1").place(x = 10, y = 150, width = 35, height = 30)
tkinter.Button(okno, text="2").place(x = 50, y = 150, width = 35, height = 30)
tkinter.Button(okno, text="3").place(x = 90, y = 150, width = 35, height = 30)
tkinter.Button(okno, text="-").place(x = 130, y = 150, width = 35, height = 30)
tkinter.Button(okno, text="=").place(x = 170, y = 150, width = 35, height = 70)
tkinter.Button(okno, text="0").place(x = 10, y = 190, width = 75, height = 30)
tkinter.Button(okno, text=",").place(x = 90, y = 190, width = 35, height = 30)
tkinter.Button(okno, text="+").place(x = 130, y = 190, width = 35, height = 30)
okno.mainloop()
# ZADANIE 4
import tkinter
import time
def aktualizuj():
    czas.config(text=time.strftime('%H:%M:%S'), font=("Arial", 50))
    zegar.after(1000, aktualizuj)
zegar = tkinter.Tk()
zegar.title("Zegar")
czas = tkinter.Label()
czas.grid()
aktualizuj()
zegar.mainloop()
# ZADANIE 5
import tkinter
def reset():
    global dzialanie, znak, dzialanieWTle
    dzialanie = "0"
    znak = ""
    dzialanieWTle = "0"
def wyswietl(tekst):
    screen.config(text = tekst)
def click(wartosc):
    global dzialanie, znak
    try:
        if int(wartosc) == 0 and int(dzialanie) == 0:
            pass
        elif int(wartosc) in range(0, 10) and znak == ",":
            dzialanie += wartosc
        elif int(wartosc) in range(0, 10):
            if int(dzialanie) == 0:
                dzialanie = ""
            dzialanie += wartosc
        wyswietl(dzialanie)
    except ValueError:
        global dzialanieWTle
        if wartosc != "" and wartosc != "=":
            if znak != "" and znak != ",":
                return
            znak = wartosc
            if znak != ",":
                dzialanieWTle, dzialanie = dzialanie, dzialanieWTle
        if znak == "C":
            wyswietl(dzialanie)
            reset()
        if znak == "," and wartosc != "=":
            dzialanie = dzialanie + "."
            wyswietl(dzialanie)
        if znak == "√":
            dzialanie = float(dzialanieWTle) ** 0.5
            wyswietl(dzialanie)
            reset()
        if wartosc == "=":
            if znak == "" or znak == ",":
                return
            match znak:
                case "/":
                    dzialanie = float(dzialanieWTle) / int(dzialanie)
                    wyswietl(dzialanie)
                case "*":
                    dzialanie = float(dzialanieWTle) * int(dzialanie)
                    wyswietl(dzialanie)
                case "-":
                    dzialanie = float(dzialanieWTle) - int(dzialanie)
                    wyswietl(dzialanie)
                case "+":
                    dzialanie = float(dzialanieWTle) + int(dzialanie)
                    wyswietl(dzialanie)
            reset()
reset()
kalkulator = tkinter.Tk()
kalkulator.geometry("215x235")
screen = tkinter.Label(kalkulator, text=dzialanie)
screen.config(background="white", font=("Arial", 15))
screen.place(x = 10, y = 10, width = 195, height = 50)
przycisk0 = tkinter.Button(kalkulator, text="0", command=lambda:click("0"))
przycisk0.place(x = 10, y = 190, width = 75, height = 30)
przycisk1 = tkinter.Button(kalkulator, text="1", command=lambda:click("1"))
przycisk1.place(x = 10, y = 150, width = 35, height = 30)
przycisk2 = tkinter.Button(kalkulator, text="2", command=lambda:click("2"))
przycisk2.place(x = 50, y = 150, width = 35, height = 30)
przycisk3 = tkinter.Button(kalkulator, text="3", command=lambda:click("3"))
przycisk3.place(x = 90, y = 150, width = 35, height = 30)
przycisk4 = tkinter.Button(kalkulator, text="4", command=lambda:click("4"))
przycisk4.place(x = 10, y = 110, width = 35, height = 30)
przycisk5 = tkinter.Button(kalkulator, text="5", command=lambda:click("5"))
przycisk5.place(x = 50, y = 110, width = 35, height = 30)
przycisk6 = tkinter.Button(kalkulator, text="6", command=lambda:click("6"))
przycisk6.place(x = 90, y = 110, width = 35, height = 30)
przycisk7 = tkinter.Button(kalkulator, text="7", command=lambda:click("7"))
przycisk7.place(x = 10, y = 70, width = 35, height = 30)
przycisk8 = tkinter.Button(kalkulator, text="8", command=lambda:click("8"))
przycisk8.place(x = 50, y = 70, width = 35, height = 30)
przycisk9 = tkinter.Button(kalkulator, text="9", command=lambda:click("9"))
przycisk9.place(x = 90, y = 70, width = 35, height = 30)
przyciskDzielenia = tkinter.Button(kalkulator, text="/", command=lambda:click("/"))
przyciskDzielenia.place(x = 130, y = 70, width = 35, height = 30)
przyciskPierwiastka = tkinter.Button(kalkulator, text="√", command=lambda:click("√"))
przyciskPierwiastka.place(x = 170, y = 70, width = 35, height = 30)
przyciskMnozenia = tkinter.Button(kalkulator, text="*", command=lambda:click("*"))
przyciskMnozenia.place(x = 130, y = 110, width = 35, height = 30)
przyciskProcentow = tkinter.Button(kalkulator, text="C", command=lambda:click("C"))
przyciskProcentow.place(x = 170, y = 110, width = 35, height = 30)
przyciskOdejmowania = tkinter.Button(kalkulator, text="-", command=lambda:click("-"))
przyciskOdejmowania.place(x = 130, y = 150, width = 35, height = 30)
przyciskSuma = tkinter.Button(kalkulator, text="=", command=lambda:click("="))
przyciskSuma.place(x = 170, y = 150, width = 35, height = 70)
przyciskPrzecinek = tkinter.Button(kalkulator, text=",", command=lambda:click(","))
przyciskPrzecinek.place(x = 90, y = 190, width = 35, height = 30)
przyciskPlus = tkinter.Button(kalkulator, text="+", command=lambda:click("+"))
przyciskPlus.place(x = 130, y = 190, width = 35, height = 30)
kalkulator.mainloop()
# ZADANIE 6
import turtle
def main():
    turtle.setup()
    turtle.speed(10)
    domek()
    kwiatek()
    slonce()
    turtle.hideturtle()
    turtle.done()
# def triangle(size):
#     for i in range(3):
#         turtle.forward(size)
#         turtle.left(120)
def domek():
    turtle.right(90)
    turtle.forward(100)
    turtle.left(90)
    turtle.forward(60)
    turtle.left(90)
    turtle.forward(30)
    turtle.left(90)
    turtle.forward(20)
    turtle.left(90)
    turtle.forward(30)
    turtle.left(90)
    turtle.forward(60)
    turtle.left(90)
    turtle.forward(100)
    turtle.left(90)
    turtle.forward(100)
    turtle.penup()
    turtle.left(180)
    turtle.forward(10)
    turtle.right(90)
    turtle.forward(5)
    turtle.pendown()
    turtle.forward(25)
    turtle.left(90)
    turtle.forward(20)
    turtle.left(90)
    turtle.forward(25)
    turtle.left(90)
    turtle.forward(20)
    turtle.penup()
    turtle.right(90)
    turtle.forward(5)
    turtle.right(90)
    turtle.forward(60)
    turtle.right(90)
    turtle.forward(5)
    turtle.pendown()
    turtle.forward(25)
    turtle.left(90)
    turtle.forward(20)
    turtle.left(90)
    turtle.forward(25)
    turtle.left(90)
    turtle.forward(20)
    turtle.penup()
    turtle.right(90)
    turtle.forward(5)
    turtle.right(90)
    turtle.forward(30)
    turtle.pendown()
    turtle.forward(10)
    turtle.left(130)
    turtle.forward(30)
    turtle.right(40)
    turtle.forward(30)
    turtle.right(90)
    turtle.forward(5)
    turtle.left(90)
    turtle.forward(5)
    turtle.left(90)
    turtle.forward(20)
    turtle.left(90)
    turtle.forward(5)
    turtle.left(90)
    turtle.forward(5)
    turtle.right(90)
    turtle.forward(20)
    turtle.right(140)
    turtle.forward(45)
    turtle.left(98)
    turtle.forward(91)
    turtle.left(132)
    turtle.forward(10)
    turtle.penup()
    turtle.right(180)
    turtle.forward(70)
    turtle.left(90)
    turtle.forward(100)
    turtle.left(180)
    turtle.pendown()
def kwiatek():
    turtle.forward(25)
    turtle.penup()
    turtle.forward(5)
    turtle.right(90)
    turtle.pendown()
    turtle.circle(10)
    turtle.right(90)
    turtle.penup()
    turtle.forward(5)
    turtle.right(180)
    turtle.pendown()
    turtle.right(160)
    for i in range(0, 5):
        turtle.circle(10, 208)
        turtle.right(135)
    turtle.penup()
    turtle.left(160)
    turtle.forward(150)
    turtle.pendown()
def slonce():
    turtle.circle(20)
    turtle.left(65)
    for i in range(0, 12):
        turtle.right(130)
        turtle.forward(30)
        turtle.left(160)
        turtle.forward(30)
main()