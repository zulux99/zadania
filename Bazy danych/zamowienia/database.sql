-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema zamowienia
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema zamowienia
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `zamowienia` DEFAULT CHARACTER SET utf8 ;
USE `zamowienia` ;

-- -----------------------------------------------------
-- Table `zamowienia`.`dzial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`dzial` (
  `id_dzial` INT NOT NULL AUTO_INCREMENT,
  `nazwa_dzial` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dzial`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`stanowisko`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`stanowisko` (
  `id_stanowisko` INT NOT NULL AUTO_INCREMENT,
  `nazwa_stanowisko` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_stanowisko`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`filia`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`filia` (
  `id_filia` INT NOT NULL AUTO_INCREMENT,
  `nazwa_filia` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_filia`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`forma_platnosci`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`forma_platnosci` (
  `id_forma_platnosci` INT NOT NULL AUTO_INCREMENT,
  `nazwa_forma_platnosci` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_forma_platnosci`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`faktura`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`faktura` (
  `id_faktura` INT NOT NULL AUTO_INCREMENT,
  `numer_faktura` VARCHAR(15) NOT NULL,
  `data_wystawienia_faktura` DATE NOT NULL,
  `termin_platnosci_faktura` DATE NOT NULL,
  `id_forma_platnosci` INT NOT NULL,
  PRIMARY KEY (`id_faktura`),
  INDEX `fk_faktura_forma_platnosci_idx` (`id_forma_platnosci` ASC) VISIBLE,
  CONSTRAINT `fk_faktura_forma_platnosci`
    FOREIGN KEY (`id_forma_platnosci`)
    REFERENCES `zamowienia`.`forma_platnosci` (`id_forma_platnosci`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`klient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`klient` (
  `id_klient` INT NOT NULL AUTO_INCREMENT,
  `imie_klient` VARCHAR(45) NOT NULL,
  `nazwisko_klient` VARCHAR(45) NOT NULL,
  `adres_1` VARCHAR(45) NOT NULL,
  `adres_2` VARCHAR(6) NOT NULL,
  `adres_3` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_klient`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`rodzaj_produkt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`rodzaj_produkt` (
  `id_rodzaj_produkt` INT NOT NULL AUTO_INCREMENT,
  `nazwa_rodzaj_produkt` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_rodzaj_produkt`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`produkt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`produkt` (
  `id_produkt` INT NOT NULL AUTO_INCREMENT,
  `nazwa_produkt` VARCHAR(45) NOT NULL,
  `cena_produkt` DECIMAL(8,2) NOT NULL,
  `id_rodzaj_produkt` INT NOT NULL,
  PRIMARY KEY (`id_produkt`),
  INDEX `fk_produkt_rodzaj_produkt1_idx` (`id_rodzaj_produkt` ASC) VISIBLE,
  CONSTRAINT `fk_produkt_rodzaj_produkt1`
    FOREIGN KEY (`id_rodzaj_produkt`)
    REFERENCES `zamowienia`.`rodzaj_produkt` (`id_rodzaj_produkt`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`pracownik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`pracownik` (
  `id_pracownik` INT NOT NULL AUTO_INCREMENT,
  `imie_pracownik` VARCHAR(45) NOT NULL,
  `nazwisko_pracownik` VARCHAR(45) NOT NULL,
  `pesel_pracownik` VARCHAR(11) NOT NULL,
  `id_stanowisko` INT NOT NULL,
  `id_dzial` INT NOT NULL,
  `id_filia` INT NOT NULL,
  PRIMARY KEY (`id_pracownik`),
  INDEX `fk_pracownik_stanowisko1_idx` (`id_stanowisko` ASC) VISIBLE,
  INDEX `fk_pracownik_dzial1_idx` (`id_dzial` ASC) VISIBLE,
  INDEX `fk_pracownik_filia1_idx` (`id_filia` ASC) VISIBLE,
  CONSTRAINT `fk_pracownik_stanowisko1`
    FOREIGN KEY (`id_stanowisko`)
    REFERENCES `zamowienia`.`stanowisko` (`id_stanowisko`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pracownik_dzial1`
    FOREIGN KEY (`id_dzial`)
    REFERENCES `zamowienia`.`dzial` (`id_dzial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pracownik_filia1`
    FOREIGN KEY (`id_filia`)
    REFERENCES `zamowienia`.`filia` (`id_filia`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`zamowienie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`zamowienie` (
  `id_zamowienie` INT NOT NULL AUTO_INCREMENT,
  `numer_zamowienie` VARCHAR(6) NOT NULL,
  `data_przyjecie_zamowienie` DATE NOT NULL,
  `data_realizacji` DATE NULL,
  `id_pracownik` INT NOT NULL,
  `klient_id_klient` INT NOT NULL,
  `id_faktura` INT NOT NULL,
  PRIMARY KEY (`id_zamowienie`),
  INDEX `fk_zamowienie_pracownik1_idx` (`id_pracownik` ASC) VISIBLE,
  INDEX `fk_zamowienie_klient1_idx` (`klient_id_klient` ASC) VISIBLE,
  INDEX `fk_zamowienie_faktura1_idx` (`id_faktura` ASC) VISIBLE,
  CONSTRAINT `fk_zamowienie_pracownik1`
    FOREIGN KEY (`id_pracownik`)
    REFERENCES `zamowienia`.`pracownik` (`id_pracownik`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zamowienie_klient1`
    FOREIGN KEY (`klient_id_klient`)
    REFERENCES `zamowienia`.`klient` (`id_klient`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zamowienie_faktura1`
    FOREIGN KEY (`id_faktura`)
    REFERENCES `zamowienia`.`faktura` (`id_faktura`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `zamowienia`.`zamowienie_produkt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`zamowienie_produkt` (
  `id_zamowienie_produkt` INT NOT NULL AUTO_INCREMENT,
  `ilosc` INT NOT NULL,
  `id_zamowienie` INT NOT NULL,
  `id_produkt` INT NOT NULL,
  PRIMARY KEY (`id_zamowienie_produkt`),
  INDEX `fk_zamowienie_produkt_zamowienie1_idx` (`id_zamowienie` ASC) VISIBLE,
  INDEX `fk_zamowienie_produkt_produkt1_idx` (`id_produkt` ASC) VISIBLE,
  CONSTRAINT `fk_zamowienie_produkt_zamowienie1`
    FOREIGN KEY (`id_zamowienie`)
    REFERENCES `zamowienia`.`zamowienie` (`id_zamowienie`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_zamowienie_produkt_produkt1`
    FOREIGN KEY (`id_produkt`)
    REFERENCES `zamowienia`.`produkt` (`id_produkt`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

USE `zamowienia` ;

-- -----------------------------------------------------
-- Placeholder table for view `zamowienia`.`view1`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `zamowienia`.`view1` (`id` INT);

-- -----------------------------------------------------
-- View `zamowienia`.`view1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `zamowienia`.`view1`;
USE `zamowienia`;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
