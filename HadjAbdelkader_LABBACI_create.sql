-- Version: 1.0
-- Project: Name of the project
-- Author: PC ABDOU

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

CREATE SCHEMA IF NOT EXISTS `HALO_DB` DEFAULT CHARACTER SET utf8 ;

-- if we are on phpmyadmin

-- or CREATE DATABASE IF NOT EXISTS `HALO_DB`; 

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_spectacle` (
  `specID` INT(11) NOT NULL AUTO_INCREMENT,
  `titre` VARCHAR(45) NOT NULL,
  `catgPublic` VARCHAR(45) NOT NULL,
  `duree` DOUBLE UNSIGNED NOT NULL,
  `placementCategorie` BIT(1) NOT NULL,
  `FK_idSalle2` INT(11) NOT NULL,
  `FK_idGenre2` INT(11) NOT NULL,
  PRIMARY KEY (`specID`),
  INDEX `FK_idSalle_idx` (`FK_idSalle2` ASC) VISIBLE,
  INDEX `FK_idGenre_idx` (`FK_idGenre2` ASC) VISIBLE,
  CONSTRAINT `FK_idSalle2`
    FOREIGN KEY (`FK_idSalle2`)
    REFERENCES `HALO_DB`.`HALO_Salle` (`idSalle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `FK_idGenre2`
    FOREIGN KEY (`FK_idGenre2`)
    REFERENCES `HALO_DB`.`HALO_Genre` (`idGenre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Genre` (
  `idGenre` INT(11) NOT NULL AUTO_INCREMENT,
  `typeSpectacle` VARCHAR(45) NOT NULL,
  `Prix` DOUBLE NOT NULL,
  PRIMARY KEY (`idGenre`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Salle` (
  `idSalle` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(40) NOT NULL,
  `capacite` INT(3) NOT NULL,
  `pourcentageA` DOUBLE NOT NULL,
  `pourcentageB` DOUBLE NOT NULL,
  `poucentageC` DOUBLE NOT NULL,
  `prix` DOUBLE NOT NULL,
  `FK_idTheatre` INT(11) NOT NULL,
  PRIMARY KEY (`idSalle`),
  INDEX `fk_idTheatre_idx` (`FK_idTheatre` ASC) VISIBLE,
  CONSTRAINT `fk_idTheatre`
    FOREIGN KEY (`FK_idTheatre`)
    REFERENCES `HALO_DB`.`HALO_Theatre` (`idTheatre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_CategorieSpectacle` (
  `idCategoriePublic` INT(11) NOT NULL AUTO_INCREMENT,
  `categoriePublic` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCategoriePublic`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Place` (
  `idPlace` INT(11) NOT NULL AUTO_INCREMENT,
  `Num` INT(11) NOT NULL,
  `fk_idSalle1` INT(11) NOT NULL,
  `fk_idCategoriePlace1` INT(11) NOT NULL,
  PRIMARY KEY (`idPlace`),
  INDEX `fk_idSalle_idx` (`fk_idSalle1` ASC) VISIBLE,
  INDEX `fk_idCategoriePlace_idx` (`fk_idCategoriePlace1` ASC) VISIBLE,
  CONSTRAINT `fk_idSalle1`
    FOREIGN KEY (`fk_idSalle1`)
    REFERENCES `HALO_DB`.`HALO_Salle` (`idSalle`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idCategoriePlace1`
    FOREIGN KEY (`fk_idCategoriePlace1`)
    REFERENCES `HALO_DB`.`HALO_CategoriePlace` (`idCategoriePlace`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_CategoriePlace` (
  `idCategoriePlace` INT(11) NOT NULL AUTO_INCREMENT,
  `Type` VARCHAR(1) NOT NULL,
  PRIMARY KEY (`idCategoriePlace`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Theatre` (
  `idTheatre` INT(11) NOT NULL AUTO_INCREMENT,
  `nomTheatre` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idTheatre`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Spectateur` (
  `idSpectateur` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prenom` VARCHAR(45) NOT NULL,
  `age` INT(2) NOT NULL,
  PRIMARY KEY (`idSpectateur`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Reservation` (
  `idReservation` INT(11) NOT NULL AUTO_INCREMENT,
  `prixTotal` DOUBLE,
  PRIMARY KEY (`idReservation`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Representation` (
  `idRepresentation` INT(11) NOT NULL AUTO_INCREMENT,
  `heureDebut` VARCHAR(45) NOT NULL,
  `fk_idCategoriePublic2` INT(11) NOT NULL,
  `fk_idCategoriePlace2` INT(11) NOT NULL,
  `fk_SpecId2` INT(11) NOT NULL,
  `fk_idReservation` INT(11) NOT NULL,
  PRIMARY KEY (`idRepresentation`),
  INDEX `fk_idSpecId_idx` (`fk_SpecId2` ASC) VISIBLE,
  INDEX `fk_idCategorieplace_idx` (`fk_idCategoriePlace2` ASC) VISIBLE,
  INDEX `fk_idCategoriePublic_idx` (`fk_idCategoriePublic2` ASC) VISIBLE,
  INDEX `fk_idReservation_idx` (`fk_idReservation` ASC) VISIBLE,
  CONSTRAINT `fk_idSpecId2`
    FOREIGN KEY (`fk_SpecId2`)
    REFERENCES `HALO_DB`.`HALO_spectacle` (`specID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idCategorieplace2`
    FOREIGN KEY (`fk_idCategoriePlace2`)
    REFERENCES `HALO_DB`.`HALO_CategoriePlace` (`idCategoriePlace`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idCategoriePublic2`
    FOREIGN KEY (`fk_idCategoriePublic2`)
    REFERENCES `HALO_DB`.`HALO_CategorieSpectacle` (`idCategoriePublic`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idReservation`
    FOREIGN KEY (`fk_idReservation`)
    REFERENCES `HALO_DB`.`HALO_Reservation` (`idReservation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Periode` (
  `idPeriode` INT(11) NOT NULL AUTO_INCREMENT,
  `libelePeriode` VARCHAR(45) NOT NULL,
  `poucentageAugmentation` DOUBLE NOT NULL,
  `pourcentageReduction` DOUBLE NOT NULL,
  PRIMARY KEY (`idPeriode`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Acteurs` (
  `idActor` INT(11) NOT NULL AUTO_INCREMENT,
  `nom` VARCHAR(45) NOT NULL,
  `prénom` VARCHAR(45) NULL DEFAULT NULL,
  `popularité` VARCHAR(45) NULL DEFAULT NULL,
  `pourcentageAugmentation` DOUBLE NOT NULL,
  PRIMARY KEY (`idActor`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_animation` (
  `fk_specID3` INT(11) NOT NULL,
  `fk_idActor` INT(11) NOT NULL,
  PRIMARY KEY (`fk_specID3`, `fk_idActor`),
  INDEX `fk_HALO_spectacle_has_HALO_Acteurs_HALO_Acteurs1_idx` (`fk_idActor` ASC) VISIBLE,
  INDEX `fk_HALO_spectacle_has_HALO_Acteurs_HALO_spectacle1_idx` (`fk_specID3` ASC) VISIBLE,
  CONSTRAINT `fk_idSpec3`
    FOREIGN KEY (`fk_specID3`)
    REFERENCES `HALO_DB`.`HALO_spectacle` (`specID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idActor`
    FOREIGN KEY (`fk_idActor`)
    REFERENCES `HALO_DB`.`HALO_Acteurs` (`idActor`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Representation_Periode` (
  `fk_idRepresentation1` INT(11) NOT NULL,
  `fk_idPeriode` INT(11) NOT NULL,
  PRIMARY KEY (`fk_idRepresentation1`, `fk_idPeriode`),
  INDEX `fk_HALO_Representation_has_HALO_Periode_HALO_Periode1_idx` (`fk_idPeriode` ASC) VISIBLE,
  INDEX `fk_HALO_Representation_has_HALO_Periode_HALO_Representation_idx` (`fk_idRepresentation1` ASC) VISIBLE,
  CONSTRAINT `fk_idRepresentation1`
    FOREIGN KEY (`fk_idRepresentation1`)
    REFERENCES `HALO_DB`.`HALO_Representation` (`idRepresentation`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idPeriode`
    FOREIGN KEY (`fk_idPeriode`)
    REFERENCES `HALO_DB`.`HALO_Periode` (`idPeriode`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_Genre_Spectateur` (
  `fk_idGenre1` INT(11) NOT NULL,
  `fk_idSpectateur` INT(11) NOT NULL,
  PRIMARY KEY (`fk_idGenre1`, `fk_idSpectateur`),
  INDEX `fk_HALO_Genre_has_HALO_Spectateur_HALO_Spectateur1_idx` (`fk_idSpectateur` ASC) VISIBLE,
  INDEX `fk_HALO_Genre_has_HALO_Spectateur_HALO_Genre1_idx` (`fk_idGenre1` ASC) VISIBLE,
  CONSTRAINT `fk_idGenre1`
    FOREIGN KEY (`fk_idGenre1`)
    REFERENCES `HALO_DB`.`HALO_Genre` (`idGenre`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_idSpectateur`
    FOREIGN KEY (`fk_idSpectateur`)
    REFERENCES `HALO_DB`.`HALO_Spectateur` (`idSpectateur`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `HALO_DB`.`HALO_CategorieSpectacle_spectacle` (
  `fk_idCategoriePublic1` INT(11) NOT NULL,
  `fk_specID1` INT(11) NOT NULL,
  PRIMARY KEY (`fk_idCategoriePublic1`, `fk_specID1`),
  INDEX `fk_HALO_CategorieSpectacle_has_HALO_spectacle_HALO_spectacl_idx` (`fk_specID1` ASC) VISIBLE,
  INDEX `fk_HALO_CategorieSpectacle_has_HALO_spectacle_HALO_Categori_idx` (`fk_idCategoriePublic1` ASC) VISIBLE,
  CONSTRAINT `fk_CategoriePublic1`
    FOREIGN KEY (`fk_idCategoriePublic1`)
    REFERENCES `HALO_DB`.`HALO_CategorieSpectacle` (`idCategoriePublic`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_specId1`
    FOREIGN KEY (`fk_specID1`)
    REFERENCES `HALO_DB`.`HALO_spectacle` (`specID`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
