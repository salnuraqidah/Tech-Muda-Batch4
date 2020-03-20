-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema dbKepegawaian
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema dbKepegawaian
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `dbKepegawaian` DEFAULT CHARACTER SET utf8 ;
USE `dbKepegawaian` ;

-- -----------------------------------------------------
-- Table `dbKepegawaian`.`divisi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`divisi` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

show tables;
select * from divisi;
desc divisi;
insert into divisi(nama) values
('Produk'),
('Pemasaran'),
('Personalia'),
('Keuangan'),
('Umum');
-- -----------------------------------------------------
-- Table `dbKepegawaian`.`jabatan`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`jabatan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nama_UNIQUE` (`nama` ASC))
ENGINE = InnoDB;

select * from jabatan order by id asc;
desc jabatan;
insert into jabatan(nama) values
('Asisten Manajer'),
('Staff'),
('HRD'),
('SPV')
('Asisten Manager');
update jabatan set nama = 'Asisten Manajer' where id = 5;

-- -----------------------------------------------------
-- Table `dbKepegawaian`.`pegawai`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`pegawai` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nip` VARCHAR(25) NOT NULL,
  `nama` VARCHAR(20) NOT NULL,
  `gender` ENUM('L', 'P') NOT NULL,
  `alamat` TEXT NOT NULL,
  `foto` VARCHAR(30) NULL,
  `divisi_id` INT NOT NULL,
  `jabatan_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `nip_UNIQUE` (`nip` ASC),
  INDEX `fk_pegawai_divisi_idx` (`divisi_id` ASC),
  INDEX `fk_pegawai_jabatan1_idx` (`jabatan_id` ASC),
  CONSTRAINT `fk_pegawai_divisi`
    FOREIGN KEY (`divisi_id`)
    REFERENCES `dbKepegawaian`.`divisi` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_pegawai_jabatan1`
    FOREIGN KEY (`jabatan_id`)
    REFERENCES `dbKepegawaian`.`jabatan` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc pegawai;
insert into pegawai(nip,nama,gender,alamat,divisi_id,jabatan_id) values
('2020001','Salamah Nur Aqidah','P','Jatimulya, Bekasi Timur',2,5),
('2020002','Anas Al-Amin','L','Sesetan, Denpasar Selatan',1,1),
('2020003','Umul Qirom','P','Mustika Jaya, Bekasi',4,1),
('2020004','Nur Habibah','P','Tegal Lega, Bandung',5,3),
('2020005','Husnul Rofiqoh','P','Summarecon, Bekasi',4,3),
('2020006','Rizka Winda','P','Surabaya',1,2),
('2020007','Feri Irawan','L','Tambun Selatan',1,5),
('2020008','Fatih Al-Faruq','L','Sukabumi',5,2),
('2020009','Syafiq Al-Faruq','L','Ciamis',3,2),
('2020010','Jaka Purnama','L','Bandung Timur',3,5),
('2020011','Endang Komarudin','L','Karawang',2,1),
('2020012','Yayat Mulyati','P','Bekasi',2,3);
select * from pegawai;
-- -----------------------------------------------------
-- Table `dbKepegawaian`.`gaji`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`gaji` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `gapok` DOUBLE NOT NULL,
  `tunjab` DOUBLE NOT NULL,
  `lain2` DOUBLE NULL,
  `pegawai_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_gaji_pegawai1_idx` (`pegawai_id` ASC),
  UNIQUE INDEX `pegawai_id_UNIQUE` (`pegawai_id` ASC),
  CONSTRAINT `fk_gaji_pegawai1`
    FOREIGN KEY (`pegawai_id`)
    REFERENCES `dbKepegawaian`.`pegawai` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc gaji;
insert into gaji(gapok,tunjab,pegawai_id) values
(10500000,1000000,1),
(12500000,1300000,2),
(13000000,1300000,3),
(6500000,500000,4),
(8000000,500000,5),
(6500000,300000,6),
(10500000,1000000,7),
(5500000,300000,8),
(6200000,300000,9),
(10200000,1000000,10),
(12500000,1300000,11),
(750000,500000,12);
select * from gaji;

update gaji set gapok = 7500000 where id = 12;

-- -----------------------------------------------------
-- Table `dbKepegawaian`.`materi`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`materi` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nama` VARCHAR(20) NOT NULL,
  `tgl_mulai` DATE NOT NULL,
  `tgl_akhir` DATE NOT NULL,
  `tempat` TEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

desc materi;
insert into materi(nama,tgl_mulai,tgl_akhir,tempat) values
('Orientasi','2020-03-21','2020-04-04','Gedung A Lt.1'),
('Onboarding','2020-04-06','2020-04-10','Gedung A Lt.2'),
('Kemampuan Teknis','2020-04-13','2020-04-15','Gedung B Lt.1'),
('Soft Skill','2020-04-18','2020-04-19','Gedung Sate Bandung'),
('Produk dan Jasa','2020-04-24','2020-04-25','Gedung A Lt.1');
select * from materi;



-- -----------------------------------------------------
-- Table `dbKepegawaian`.`diklat`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`diklat` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `materi_id` INT NOT NULL,
  `pegawai_id` INT NOT NULL,
  `keterangan` TEXT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_materi_has_pegawai_pegawai1_idx` (`pegawai_id` ASC),
  INDEX `fk_materi_has_pegawai_materi1_idx` (`materi_id` ASC),
  CONSTRAINT `fk_materi_has_pegawai_materi1`
    FOREIGN KEY (`materi_id`)
    REFERENCES `dbKepegawaian`.`materi` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_materi_has_pegawai_pegawai1`
    FOREIGN KEY (`pegawai_id`)
    REFERENCES `dbKepegawaian`.`pegawai` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

desc diklat;
insert into diklat(materi_id,pegawai_id,keterangan) values
(6,6,'Hadir'),
(6,8,'Izin'),
(6,9,'Hadir'),
(7,4,'Hadir'),
(7,5,'Hadir'),
(7,12,'Izin'),
(8,1,'Hadir'),
(8,7,'Hadir'),
(8,10,'Hadir'),
(9,6,'Hadir'),
(9,8,'Hadir'),
(10,6,'Hadir');
select * from diklat;

-- -----------------------------------------------------
-- Table `dbKepegawaian`.`user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `dbKepegawaian`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(20) NOT NULL,
  `password` VARCHAR(20) NOT NULL,
  `role` VARCHAR(45) NOT NULL,
  `pegawai_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `password_UNIQUE` (`password` ASC),
  INDEX `fk_user_pegawai1_idx` (`pegawai_id` ASC),
  CONSTRAINT `fk_user_pegawai1`
    FOREIGN KEY (`pegawai_id`)
    REFERENCES `dbKepegawaian`.`pegawai` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;
desc user;
insert into `user`(username,`password`,role,pegawai_id) values
('salnuraqidah','sal123','koordinasi',1),
('anasal','anas123','koordinasi',2),
('umul','umul123','koordinasi',3),
('nhabibah','nur123','koordinasi',4),
('husnulr','husnul123','koordinasi',5),
('rizkawinda','rizka123','koordinasi',6),
('feri','feri123','koordinasi',7),
('fatihal','fatih123','koordinasi',8),
('syafiqal','syafiq123','koordinasi',9),
('jakapur','jaka123','koordinasi',10),
('endang','endang123','koordinasi',11),
('ymulyati','yayat123','koordinasi',12);

select * from user;

select peg.nip, peg.nama, peg.gender, peg.alamat,
d.nama as divisi, j.nama as jabatan
from pegawai peg
inner join divisi d on d.id = peg.divisi_id
inner join jabatan j on j.id = peg.jabatan_id;

select peg.nip, peg.nama, d.nama as divisi, j.nama as jabatan,
g.gapok as gaji_pokok, g.tunjab as tunjangan_jabatan
from gaji g
inner join pegawai peg on peg.id = g.pegawai_id
inner join divisi d on d.id = peg.divisi_id
inner join jabatan j on j.id = peg.jabatan_id
order by gapok desc;

select peg.nama, d.nama as divisi, j.nama as jabatan,
m.nama as materi, m.tempat, m.tgl_mulai, m.tgl_akhir,
dik.keterangan
from diklat dik
inner join pegawai peg on peg.id = dik.pegawai_id
inner join divisi d on d.id = peg.divisi_id
inner join jabatan j on j.id = peg.jabatan_id
inner join materi m on m.id = dik.materi_id;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
