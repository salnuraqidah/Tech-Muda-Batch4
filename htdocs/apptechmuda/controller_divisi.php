<?php
include_once 'koneksi.php';
include_once 'models/Divisi.php';

//1. get request form
$nama = $_POST['nama'];
//2. save to array data
$data = [$nama];
//3. excecution button
$tombol = $_POST['proses'];
//create object
$model = new Divisi();

switch ($tombol) {
    case 'simpan': $model->input($data); break;
    
    default:
        # code...break;
}
//4. landing page
header('location:index.php?hal=divisi');