select imie_pracownika, nazwisko_pracownika, pensja
from pracownik
where pensja > '2500'
order by pensja

select imie_osoby, nazwisko_osoby
from osoba
order by nazwisko_osoby

select tytul, rok_wydania
from ksiazka
where autor_id_autora = (select id_autora from autor where imie_autora = 'Maria' and nazwisko_autora = 'Konopnicka')

select tytul, ISBN
from ksiazka
where id_dzialu = (select id_dzialu from dzial where nazwa = 'przygodowe')

select id_karty, data_wypozyczenia
from wypozyczenie
where data_oddania is not null

select imie_pracownika, nazwisko_pracownika
from pracownik
where data_zwolnienia is null

select imie_pracownika, nazwisko_pracownika
from pracownik
where nazwisko_pracownika like 'K%'

select tytul, ISBN
from ksiazka
where rok_wydania < 1900

select imie_pracownika, nazwisko_pracownika, pensja
from pracownik
where pensja between 2000 and 3000
order by pensja

select imie_pracownika, nazwisko_pracownika, pensja, dodatek
from pracownik
where dodatek > 0
order by nazwisko_pracownika