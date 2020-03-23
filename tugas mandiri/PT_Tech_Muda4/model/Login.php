<?php
class Login{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataLogin(){
        $sql = "select peg.nama, u.username, u.password
        from user u
        inner join pegawai peg on peg.id = u.pegawai_id";
        //prepare statement PDO
        $ps = $this->koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>