INSERT INTO `biblioteka`.`autor`
(`imie_autora`,
`nazwisko_autora`)
VALUES
('Henryk', 'Sienkiewicz'),
('Adam', 'Mickiewicz'),
('Jan', 'Brzechwa'),
('Maria', 'Konopnicka'),
('Bolesław', 'Prus');

INSERT INTO `biblioteka`.`dzial`
(`nazwa`)
VALUES
('fantasy'),
('science-fiction'),
('przygodowe'),
('przyrodnicze'),
('historyczne');

INSERT INTO `biblioteka`.`wydawca`
(`nazwa_wydawcy`)
VALUES
('Nowa Era'),
('CDN'),
('Grupa Edukacyjna S.A'),
('Polonia Book Found Ltd'),
('Polskie Wydawnictwo Muzyczne');

INSERT INTO `biblioteka`.`pracownik`
(`imie_pracownika`,
`nazwisko_pracownika`,
`data_zatrudnienia`,
`data_zwolnienia`,
`pensja`,
`dodatek`)
VALUES
('Jan', 'Kowalski', '2018-10-20', null, '3500', '120'),
('Anna', 'Małysz', '2013-04-13', null, '3100', '0'),
('Marek', 'Kownacki', '2009-01-25', '2016-08-28', '2500', '250'),
('Arkadiusz', 'Niedzielski', '2020-09-14', null, '2100', '50'),
('Jagoda', 'Ziemnicka', '2019-02-02', null, '2800', '0');

INSERT INTO `biblioteka`.`osoba`
(`imie_osoby`,
`nazwisko_osoby`,
`ulica_osoby`,
`miejscowosc_osoby`,
`numer_osoby`,
`telefon_osoby`)
VALUES
('Alina', 'Bąk', 'Sosnowa', 'Grudziądz', '56', '794270663'),
('Remigiusz', 'Musiał', 'Łąkowa', 'Świnoujście', '13', '722842410'),
('Oleksii', 'Ziółkowski', 'Różana', 'Łomża', '42', '659809857'),
('Julian', 'Pawłowski', 'Witosa', 'Łomża', '7', '674856450'),
('Przemysław', 'Ratajczak', 'Struga', 'Świętochłowice', '28', '635752879');

INSERT INTO `biblioteka`.`ksiazka`
(`tytul`,
`ISBN`,
`rok_wydania`,
`id_dzialu`,
`autor_id_autora`)
VALUES
('W pustyni i w puszczy', '978-83-240-2959-4', 1911, 
(SELECT id_dzialu FROM dzial where nazwa = 'przygodowe'),
(SELECT id_autora FROM autor where imie_autora = 'Henryk' and nazwisko_autora = 'Sienkiewicz')
),
('Pan Tadeusz', '978-83-070-3341-9', 1834, 
(SELECT id_dzialu FROM dzial where nazwa = 'historyczne'),
(SELECT id_autora FROM autor where imie_autora = 'Adam' and nazwisko_autora = 'Mickiewicz')
),
('Wiersze i wierszyki dla dzieci', '978-83-280-1870-9', 1996, 
(SELECT id_dzialu FROM dzial where nazwa = 'przygodowe'),
(SELECT id_autora FROM autor where imie_autora = 'Jan' and nazwisko_autora = 'Brzechwa')
),
('Mendel Gdański', '978-83-270-0637-0', 1890, 
(SELECT id_dzialu FROM dzial where nazwa = 'historyczne'),
(SELECT id_autora FROM autor where imie_autora = 'Maria' and nazwisko_autora = 'Konopnicka')
),
('Lalka', '978-83-7779-206-3', 1889, 
(SELECT id_dzialu FROM dzial where nazwa = 'historyczne'),
(SELECT id_autora FROM autor where imie_autora = 'Bolesław' and nazwisko_autora = 'Prus')
);

INSERT INTO `biblioteka`.`ksiazka_wydawca`
(`id_wydawcy`,
`id_ksiazki`)
VALUES
((SELECT id_wydawcy FROM wydawca WHERE nazwa_wydawcy = 'Nowa Era'),
(SELECT idksiazka FROM ksiazka WHERE tytul = 'W pustyni i w puszczy')),
((SELECT id_wydawcy FROM wydawca WHERE nazwa_wydawcy = 'Polskie Wydawnictwo Muzyczne'),
(SELECT idksiazka FROM ksiazka WHERE tytul = 'Mendel Gdański')),
((SELECT id_wydawcy FROM wydawca WHERE nazwa_wydawcy = 'Polonia Book Found Ltd'),
(SELECT idksiazka FROM ksiazka WHERE tytul = 'Lalka')),
((SELECT id_wydawcy FROM wydawca WHERE nazwa_wydawcy = 'Grupa Edukacyjna S.A'),
(SELECT idksiazka FROM ksiazka WHERE tytul = 'Pan Tadeusz')),
((SELECT id_wydawcy FROM wydawca WHERE nazwa_wydawcy = 'CDN'),
(SELECT idksiazka FROM ksiazka WHERE tytul = 'Wiersze i wierszyki dla dzieci'));

INSERT INTO `biblioteka`.`karta`
(`data_zalozenia`,
`data_zamkniecia`,
`id_osoby`)
VALUES
('2018-01-25', null, (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Alina' AND nazwisko_osoby = 'Bąk')),
('2012-09-04', null, (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Remigiusz' AND nazwisko_osoby = 'Musiał')),
('2009-12-27', null, (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Oleksii' AND nazwisko_osoby = 'Ziółkowski')),
('2014-07-12', null, (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Julian' AND nazwisko_osoby = 'Pawłowski')),
('2020-11-25', null, (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Przemysław' AND nazwisko_osoby = 'Ratajczak'));

INSERT INTO `biblioteka`.`wypozyczenie`
(`data_wypozyczenia`,
`data_oddania`,
`id_karty`,
`id_ksiazka_wydawca`,
`id_pracownika_wypozyczajacego`,
`id_pracownika_przyjmujacego`)
VALUES
('2013-02-04', '2013-05-14', 
(SELECT id_karty FROM karta
WHERE id_osoby = (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Oleksii' AND nazwisko_osoby = 'Ziółkowski')),
(SELECT id_ksiazka_wydawca FROM ksiazka_wydawca
WHERE id_ksiazki = (SELECT idksiazka FROM ksiazka WHERE tytul = 'Mendel Gdański')),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Marek' AND nazwisko_pracownika = 'Kownacki'),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Arkadiusz' AND nazwisko_pracownika = 'Niedzielski')),
('2018-08-27', '2018-09-14', 
(SELECT id_karty FROM karta
WHERE id_osoby = (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Przemysław' AND nazwisko_osoby = 'Ratajczak')),
(SELECT id_ksiazka_wydawca FROM ksiazka_wydawca
WHERE id_ksiazki = (SELECT idksiazka FROM ksiazka WHERE tytul = 'Wiersze i wierszyki dla dzieci')),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Arkadiusz' AND nazwisko_pracownika = 'Niedzielski'),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Arkadiusz' AND nazwisko_pracownika = 'Niedzielski')),
('2020-11-20', null,
(SELECT id_karty FROM karta
WHERE id_osoby = (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Julian' AND nazwisko_osoby = 'Pawłowski')),
(SELECT id_ksiazka_wydawca FROM ksiazka_wydawca
WHERE id_ksiazki = (SELECT idksiazka FROM ksiazka WHERE tytul = 'Pan Tadeusz')),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Jagoda' AND nazwisko_pracownika = 'Ziemnicka'),
null),
('2015-09-07', '2016-01-30', 
(SELECT id_karty FROM karta
WHERE id_osoby = (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Remigiusz' AND nazwisko_osoby = 'Musiał')),
(SELECT id_ksiazka_wydawca FROM ksiazka_wydawca
WHERE id_ksiazki = (SELECT idksiazka FROM ksiazka WHERE tytul = 'Mendel Gdański')),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Jan' AND nazwisko_pracownika = 'Kowalski'),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Jagoda' AND nazwisko_pracownika = 'Ziemnicka')),
('2020-09-25', null, 
(SELECT id_karty FROM karta
WHERE id_osoby = (SELECT id_osoby FROM osoba WHERE imie_osoby = 'Alina' AND nazwisko_osoby = 'Bąk')),
(SELECT id_ksiazka_wydawca FROM ksiazka_wydawca
WHERE id_ksiazki = (SELECT idksiazka FROM ksiazka WHERE tytul = 'Lalka')),
(SELECT id_pracownika FROM pracownik WHERE imie_pracownika = 'Marek' AND nazwisko_pracownika = 'Kownacki'),
null);
