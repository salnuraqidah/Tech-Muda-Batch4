<?php
class Divisi{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataDivisi(){
        $sql = "select peg.nip, peg.nama,
        d.nama as divisi
        from pegawai peg
        inner join divisi d on d.id = peg.divisi_id order by d.nama asc";
        //prepare statement PDO
        $ps = $this->koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>