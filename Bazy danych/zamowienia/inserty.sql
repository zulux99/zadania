INSERT INTO `zamowienia`.`dzial` (`nazwa_dzial`) VALUES ('sprzedaż');
INSERT INTO `zamowienia`.`dzial` (`nazwa_dzial`) VALUES ('kadry');
INSERT INTO `zamowienia`.`dzial` (`nazwa_dzial`) VALUES ('obsługa klienta');
INSERT INTO `zamowienia`.`dzial` (`nazwa_dzial`) VALUES ('marketing');

INSERT INTO `zamowienia`.`filia` (`nazwa_filia`) VALUES ('Wrocław');
INSERT INTO `zamowienia`.`filia` (`nazwa_filia`) VALUES ('Warszawa');
INSERT INTO `zamowienia`.`filia` (`nazwa_filia`) VALUES ('Poznań');
INSERT INTO `zamowienia`.`filia` (`nazwa_filia`) VALUES ('Kraków');

INSERT INTO `zamowienia`.`klient` (`imie_klient`, `nazwisko_klient`, `adres_1`, `adres_2`, `adres_3`) VALUES ('Maurycy', 'Bednarski', 'ul. Niecała 8/9', '52-156', 'Środa Śląska');
INSERT INTO `zamowienia`.`klient` (`imie_klient`, `nazwisko_klient`, `adres_1`, `adres_2`, `adres_3`) VALUES ('Kamila', 'Konarska', 'Będkowice 38', '54-523', 'Wrocław');
INSERT INTO `zamowienia`.`klient` (`imie_klient`, `nazwisko_klient`, `adres_1`, `adres_2`, `adres_3`) VALUES ('Wojciech', 'Uciechowski', 'ul. Wąska 23a', '55-689', 'Raszyn');
INSERT INTO `zamowienia`.`klient` (`imie_klient`, `nazwisko_klient`, `adres_1`, `adres_2`, `adres_3`) VALUES ('Jan', 'Jankowski', 'ul. Krótka 2a', '69-112', 'Poznań');
INSERT INTO `zamowienia`.`klient` (`imie_klient`, `nazwisko_klient`, `adres_1`, `adres_2`, `adres_3`) VALUES ('Bożena', 'Wielka', 'ul. Balicka 55/45', '28-569', 'Kraków');

INSERT INTO `zamowienia`.`stanowisko` (`nazwa_stanowisko`) VALUES ('pracownik biurowy');
INSERT INTO `zamowienia`.`stanowisko` (`nazwa_stanowisko`) VALUES ('kadrowa');
INSERT INTO `zamowienia`.`stanowisko` (`nazwa_stanowisko`) VALUES ('sprzedawca');
INSERT INTO `zamowienia`.`stanowisko` (`nazwa_stanowisko`) VALUES ('handlowiec');

INSERT INTO `zamowienia`.`pracownik` (`imie_pracownik`, `nazwisko_pracownik`, `pesel_pracownik`, `id_stanowisko`, `id_dzial`, `id_filia`) VALUES ('Jan', 'Kowalski', '67121323456', '1', '1', '1');
INSERT INTO `zamowienia`.`pracownik` (`imie_pracownik`, `nazwisko_pracownik`, `pesel_pracownik`, `id_stanowisko`, `id_dzial`, `id_filia`) VALUES ('Maria', 'Wróblewska', '88081298765', '2', '2', '2');
INSERT INTO `zamowienia`.`pracownik` (`imie_pracownik`, `nazwisko_pracownik`, `pesel_pracownik`, `id_stanowisko`, `id_dzial`, `id_filia`) VALUES ('Maksymilian', 'Zabłocki', '89031202562', '3', '3', '3');
INSERT INTO `zamowienia`.`pracownik` (`imie_pracownik`, `nazwisko_pracownik`, `pesel_pracownik`, `id_stanowisko`, `id_dzial`, `id_filia`) VALUES ('Walery', 'Walerowski', '91326502336', '4', '4', '4');

INSERT INTO `zamowienia`.`rodzaj_produkt` (`nazwa_rodzaj_produkt`) VALUES ('Tusz');
INSERT INTO `zamowienia`.`rodzaj_produkt` (`nazwa_rodzaj_produkt`) VALUES ('Papier');
INSERT INTO `zamowienia`.`rodzaj_produkt` (`nazwa_rodzaj_produkt`) VALUES ('Monitor');
INSERT INTO `zamowienia`.`rodzaj_produkt` (`nazwa_rodzaj_produkt`) VALUES ('Toner');
INSERT INTO `zamowienia`.`rodzaj_produkt` (`nazwa_rodzaj_produkt`) VALUES ('Mysz optyczna');

INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('ZZWQ22', '100.00', '1');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('A4', '15.99', '2');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('LCD17', '459.99', '3');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('LCD24', '689.99', '3');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('M23', '256.99', '4');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('H323', '276.99', '4');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('Y652', '311.99', '4');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('W235R', '256.99', '4');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('KK23', '168.99', '5');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('YRK32W', '126.99', '5');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('ZYR65WQ', '224.99', '5');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('LCD24DH', '1029.99', '3');
INSERT INTO `zamowienia`.`produkt` (`nazwa_produkt`, `cena_produkt`, `id_rodzaj_produkt`) VALUES ('LCD24DHYW', '1259.99', '3');

INSERT INTO `zamowienia`.`forma_platnosci` (`nazwa_forma_platnosci`) VALUES ('Gotówka');
INSERT INTO `zamowienia`.`forma_platnosci` (`nazwa_forma_platnosci`) VALUES ('Przelew');
INSERT INTO `zamowienia`.`forma_platnosci` (`nazwa_forma_platnosci`) VALUES ('Przelew odroczony');

INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('333/2016', '2016-01-13', '2016-01-31', '1');
INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('334/2016', '2016-02-25', '2016-02-28', '3');
INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('335/2016', '2016-03-16', '2016-04-30', '2');
INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('498/2016', '2016-06-23', '2016-07-02', '2');
INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('566/2016', '2016-08-18', '2016-08-24', '1');
INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('689/2016', '2016-09-24', '2016-09-29', '3');
INSERT INTO `zamowienia`.`faktura` (`numer_faktura`, `data_wystawienia_faktura`, `termin_platnosci_faktura`, `id_forma_platnosci`) VALUES ('705/2016', '2016-09-24', '2016-09-29', '3');

INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('253', '2016-01-12', '2016-01-14', (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Jan' and nazwisko_pracownik = 'Kowalski'), (SELECT id_klient FROM klient WHERE imie_klient = 'Maurycy' and nazwisko_klient = 'Bednarski'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '333/2016'));
INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('368', '2016-02-24', '2016-02-26', (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Jan' and nazwisko_pracownik = 'Kowalski'), (SELECT id_klient FROM klient WHERE imie_klient = 'Kamila' and nazwisko_klient = 'Konarska'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '334/2016'));
INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('458', '2016-03-15', '2016-03-22', (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Maria' and nazwisko_pracownik = 'Wróblewska'), (SELECT id_klient FROM klient WHERE imie_klient = 'Wojciech' and nazwisko_klient = 'Uciechowski'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '335/2016'));
INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('789', '2016-06-22', '2016-06-25', (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Maksymilian' and nazwisko_pracownik = 'Zabłocki'), (SELECT id_klient FROM klient WHERE imie_klient = 'Jan' and nazwisko_klient = 'Jankowski'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '498/2016'));
INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('1024', '2016-08-16', '2016-08-22', (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Walery' and nazwisko_pracownik = 'Walerowski'), (SELECT id_klient FROM klient WHERE imie_klient = 'Bożena' and nazwisko_klient = 'Wielka'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '566/2016'));
INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('2068', '2016-09-22', null, (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Jan' and nazwisko_pracownik = 'Kowalski'), (SELECT id_klient FROM klient WHERE imie_klient = 'Maurycy' and nazwisko_klient = 'Bednarski'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '689/2016'));
INSERT INTO `zamowienia`.`zamowienie` (`numer_zamowienie`, `data_przyjecie_zamowienie`, `data_realizacji`, `id_pracownik`, `klient_id_klient`, `id_faktura`) VALUES ('3012', '2016-09-22', null, (SELECT id_pracownik FROM pracownik WHERE imie_pracownik = 'Maria' and nazwisko_pracownik = 'Wróblewska'), (SELECT id_klient FROM klient WHERE imie_klient = 'Wojciech' and nazwisko_klient = 'Uciechowski'), (SELECT id_faktura FROM faktura WHERE numer_faktura = '705/2016'));

INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('3', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '253'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'ZZWQ22'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('10', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '253'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'A4'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('20', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '368'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'A4'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('1', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '458'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'LCD17'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('1', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '458'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'LCD24'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('2', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '789'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'M23'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('2', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '789'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'H323'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('2', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '789'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'Y652'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('2', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '789'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'W235R'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('8', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '1024'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'KK23'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('12', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '1024'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'YRK32W'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('16', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '1024'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'ZYR65WQ'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('3', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '2068'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'KK23'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('5', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '2068'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'YRK32W'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('4', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '3012'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'LCD24DH'));
INSERT INTO `zamowienia`.`zamowienie_produkt` (`ilosc`, `id_zamowienie`, `id_produkt`) VALUES ('8', (SELECT id_zamowienie FROM zamowienie WHERE numer_zamowienie = '3012'), (SELECT id_produkt FROM produkt WHERE nazwa_produkt = 'LCD24DHYW'));