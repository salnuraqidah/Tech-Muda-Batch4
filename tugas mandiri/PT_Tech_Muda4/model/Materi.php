<?php
class Materi{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataMateri(){
        $sql = "select * from materi where id<6 order by tgl_mulai asc";
        //prepare statement PDO
        $ps = $this->koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>