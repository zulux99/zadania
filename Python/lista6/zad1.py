import matplotlib.pyplot as plt
class RownanieKwadratowe:
    def __init__(self, a, b, c):
        self.__a = a
        self.__b = b
        self.__c = c
    def __repr__(self):
        return (f"{self.__a}x^2 + {self.__b}x + {self.__c}")
    def aktualizuj(self, a, b, c):
        self.__a = a
        self.__b = b
        self.__c = c
    def oblicz(self, x):
        return self.__a * x ** 2 + self.__b * x + self.__c
    def obliczLiczbePierwiastkow(self):
        delta = self.__b ** 2 - 4 * self.__a * self.__c
        if delta > 0:
            return 2
        elif delta == 0:
            return 1
        else:
            return 0
    def rysujWykres(self):
        a = []
        b = []
        for x in range(-6, 6):
            y = self.__a * x ** 2 + self.__b * x + self.__c
            a.append(x)
            b.append(y)
        plt.figure().add_subplot(111).plot(a, b)
        plt.axhline(0, color='black')
        plt.axvline(0, color='black')
        plt.show()
rownanie = RownanieKwadratowe(2, 8, 5)
rownanie.rysujWykres()