<?php
//cetak angka 1 - 20 dengan while
$x = 0;
while ($x < 20) {
    $x++;
    if($x == 9 || $x == 11 || $x == 13) continue;
    echo '<br/>Bilangan '.$x;
    if($x == 17) break;
}
echo '<hr/>';
//cetak angka 100 - 80 dengan while
$y = 100;
while ($y >= 80) {
    echo '<br/>Angka '.$y;
    $y--;
}



?>
