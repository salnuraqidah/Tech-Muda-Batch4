<?php
class Bank{
    //member1 variabel
    public $nama;
    protected $norek;
    private $saldo;
    const BANK = 'Bank Syariah Nurul Fikri';
    static $jml = 0;
    //member2 konstruktor
    public function __construct($nasabah,$no,$saldo){
        $this->nama = $nasabah;
        $this->norek = $no;
        $this->saldo = $saldo;
        self::$jml++;
    }
    //member3 method/fungsi
    public function setor($uang){
       // $this->saldo = $this->saldo + $uang;
        $this->saldo += $uang;
    }
    public function ambil($uang){
        // $this->saldo = $this->saldo + $uang;
         $this->saldo -= $uang;
     }
     public function cetak(){
        // $this->saldo = $this->saldo + $uang;
         echo '<b><u>'.self::BANK.'</u></b>';
         echo '<br/>No. Rekening : '.$this->norek;
         echo '<br/>Nasabah : '.$this->nama;
         echo '<br/>Saldo : Rp. '.number_format($this->saldo,2,',','.');
         echo '<hr/>';
     }
}