<?php
class Gaji{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataGaji(){
        $sql = "select peg.nip, peg.nama, d.nama as divisi, j.nama as jabatan,
        g.gapok as gaji_pokok, g.tunjab as tunjangan_jabatan
        from gaji g
        inner join pegawai peg on peg.id = g.pegawai_id
        inner join divisi d on d.id = peg.divisi_id
        inner join jabatan j on j.id = peg.jabatan_id
        order by divisi asc, gapok desc";
        //prepare statement PDO
        $ps = $this->koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>