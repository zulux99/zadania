-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema biblioteka
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema biblioteka
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `biblioteka` DEFAULT CHARACTER SET utf8 ;
USE `biblioteka` ;

-- -----------------------------------------------------
-- Table `biblioteka`.`autor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`autor` (
  `id_autora` INT NOT NULL AUTO_INCREMENT,
  `imie_autora` VARCHAR(45) NOT NULL,
  `nazwisko_autora` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_autora`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`osoba`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`osoba` (
  `id_osoby` INT NOT NULL AUTO_INCREMENT,
  `imie_osoby` VARCHAR(45) NOT NULL,
  `nazwisko_osoby` VARCHAR(45) NOT NULL,
  `ulica_osoby` VARCHAR(45) NOT NULL,
  `miejscowosc_osoby` VARCHAR(45) NOT NULL,
  `numer_osoby` VARCHAR(10) NOT NULL,
  `telefon_osoby` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_osoby`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`karta`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`karta` (
  `id_karty` INT NOT NULL AUTO_INCREMENT,
  `data_zalozenia` DATE NOT NULL,
  `data_zamkniecia` DATE NULL,
  `id_osoby` INT NOT NULL,
  PRIMARY KEY (`id_karty`),
  INDEX `fk_karta_osoba_idx` (`id_osoby` ASC) VISIBLE,
  CONSTRAINT `fk_karta_osoba`
    FOREIGN KEY (`id_osoby`)
    REFERENCES `biblioteka`.`osoba` (`id_osoby`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`wydawca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`wydawca` (
  `id_wydawcy` INT NOT NULL AUTO_INCREMENT,
  `nazwa_wydawcy` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_wydawcy`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`dzial`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`dzial` (
  `id_dzialu` INT NOT NULL AUTO_INCREMENT,
  `nazwa` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_dzialu`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`ksiazka`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`ksiazka` (
  `idksiazka` INT NOT NULL AUTO_INCREMENT,
  `tytul` VARCHAR(45) NOT NULL,
  `ISBN` VARCHAR(45) NOT NULL,
  `rok_wydania` INT NOT NULL,
  `id_dzialu` INT NOT NULL,
  `autor_id_autora` INT NOT NULL,
  PRIMARY KEY (`idksiazka`),
  INDEX `fk_ksiazka_dzial1_idx` (`id_dzialu` ASC) VISIBLE,
  INDEX `fk_ksiazka_autor1_idx` (`autor_id_autora` ASC) VISIBLE,
  CONSTRAINT `fk_ksiazka_dzial1`
    FOREIGN KEY (`id_dzialu`)
    REFERENCES `biblioteka`.`dzial` (`id_dzialu`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ksiazka_autor1`
    FOREIGN KEY (`autor_id_autora`)
    REFERENCES `biblioteka`.`autor` (`id_autora`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`ksiazka_wydawca`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`ksiazka_wydawca` (
  `id_ksiazka_wydawca` INT NOT NULL AUTO_INCREMENT,
  `id_wydawcy` INT NOT NULL,
  `id_ksiazki` INT NOT NULL,
  PRIMARY KEY (`id_ksiazka_wydawca`),
  INDEX `fk_ksiazka_wydawca_wydawca1_idx` (`id_wydawcy` ASC) VISIBLE,
  INDEX `fk_ksiazka_wydawca_ksiazka1_idx` (`id_ksiazki` ASC) VISIBLE,
  CONSTRAINT `fk_ksiazka_wydawca_wydawca1`
    FOREIGN KEY (`id_wydawcy`)
    REFERENCES `biblioteka`.`wydawca` (`id_wydawcy`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ksiazka_wydawca_ksiazka1`
    FOREIGN KEY (`id_ksiazki`)
    REFERENCES `biblioteka`.`ksiazka` (`idksiazka`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`pracownik`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`pracownik` (
  `id_pracownika` INT NOT NULL AUTO_INCREMENT,
  `imie_pracownika` VARCHAR(45) NOT NULL,
  `nazwisko_pracownika` VARCHAR(45) NOT NULL,
  `data_zatrudnienia` DATE NOT NULL,
  `data_zwolnienia` DATE NULL,
  `pensja` VARCHAR(10) NOT NULL,
  `dodatek` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_pracownika`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `biblioteka`.`wypozyczenie`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `biblioteka`.`wypozyczenie` (
  `id_wypozyczenia` INT NOT NULL AUTO_INCREMENT,
  `data_wypozyczenia` DATE NULL,
  `data_oddania` DATE NULL,
  `id_karty` INT NOT NULL,
  `id_ksiazka_wydawca` INT NOT NULL,
  `id_pracownika_wypozyczajacego` INT NOT NULL,
  `id_pracownika_przyjmujacego` INT NULL,
  PRIMARY KEY (`id_wypozyczenia`),
  INDEX `fk_wypozyczenie_karta1_idx` (`id_karty` ASC) VISIBLE,
  INDEX `fk_wypozyczenie_ksiazka_wydawca1_idx` (`id_ksiazka_wydawca` ASC) VISIBLE,
  INDEX `fk_wypozyczenie_pracownik1_idx` (`id_pracownika_wypozyczajacego` ASC) VISIBLE,
  INDEX `fk_wypozyczenie_pracownik2_idx` (`id_pracownika_przyjmujacego` ASC) VISIBLE,
  CONSTRAINT `fk_wypozyczenie_karta1`
    FOREIGN KEY (`id_karty`)
    REFERENCES `biblioteka`.`karta` (`id_karty`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wypozyczenie_ksiazka_wydawca1`
    FOREIGN KEY (`id_ksiazka_wydawca`)
    REFERENCES `biblioteka`.`ksiazka_wydawca` (`id_ksiazka_wydawca`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wypozyczenie_pracownik1`
    FOREIGN KEY (`id_pracownika_wypozyczajacego`)
    REFERENCES `biblioteka`.`pracownik` (`id_pracownika`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_wypozyczenie_pracownik2`
    FOREIGN KEY (`id_pracownika_przyjmujacego`)
    REFERENCES `biblioteka`.`pracownik` (`id_pracownika`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
