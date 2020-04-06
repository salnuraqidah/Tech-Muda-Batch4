<?php
class Pegawai{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataPegawai(){
        $sql = "select peg.nip, peg.nama, peg.gender, peg.alamat,
        d.nama as divisi,
        j.nama as jabatan
        from pegawai peg
        inner join jabatan j on j.id = peg.jabatan_id
        inner join divisi d on d.id = peg.divisi_id order by peg.nama asc";
        //prepare statement PDO
        $ps = $this->koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>