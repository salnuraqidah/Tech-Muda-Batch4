<?php
include_once 'koneksi.php';
include_once 'models/Pegawai.php';

//1. get request element form
$nip = $_POST['nip'];
$nama = $_POST['nama'];
$jk = $_POST['gender'];
$tmp = $_POST['tmp'];
$tgl = $_POST['tgl'];
$jab = $_POST['jabatan'];
$div = $_POST['divisi'];
$alamat = $_POST['alamat'];
$email = $_POST['email'];
$foto = $_POST['foto'];

//2. save to array
$data = [
    $nip, // ? 1
    $nama, // ? 2
    $jk, // ? 3
    $tmp, // ? 4
    $tgl, // ? 5
    $jab, // ? 6
    $div, // ? 7
    $alamat, // ? 8
    $email, // ? 9
    $foto // ? 10
];

//3. excute button
$tombol = $_POST['submit'];

//4. create object
$model = new Pegawai();

if ($tombol == 'simpan') { //simpan adalah value dari button submit
    $model->simpan($data);
}
else if($tombol == 'ubah'){
    //code
}
else if($tombol == 'hapus'){
    //code
}
else{ //tombol batal tidak ada perubahan data baru
    header('Location:index.php?hal=pegawai');
}

//4. selesai proses redirect / landing page (ada perubahan data)
header('Location:index.php?hal=pegawai');