CREATE DATABASE `clothe`CHARACTER SET utf8 COLLATE utf8_general_ci; 

CREATE TABLE IF NOT EXISTS `repository` (
   `repositoryID` VARCHAR(20) NOT NULL COMMENT'仓库编码',
   `repositoryCapacity` INT(2) NOT NULL COMMENT'仓库容量',
   PRIMARY KEY(`repositoryID`)
)ENGINE=INNODB CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `clothes` (
   `clothesID` VARCHAR(20) NOT NULL COMMENT'服装编码',
   `clothesSize` VARCHAR(5) NOT NULL COMMENT'服装尺码',
   `clothesPrice` INT(2) NOT NULL COMMENT'销售价格',
   `clothesType` VARCHAR(10) NOT NULL COMMENT'服装类型',
   PRIMARY KEY(`clothesID`)
)ENGINE=INNODB CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `vendor` (
   `vendorID` VARCHAR(20) NOT NULL COMMENT'供应商编码',
   `vendorName` INT(200) NOT NULL COMMENT'供应商名称',
   PRIMARY KEY(`vendorID`)
)ENGINE=INNODB CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `vendorInformation` (
    `clothesQuality` VARCHAR(5) NOT NULL COMMENT'服装质量等级',
    `clothesID` VARCHAR(20) NOT NULL COMMENT'服装编码',
    `vendorID` VARCHAR(20) NOT NULL COMMENT'供应商编码',
    PRIMARY KEY(`vendorID`,`clothesID`)
)ENGINE=INNODB CHARSET=utf8;