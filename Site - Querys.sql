-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema db_site
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema db_site
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `db_site` DEFAULT CHARACTER SET utf8 ;
USE `db_site` ;

-- -----------------------------------------------------
-- Table `db_site`.`Usuario`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_site`.`Usuario` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `email` VARCHAR(1000) NOT NULL,
  `senha` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `db_site`.`Postagens`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `db_site`.`Postagens` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `titulo` VARCHAR(1000) NOT NULL,
  `texto` VARCHAR(1000) NOT NULL,
  `Usuario_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Postagens_Usuario_idx` (`Usuario_id` ASC) VISIBLE,
  CONSTRAINT `fk_Postagens_Usuario`
    FOREIGN KEY (`Usuario_id`)
    REFERENCES `db_site`.`Usuario` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
