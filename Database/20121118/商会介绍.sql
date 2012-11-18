
CREATE  TABLE `yulinsh`.`shjs` (   `idshjs` INT NOT NULL AUTO_INCREMENT ,   `fagaoren` VARCHAR(45) NULL ,   `neirong` VARCHAR(500) NULL ,   `updatetime` TIMESTAMP NULL ,   PRIMARY KEY (`idshjs`) ) COMMENT = '”‹¡÷…Ãª·ΩÈ…‹';

ALTER TABLE `yulinsh`.`shjs` ADD COLUMN `type` VARCHAR(45) NULL DEFAULT NULL  AFTER `updatetime` ;