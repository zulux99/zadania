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

-- SELECTY NA WIELU TABELACH

SELECT o.imie_osoby, o.nazwisko_osoby, k.data_zalozenia
FROM osoba o, karta k
WHERE o.id_osoby = k.id_osoby ORDER BY k.data_zalozenia

SELECT COUNT(*) as "Liczba książek historycznych"
FROM dzial d, ksiazka k
WHERE d.id_dzialu = k.id_dzialu AND d.nazwa = "historyczne";

SELECT k.tytul, MIN(k.rok_wydania), a.imie_autora, a.nazwisko_autora
FROM ksiazka k, autor a
WHERE k.autor_id_autora = a.id_autora;

SELECT o.imie_osoby, o.nazwisko_osoby
FROM osoba o, karta k, wypozyczenie w
WHERE w.id_karty = k.id_karty AND k.id_osoby = o.id_osoby AND w.data_wypozyczenia BETWEEN '2014-01-01' AND '2019-01-01';

SELECT p.imie_pracownika, p.nazwisko_pracownika
FROM wypozyczenie w, pracownik p
WHERE w.id_pracownika_wypozyczajacego = p.id_pracownika AND data_oddania IS NULL

SELECT o.imie_osoby, o.nazwisko_osoby
FROM wypozyczenie w, osoba o, karta k
WHERE w.id_karty = k.id_karty AND k.id_osoby = o.id_osoby AND data_oddania IS NULL

SELECT k.tytul, COUNT(id_wypozyczenia) as "Ilość wypożyczeń"
FROM wypozyczenie w, ksiazka k, ksiazka_wydawca kw
WHERE w.id_ksiazka_wydawca = kw.id_ksiazka_wydawca AND k.idksiazka = kw.id_ksiazki
GROUP BY w.id_ksiazka_wydawca

SELECT o.imie_osoby, o.nazwisko_osoby, DATEDIFF(w.data_oddania, w.data_wypozyczenia) as "Ilość dni wypożyczenia"
FROM wypozyczenie w, osoba o, karta k
WHERE w.id_karty = k.id_karty AND k.id_osoby = o.id_osoby AND data_oddania IS NOT NULL

SELECT o.imie_osoby, o.nazwisko_osoby, p.imie_pracownika, p.nazwisko_pracownika, k.tytul, w.data_wypozyczenia
FROM osoba o, pracownik p, wypozyczenie w, ksiazka k, karta kr, ksiazka_wydawca kw
WHERE w.id_karty = kr.id_karty AND w.id_pracownika_wypozyczajacego = p.id_pracownika AND w.id_ksiazka_wydawca = kw.id_ksiazka_wydawca AND kr.id_osoby = o.id_osoby AND kw.id_ksiazki = k.idksiazka

SELECT o.imie_osoby, o.nazwisko_osoby, p.imie_pracownika, p.nazwisko_pracownika
FROM osoba o, pracownik p, wypozyczenie w, karta k
WHERE w.id_karty = k.id_karty AND k.id_osoby = o.id_osoby AND w.id_pracownika_wypozyczajacego = p.id_pracownika AND p.imie_pracownika = "Jan" AND p.nazwisko_pracownika = "Kowalski"

-- UPDATE

UPDATE `biblioteka`.`pracownik` SET `data_zwolnienia` = '2021-12-12' WHERE (`id_pracownika` = '1');
UPDATE `biblioteka`.`pracownik` SET `nazwisko_pracownika` = 'Malutkiewicz' WHERE (`id_pracownika` = '2');
UPDATE `biblioteka`.`osoba` SET `telefon_osoby` = '618626489' WHERE (`id_osoby` = '1');
UPDATE `biblioteka`.`osoba` SET `ulica_osoby` = 'Zielona', `miejscowosc_osoby` = 'Szczecin', `numer_osoby` = '13' WHERE (`id_osoby` = '5');
UPDATE `biblioteka`.`wypozyczenie` SET `data_oddania` = '2020-12-16', `id_pracownika_przyjmujacego` = '2' WHERE (`id_wypozyczenia` = '5');
UPDATE `biblioteka`.`wydawca` SET `nazwa_wydawcy` = 'Polskie Wydawnictwo Muzyczne - PWM' WHERE (`id_wydawcy` = '5');
UPDATE `biblioteka`.`karta` SET `data_zamkniecia` = '2021-06-30' WHERE (`id_karty` = '2');
UPDATE `biblioteka`.`karta` SET `data_zamkniecia` = '2019-02-25' WHERE (`id_karty` = '4');
UPDATE `biblioteka`.`pracownik` SET `dodatek` = '150' WHERE (`id_pracownika` = '5');
UPDATE `biblioteka`.`pracownik` SET `dodatek` = '20' WHERE (`id_pracownika` = '2');

-- WIDOKI

CREATE VIEW `ilosc_wypozyczen` AS
SELECT k.tytul, COUNT(id_wypozyczenia) as "Ilość wypożyczeń"
FROM wypozyczenie w, ksiazka k, ksiazka_wydawca kw
WHERE w.id_ksiazka_wydawca = kw.id_ksiazka_wydawca AND k.idksiazka = kw.id_ksiazki
GROUP BY w.id_ksiazka_wydawca

CREATE VIEW `aktualni_pracownicy` AS
SELECT imie_pracownika, nazwisko_pracownika
FROM pracownik
WHERE data_zwolnienia IS NULL

CREATE VIEW `aktualni_wypozyczajacy` AS
SELECT o.imie_osoby, o.nazwisko_osoby
FROM osoba o, karta k
WHERE o.id_osoby = k.id_osoby AND k.data_zamkniecia IS NULL

CREATE VIEW `ksiazki` AS
SELECT k.tytul, d.nazwa as "nazwa działu"
FROM ksiazka k, dzial d
WHERE k.id_dzialu = d.id_dzialu

CREATE VIEW `wydawcy` AS
SELECT nazwa_wydawcy FROM wydawca

