-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema projekty
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema projekty
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `projekty` DEFAULT CHARACTER SET utf8 COLLATE utf8_polish_ci ;
USE `projekty` ;

-- -----------------------------------------------------
-- Table `projekty`.`rodzaj`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projekty`.`rodzaj` (
  `id_rodzaj` INT NOT NULL AUTO_INCREMENT,
  `nazwa_rodzaj` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_rodzaj`),
  UNIQUE INDEX `nazwa_rodzaj_UNIQUE` (`nazwa_rodzaj` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projekty`.`status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projekty`.`status` (
  `id_status` INT NOT NULL AUTO_INCREMENT,
  `nazwa_status` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id_status`),
  UNIQUE INDEX `nazwa_status_UNIQUE` (`nazwa_status` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `projekty`.`projekt`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `projekty`.`projekt` (
  `id_projekt` INT NOT NULL AUTO_INCREMENT,
  `nr_projekt` VARCHAR(15) NOT NULL,
  `temat_projekt` VARCHAR(150) NOT NULL,
  `data_rozpoczecia` DATE NOT NULL,
  `data_zakonczenia` DATE NULL,
  `kwota` DECIMAL(10,2) NOT NULL,
  `uwagi` VARCHAR(500) NULL,
  `id_rodzaj` INT NOT NULL,
  `id_status` INT NOT NULL,
  PRIMARY KEY (`id_projekt`),
  INDEX `fk_projekt_rodzaj_idx` (`id_rodzaj` ASC) VISIBLE,
  INDEX `fk_projekt_status1_idx` (`id_status` ASC) VISIBLE,
  CONSTRAINT `fk_projekt_rodzaj`
    FOREIGN KEY (`id_rodzaj`)
    REFERENCES `projekty`.`rodzaj` (`id_rodzaj`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projekt_status1`
    FOREIGN KEY (`id_status`)
    REFERENCES `projekty`.`status` (`id_status`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
