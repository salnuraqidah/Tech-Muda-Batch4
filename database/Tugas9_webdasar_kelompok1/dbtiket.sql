-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbtiket
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbtiket
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbtiket` DEFAULT CHARACTER SET latin1 ;
USE `dbtiket` ;

-- -----------------------------------------------------
-- Table `dbtiket`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbtiket`.`customer` (
  `idcustomer` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `phoneNumber` INT NOT NULL,
  `email` VARCHAR(20) NOT NULL,
  `address` TEXT NULL,
  PRIMARY KEY (`idcustomer`),
  UNIQUE INDEX `idcustomer_UNIQUE` (`idcustomer` ASC))
ENGINE = InnoDB;

INSERT INTO customer(name,phoneNumber,email,address) VALUES
('Budi','08134536782','budi65@gmail.com','Jakarta Pusat'),
('Ani','08574365782','ani76@gmail.com','Palembang'),
('Caca','0832876954','caca12@gmail.com','Sukabumi'),
('Dodi','08657854652','dodi37@gmail.com','Padang'),
('Siti','08787665985','siti56@gmail.com','Bali');
SELECT * FROM customer;
-- -----------------------------------------------------
-- Table `dbtiket`.`order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbtiket`.`order` (
  `idorder` INT NOT NULL AUTO_INCREMENT,
  `customer_idcustomer` INT NOT NULL,
  `dateOrder` DATETIME NOT NULL,
  `departure` VARCHAR(15) NOT NULL,
  `dateDeparture` DATETIME NOT NULL,
  `arrival` VARCHAR(45) NOT NULL,
  `dateArrival` DATETIME NOT NULL,
  `amountPassenger` INT NOT NULL,
  PRIMARY KEY (`idorder`),
  UNIQUE INDEX `idorder_UNIQUE` (`idorder` ASC),
  INDEX `fk_order_customer` (`customer_idcustomer` ASC),
  CONSTRAINT `fk_order_customer`
    FOREIGN KEY (`customer_idcustomer`)
    REFERENCES `dbtiket`.`customer` (`idcustomer`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbtiket`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbtiket`.`payment` (
  `idpayment` INT NOT NULL AUTO_INCREMENT,
  `total` DOUBLE NOT NULL,
  `method` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idpayment`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbtiket`.`virtualAccount`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbtiket`.`virtualAccount` (
  `idvirtualAccount` INT NOT NULL AUTO_INCREMENT,
  `number` INT NOT NULL,
  `payment_idpayment` INT NOT NULL,
  PRIMARY KEY (`idvirtualAccount`),
  UNIQUE INDEX `idvirtualAccaount_UNIQUE` (`idvirtualAccount` ASC),
  UNIQUE INDEX `nomor_UNIQUE` (`number` ASC),
  INDEX `fk_virtualAccaount_payment1` (`payment_idpayment` ASC),
  CONSTRAINT `fk_virtualAccaount_payment1`
    FOREIGN KEY (`payment_idpayment`)
    REFERENCES `dbtiket`.`payment` (`idpayment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbtiket`.`transfer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbtiket`.`transfer` (
  `idtransfer` INT NOT NULL AUTO_INCREMENT,
  `noRekening` INT NOT NULL,
  `payment_idpayment` INT NOT NULL,
  PRIMARY KEY (`idtransfer`),
  INDEX `fk_transfer_payment1` (`payment_idpayment` ASC),
  CONSTRAINT `fk_transfer_payment1`
    FOREIGN KEY (`payment_idpayment`)
    REFERENCES `dbtiket`.`payment` (`idpayment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbtiket`.`checkOut`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbtiket`.`checkOut` (
  `idCheckOut` INT NOT NULL AUTO_INCREMENT,
  `payment_idpayment` INT NOT NULL,
  `order_idorder` INT NOT NULL,
  `codeBooking` VARCHAR(10) NOT NULL,
  INDEX `fk_payment_has_order_payment1` (`payment_idpayment` ASC),
  INDEX `fk_payment_has_order_order1` (`order_idorder` ASC),
  PRIMARY KEY (`idCheckOut`),
  UNIQUE INDEX `idCheckOut_UNIQUE` (`idCheckOut` ASC),
  CONSTRAINT `fk_payment_has_order_payment1`
    FOREIGN KEY (`payment_idpayment`)
    REFERENCES `dbtiket`.`payment` (`idpayment`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_payment_has_order_order1`
    FOREIGN KEY (`order_idorder`)
    REFERENCES `dbtiket`.`order` (`idorder`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
