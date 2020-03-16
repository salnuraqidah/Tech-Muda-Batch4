<?php
$ar_nilai = [
    'Budi' => 90, 'Siti' => 70, 'Ani' => 59, 'Dewi' => 80, 'Bedu' => 27
];
$ar_judul = ['No', 'Nama', 'Nilai','Kelulusan','Grade','Predikat'];
?>
<h3 align="center">Daftar Nilai Siswa</h3>
<table border=1 align="center" width="60%" cellpadding="5">
    <thead>
        <tr bgcolor="beige">
        <?php
            foreach ($ar_judul as $judul) {
        ?>  
            <th><?= $judul ?></th>      
             <?php }; ?>
        </tr>
    </thead>
    <tbody>
    <?php
        $no = 1;
        foreach ($ar_nilai as $nama => $nilai) {
            $warna = ($no % 2 == 1) ? 'pink' : 'khaki';
            $ket = ($nilai <= 60) ? 'Gagal' : 'Lulus';

            if($nilai >= 85 && $nilai <= 100) $grade = 'A';
            else if($nilai >= 75 && $nilai < 85) $grade = 'B';
            else if($nilai >= 60 && $nilai < 75) $grade = 'C';
            else if($nilai >= 30 && $nilai < 60) $grade = 'D';
            else if($nilai >= 0 && $nilai < 30) $grade = 'E';
            else $grade = ' ';
//menentukan predikat
            switch($grade) {
                case 'A' : $predikat = 'Istimewa'; break;
                case 'B' : $predikat = 'Baik'; break;
                case 'C' : $predikat = 'Cukup'; break;
                case 'D' : $predikat = 'Kurang'; break;
                case 'E' : $predikat = 'Buruk'; break;
                default: $predikat = '';
}

    ?>        
        <tr bgcolor="<?= $warna ?>">
            <td><?= $no ?></td>
            <td><?= $nama ?></td>
            <td><?= $nilai ?></td>
            <td><?= $ket ?></td> 
            <td><?= $grade ?></td>
            <td><?= $predikat ?></td> 
              
        </tr>
        <?php $no++; }; ?>
    </tbody>
    <?php
    //fungsi aggregrat array
    $total = array_sum($ar_nilai);
    $jml = count($ar_nilai);
    $max = max($ar_nilai);
    $min = min($ar_nilai);
    $rata2 = $total/$jml;

    $ar_keterangan = [
        'Nilai Tertinggi' => $max,
        'Nilai Terendah' => $min,
        'Nilai Rata-Rata' => $rata2,
        'Jumlah Siswa' => $jml
    ];
    ?>
    <tfoot>
    <?php
        foreach ($ar_keterangan as $keterangan => $hasil) {
        ?>
            <tr>
            <th colspan="5"><?= $keterangan ?></th>
            <th><?= $hasil ?></th>
            </tr>
        <?php } ?>
    </tfoot>
</table>