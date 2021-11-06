import sys
from pathlib import Path
try:
    sys.argv[1]
except IndexError:
    print("Nie podałeś nazwy pliku tekstowego do wyświetlenia")
try:
    mode = sys.argv[2]
except IndexError:
    quit()
try:
    lines = []
    file = open(Path(__file__).with_name(sys.argv[1]), encoding='utf-8-sig')
    lines = file.readlines()
except FileNotFoundError:
    print("Nie znaleziono takiego pliku")
match mode:
    case "1":
        for i in lines:
            print(i, end='')
    case "2":
        for i in lines:
            if i[0:1] != "#":
                print(i, end='')
    case "3":
        licznik = 0
        for i in lines:
            licznik += 1
            print(f"{licznik}. {i}", end='')