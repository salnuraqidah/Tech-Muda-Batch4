<?php
//sertakan file classnya
require_once 'Latihan14.php';
//buat object
$n1 = new Bank('Salamah','001',3000000);
$n2 = new Bank('Nur','002',4000000);
$n3 = new Bank('Aqidah','003',6000000);
//panggil member class
//echo $n1->nama; //class public bisa cetak
//echo $n1->norek; //class protected ga bisa di cetak
//echo $n1->saldo; //class private ga bisa cetak

$n1->setor(2000000);
$n2->setor(500000);
$n3->ambil(200000);
$n1->ambil(700000);
echo '<h3 align="center">'.Bank::BANK.'</h3>';
$n1->cetak(); $n2->cetak(); $n3->cetak();
echo 'Jumlah Nasabah : '.Bank::$jml.' Orang';

