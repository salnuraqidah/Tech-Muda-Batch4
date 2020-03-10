<link rel="stylesheet" type="text/css" href="css/style.css">
<body>
    <form method="POST" action="#">
    <table align="center">
        <thead>
            <tr>
                <th colspan="2">Form Belanja</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td>Pelanggan</td>
                <td>
                <input type="text" name="nama" value=""/>
                </td>
            </tr>
            <tr>
                <td>Produk</td>
                <td><select name="produk">
                <option value="">-- Pilih --</option>
                <option value="TV">TV</option>
                <option value="AC">AC</option>
                <option value="Kulkas">Kulkas</option>
                </td>
                </select>
            </tr>
            <tr>
                <td>Jumlah</td>
                <td>
                <input type="text" name="jumlah"/>
                </td>
        </tbody>
        <tfoot>
            <tr>
                <th colspan="2">
                <input type="submit" name="proses" value="Beli"/> 
                &nbsp;
                <input type="reset" name="batal" value="Batal"/> 
                </th>
            </tr>
        </tfoot>
    </table>
    </form>
</body>
<?php
$nama = $_POST['nama'];
$produk = $_POST['produk'];
$jumlah = $_POST['jumlah'];
$proses = $_POST['proses'];
$batal = $_POST['batal'];

//harga satuan
switch($produk) {
    case 'TV' : $hargaSatuan = 3000000; break;
    case 'AC' : $hargaSatuan = 4000000; break;
    case 'Kulkas' : $hargaSatuan = 5000000; break;
    default : $hargaSatuan = 0;
}
$hargaKotor = $hargaSatuan * $jumlah;

if ($produk == 'Kulkas' && $jumlah >= 3) $diskon = 0.3 * $hargaKotor;
else if ($produk == 'AC' && $jumlah >= 4) $diskon = 0.2 * $hargaKotor;
else $diskon = 0.1 * $hargaKotor;

$ppn = ($hargaKotor-$diskon) * 0.1;

$hargaBayar = ($hargaKotor - $diskon) + $ppn;

if(!empty($proses)){
?>
<table align="center" class="out">
    <thead>
        <tr>
        <th colspan="2">check-out</th>
        </tr>
    </thead>
    <tbody>
        <tr>
        <td>Nama Pelanggan</td>
        <td><?= $nama ?> </td>
        </tr>
        <tr>
        <td>Produk Pilihan</td>
        <td><?= $produk ?> </td>
        </tr>
        <tr>
        <td>Jumlah Beli</td>
        <td><?= $jumlah ?> unit</td>
        </tr>
        <tr>
        <td>Harga Satuan</td>
        <td>Rp.<?= $hargaSatuan ?> </td>
        </tr>
        <tr>
        <td>Harga Kotor</td>
        <td>Rp.<?= $hargaKotor ?> </td>
        </tr>
        <tr>
        <td>Diskon</td>
        <td>Rp.<?= $diskon ?> </td>
        </tr>
        <tr>
        <td>PPN</td>
        <td>Rp.<?= $ppn ?> </td>
        </tr>
        <tr>
        <td>Harga Bayar</td>
        <td><b>Rp.<?= $hargaBayar ?></b></td>
        </tr>
    </tbody>
</table>    
<?php } ?>
    
