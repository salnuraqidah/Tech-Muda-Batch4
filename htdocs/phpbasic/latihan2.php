<?php

define('PHI',3.14);
$jari2 = 15;
//keliling dan luas lingkaran
$keliling = 2*PHI*$jari2;
$luas = PHI*$jari2*$jari2;
//print
echo 'Keliling Lingkaran r = 15cm : ' .$keliling. ' cm';
echo '<br/>Luas Lingkaran r = 15cm: ' .$luas. ' cm^2';
?>
<hr/>
Keliling Lingkaran r = 15cm : <?= $keliling ?> cm;
<br/>Luas Lingkaran r = 15cm: <?= $luas ?> cm^2;
