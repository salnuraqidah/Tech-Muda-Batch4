<?php
class Jadwal{
    //member1 var
    private $koneksi;
    //member2 constructor
    public function __construct(){
        global $dbh; //panggil var instance pdo
        $this->koneksi = $dbh;
    }
    //member3 fungsi2 crud
    public function dataJadwal(){
        $sql = "select peg.nama, d.nama as divisi, j.nama as jabatan,
        m.nama as materi, m.tempat, m.tgl_mulai, m.tgl_akhir,
        dik.keterangan
        from diklat dik
        inner join pegawai peg on peg.id = dik.pegawai_id
        inner join divisi d on d.id = peg.divisi_id
        inner join jabatan j on j.id = peg.jabatan_id
        inner join materi m on m.id = dik.materi_id order by m.tgl_mulai asc";
        //prepare statement PDO
        $ps = $this->koneksi->prepare($sql); //persiapan
        $ps->execute(); //eksekusi
        $rs = $ps->fetchAll(); // ambil seluruh baris data
        return $rs;
    }
};
?>