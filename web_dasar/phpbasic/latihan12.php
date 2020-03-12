<?php

function salam(){
    echo 'Assalamu\'alaikum...';
}
salam();

function say($arg1){
    echo '<br/>Hello Apa Kabar '.$arg1. ' ?';
}
$siswa = 'Salamah';
say($siswa); //panggil dengan variable
say('Nur'); //panggil langsung

function tanya($arg1='Salma'){
    echo '<br/>Sudah sarapan '.$arg1. ' ?';
}
tanya();
tanya('Fatih');
