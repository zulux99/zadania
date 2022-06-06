import random

class Deck():
    def __init__(self):
        self.cards = []
        self.dodajWszystkie()

    def dodajWszystkie(self):
        kolory = ["karo", "trefl", "pik", "kier"]
        wartosci = ['2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K', 'A']
        for kolor in kolory:
            for wartosc in wartosci:
                self.cards.append(Card(kolor, wartosc))

    def shuffle(self):
        for i in range(0, len(self.cards) - 1):
            losowa = random.randint(0, len(self.cards) - 1)
            self.cards[i], self.cards[losowa] = self.cards[losowa], self.cards[i]

    def pickCard(self):
        return self.cards.pop(0)

    def show(self):
        for i in range(0, len(self.cards)):
            print(self.cards[i].kolor, self.cards[i].wartosc, end="\t")
    

class Card():
    def __init__(self, kolor, wartosc):
        self.kolor = kolor
        self.wartosc = wartosc

    def __str__(self):
        return str(self.kolor) + " " + str(self.wartosc)



taliaKart = Deck()
taliaKart.shuffle()
print(taliaKart.pickCard())
print("\n")
taliaKart.show()
