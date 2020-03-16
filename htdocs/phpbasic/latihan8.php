<?php
$ar_buah = ['Pepaya', 'Mangga', 'Pisang', 'Jambu'];
$ar_buah[2] = 'Jeruk'; //ganti elemen array
unset($ar_buah[3]); //hapus elemen
$ar_buah[] = 'Naga';
$ar_buah[] = 'Anggur';
$ar_buah[] = 'Apel';
//cetak data array valuenya aja
foreach($ar_buah as $buah){
    echo '<br/>Buah '.$buah;
}
echo '<hr/>';
//cetak data array key dan valuenya aja
foreach($ar_buah as $id => $buah){
    echo '<br/>Buah dengan key '.$id.' adalah buah '.$buah;
}
?>