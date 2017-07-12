-- MySQL Script generated by MySQL Workbench
-- Mon Jun 26 22:52:52 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`table1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`table1` ;

CREATE TABLE IF NOT EXISTS `mydb`.`table1` (
  `id` INT NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`developers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`developers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`developers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`skills`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`skills` ;

CREATE TABLE IF NOT EXISTS `mydb`.`skills` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`projects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`projects` ;

CREATE TABLE IF NOT EXISTS `mydb`.`projects` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`companies`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`companies` ;

CREATE TABLE IF NOT EXISTS `mydb`.`companies` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`customers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`skills_has_developers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`skills_has_developers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`skills_has_developers` (
  `skills_id` INT NOT NULL,
  `developers_id` INT NOT NULL,
  PRIMARY KEY (`skills_id`, `developers_id`),
  INDEX `fk_skills_has_developers_developers1_idx` (`developers_id` ASC),
  INDEX `fk_skills_has_developers_skills_idx` (`skills_id` ASC),
  CONSTRAINT `fk_skills_has_developers_skills`
    FOREIGN KEY (`skills_id`)
    REFERENCES `mydb`.`skills` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_skills_has_developers_developers1`
    FOREIGN KEY (`developers_id`)
    REFERENCES `mydb`.`developers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`projects_has_developers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`projects_has_developers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`projects_has_developers` (
  `projects_id` INT NOT NULL,
  `developers_id` INT NOT NULL,
  PRIMARY KEY (`projects_id`, `developers_id`),
  INDEX `fk_projects_has_developers_developers1_idx` (`developers_id` ASC),
  INDEX `fk_projects_has_developers_projects1_idx` (`projects_id` ASC),
  CONSTRAINT `fk_projects_has_developers_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_projects_has_developers_developers1`
    FOREIGN KEY (`developers_id`)
    REFERENCES `mydb`.`developers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers_has_projects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`customers_has_projects` ;

CREATE TABLE IF NOT EXISTS `mydb`.`customers_has_projects` (
  `customers_id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  PRIMARY KEY (`customers_id`, `projects_id`),
  INDEX `fk_customers_has_projects_projects1_idx` (`projects_id` ASC),
  INDEX `fk_customers_has_projects_customers1_idx` (`customers_id` ASC),
  CONSTRAINT `fk_customers_has_projects_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `mydb`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_customers_has_projects_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`companies_has_projects`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`companies_has_projects` ;

CREATE TABLE IF NOT EXISTS `mydb`.`companies_has_projects` (
  `companies_id` INT NOT NULL,
  `projects_id` INT NOT NULL,
  PRIMARY KEY (`companies_id`, `projects_id`),
  INDEX `fk_companies_has_projects_projects1_idx` (`projects_id` ASC),
  INDEX `fk_companies_has_projects_companies1_idx` (`companies_id` ASC),
  CONSTRAINT `fk_companies_has_projects_companies1`
    FOREIGN KEY (`companies_id`)
    REFERENCES `mydb`.`companies` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_companies_has_projects_projects1`
    FOREIGN KEY (`projects_id`)
    REFERENCES `mydb`.`projects` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`table2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`table2` ;

CREATE TABLE IF NOT EXISTS `mydb`.`table2` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `table2col` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`, `table2col`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;