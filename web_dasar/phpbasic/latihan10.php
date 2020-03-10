<?php
$ar_p1 = ['nama' => 'Budi','gender' => 'L','agama' => 'Kristen','divisi' => 'HRD', 'gaji' => 8000000];
$ar_p2 = ['nama' => 'Siti','gender' => 'P','agama' => 'Islam','divisi' => 'HRD', 'gaji' => 7000000];
$ar_p3 = ['nama' => 'Ani','gender' => 'P','agama' => 'Hindu','divisi' => 'Keuangan', 'gaji' => 10000000];
$ar_p4 = ['nama' => 'Dewi','gender' => 'P','agama' => 'Islam','divisi' => 'Marketing', 'gaji' => 6000000];
$ar_p5 = ['nama' => 'Bedu','gender' => 'L','agama' => 'Kristen','divisi' => 'Marketing', 'gaji' => 9000000];
$ar_p6 = ['nama' => 'Salamah','gender' => 'P','agama' => 'Islam','divisi' => 'IT Security', 'gaji' => 12000000];
$ar_p7 = ['nama' => 'Nur','gender' => 'P','agama' => 'Islam','divisi' => 'Front-End', 'gaji' => 8000000];
$ar_p8 = ['nama' => 'Aqidah','gender' => 'L','agama' => 'Islam','divisi' => 'Back-End', 'gaji' => 9000000];
$ar_p9 = ['nama' => 'Anas','gender' => 'L','agama' => 'Islam','divisi' => 'Data Science', 'gaji' => 11000000];
$ar_p10 = ['nama' => 'Memei','gender' => 'P','agama' => 'Kristen','divisi' => 'Data Analyst', 'gaji' => 8000000];


$ar_judul = ['No', 'Nama','Gender','Agama','Divisi','Gaji','Zakat'];
//array associative
$ar_pegawai = [$ar_p1,$ar_p2,$ar_p3,$ar_p4,$ar_p5,$ar_p6,$ar_p7,$ar_p8,$ar_p9,$ar_p10]
?>
<h3 align="center">Daftar Pegawai</h3>
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
        foreach ($ar_pegawai as $peg) {
            $warna = ($no % 2 == 1) ? 'pink' : 'khaki';
            $title = ($peg['gender'] == "L") ? 'Mr. ' : 'Mrs. ';
            
            if($peg['agama'] == 'Islam' && $peg['gaji'] > 7000000) 
                $zakat = 0.025 * $peg['gaji'];
            else $zakat = 0;

    ?>        
        <tr bgcolor="<?= $warna ?>">
            <td><?= $no ?></td>
            <td><?= $title. $peg['nama'] ?></td>
            <td><?= $peg['gender'] ?></td>
            <td><?= $peg['agama'] ?></td>
            <td><?= $peg['divisi'] ?></td>
            <td><?= $peg['gaji'] ?></td>
            <td><?= $zakat ?></td>  
              
        </tr>
        <?php $no++; }; ?>
    </tbody>
    <?php
    //fungsi aggregrat array
    $gaji = array_column($ar_pegawai,'gaji');
    $total = array_sum($gaji);
    $max = max($gaji);
    $min = min($gaji);
    $jml = count($gaji);
    $rata2 = $total/$jml;

    //print_r($gaji); exit;
    $ar_keterangan = [
        'Total Gaji' => $total,
        'Gaji Tertinggi' => $max,
        'Gaji Terendah' => $min,
        'Rata-Rata Gaji' => $rata2,
        'Jumlah Pegawai' => $jml
    ];
    ?>
    <tfoot>
    <?php
        foreach ($ar_keterangan as $keterangan => $hasil) {
        ?>
            <tr bgcolor="beige">
            <th colspan="5"><?= $keterangan ?></th>
            <th colspan="2"><?= $hasil ?></th>
            </tr>
        <?php } ?>
    </tfoot>
</table>