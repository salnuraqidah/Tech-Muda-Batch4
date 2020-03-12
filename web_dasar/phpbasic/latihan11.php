<?php
$str = 'Belajar PHP di Nurul Fikri memang asyik!';
$str = strtoupper($str); //kapital semua kalimat
echo $str; 
$str = strtolower($str); //huruf kecil semua
echo '<hr/>'.$str;
$str = ucwords($str); //setiap kata diawali kapital
echo '<hr/>'.$str.'<hr/>';

$ar_buah = ['semangka','durian','sangka','kelapa','melon','timun suri'];
sort($ar_buah); //mengurutkan data secara ascending A-Z
foreach($ar_buah as $buah){
    echo ucfirst($buah).', '; //setiap kalimat diawali dengan huruf kapital
}

echo'<hr/>';
arsort($ar_buah); //mengurutkan data secara descending A-Z
foreach($ar_buah as $buah){
    echo ucfirst($buah).', '; //setiap kalimat diawali dengan huruf kapital
}