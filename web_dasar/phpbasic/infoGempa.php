<?php
//sertakan file classnya
require_once 'gempa.php';

$g1 = new Gempa('Yogyakarta',3);
$g2 = new Gempa('Tokyo',6.8);
$g3 = new Gempa('Sukabumi',2.5);
$g4 = new Gempa('Jawa Tengah',1.5);
$g5 = new Gempa('Hawai',8.2);
$g6 = new Gempa('China',4.4);
$g7 = new Gempa('Thailand',9.3);
$g8 = new Gempa('Laos',3.4);
$g9 = new Gempa('Kamboja',6.3);
$g10 = new Gempa('Lampung',4.3);


$g1->dampak(); $g2->dampak(); $g3->dampak(); $g4->dampak();
$g5->dampak(); $g6->dampak(); $g7->dampak(); $g8->dampak(); 
$g9->dampak(); $g10->dampak(); 

$g1->cetak(); $g2->cetak(); $g3->cetak(); $g4->cetak();
$g5->cetak(); $g6->cetak(); $g7->cetak(); $g8->cetak();
$g9->cetak(); $g10->cetak();