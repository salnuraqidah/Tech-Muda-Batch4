<?php
class Gempa{
    public $lokasi;
    public $skala;
    public $hasil;

    public function __construct($lokasi,$skala){
        $this->lokasi = $lokasi;
        $this->skala = $skala;
        $this->hasil = $hasil;
    }
    public function dampak(){
        if ($this->skala < 2) $this->hasil = 'Tidak Terasa';
        else if ($this->skala >= 2 && $this->skala < 3) $this->hasil = 'Bangunan Retak-Retak';
        else if ($this->skala >= 3 && $this->skala < 6) $this->hasil = 'Bangunan Hancur';
        else if ($this->skala >=6) $this->hasil = 'Bangunan Hancur dan Berpotensi Tsunami';
        else ' ';
    }

 
    public function cetak(){
        echo '<br/>Lokasi : '.$this->lokasi;
        echo '<br/>Skala : '.$this->skala.' SR';
        echo '<br/>Dampak : '.$this->hasil;
        echo '<hr/>';
    }
}


