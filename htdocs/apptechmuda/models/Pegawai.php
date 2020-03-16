<?php
class Pegawai{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->$koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataPegawai(){
        $sql = "select * from pegawai";
        //prepare statement PDO
        $ps = $this->$koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>