-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema RedSocial
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `RedSocial` ;

-- -----------------------------------------------------
-- Schema RedSocial
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `RedSocial` DEFAULT CHARACTER SET utf8 ;
USE `RedSocial` ;

-- -----------------------------------------------------
-- Table `RedSocial`.`Grupo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`Grupo` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`Grupo` (
  `idGrupo` INT NOT NULL,
  `nombre` VARCHAR(65) NULL,
  `descripcion` VARCHAR(45) NULL,
  `tipo` VARCHAR(45) NULL,
  `noticia` VARCHAR(200) NULL,
  PRIMARY KEY (`idGrupo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedSocial`.`RedSocial`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`RedSocial` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`RedSocial` (
  `idRedSocial` INT NOT NULL,
  `nombre` VARCHAR(45) NULL,
  PRIMARY KEY (`idRedSocial`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedSocial`.`usuario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`usuario` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`usuario` (
  `cedula` INT NOT NULL,
  `nombre` VARCHAR(100) NULL,
  `nick` VARCHAR(45) NULL,
  `edad` INT NULL,
  `clave` VARCHAR(45) NULL,
  `correo` VARCHAR(45) NULL,
  `dueñoGrupo` INT NULL,
  `RedSocial_idRedSocial` INT NOT NULL,
  PRIMARY KEY (`cedula`),
  INDEX `fk_usuario_Grupo1_idx` (`dueñoGrupo` ASC),
  INDEX `fk_usuario_RedSocial1_idx` (`RedSocial_idRedSocial` ASC),
  CONSTRAINT `fk_usuario_Grupo1`
    FOREIGN KEY (`dueñoGrupo`)
    REFERENCES `RedSocial`.`Grupo` (`idGrupo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_RedSocial1`
    FOREIGN KEY (`RedSocial_idRedSocial`)
    REFERENCES `RedSocial`.`RedSocial` (`idRedSocial`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedSocial`.`comentario`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`comentario` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`comentario` (
  `idcomentario` INT NOT NULL,
  `texto` VARCHAR(200) NULL,
  `fecha` DATE NULL,
  `usuario_cedula` INT NOT NULL,
  PRIMARY KEY (`idcomentario`, `usuario_cedula`),
  INDEX `fk_comentario_usuario1_idx` (`usuario_cedula` ASC),
  CONSTRAINT `fk_comentario_usuario1`
    FOREIGN KEY (`usuario_cedula`)
    REFERENCES `RedSocial`.`usuario` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedSocial`.`foto`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`foto` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`foto` (
  `idfoto` INT NOT NULL,
  `nombreUrl` VARCHAR(45) NULL,
  `descripcion` VARCHAR(45) NULL,
  PRIMARY KEY (`idfoto`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedSocial`.`etiqueta`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`etiqueta` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`etiqueta` (
  `idetiqueta` INT NOT NULL,
  `x` INT NULL,
  `y` INT NULL,
  `usuario_cedula` INT NOT NULL,
  `foto_idfoto` INT NOT NULL,
  PRIMARY KEY (`idetiqueta`),
  INDEX `fk_etiqueta_usuario_idx` (`usuario_cedula` ASC),
  INDEX `fk_etiqueta_foto1_idx` (`foto_idfoto` ASC),
  CONSTRAINT `fk_etiqueta_usuario`
    FOREIGN KEY (`usuario_cedula`)
    REFERENCES `RedSocial`.`usuario` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_etiqueta_foto1`
    FOREIGN KEY (`foto_idfoto`)
    REFERENCES `RedSocial`.`foto` (`idfoto`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `RedSocial`.`usuario_has_Grupo`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `RedSocial`.`usuario_has_Grupo` ;

CREATE TABLE IF NOT EXISTS `RedSocial`.`usuario_has_Grupo` (
  `usuario_cedula` INT NOT NULL,
  `Grupo_idGrupo` INT NOT NULL,
  PRIMARY KEY (`usuario_cedula`, `Grupo_idGrupo`),
  INDEX `fk_usuario_has_Grupo_Grupo1_idx` (`Grupo_idGrupo` ASC),
  INDEX `fk_usuario_has_Grupo_usuario1_idx` (`usuario_cedula` ASC),
  CONSTRAINT `fk_usuario_has_Grupo_usuario1`
    FOREIGN KEY (`usuario_cedula`)
    REFERENCES `RedSocial`.`usuario` (`cedula`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_usuario_has_Grupo_Grupo1`
    FOREIGN KEY (`Grupo_idGrupo`)
    REFERENCES `RedSocial`.`Grupo` (`idGrupo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


