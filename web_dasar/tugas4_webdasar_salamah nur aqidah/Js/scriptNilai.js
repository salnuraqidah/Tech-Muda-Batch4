function formNilai(){
    var frm = window.document.getElementById("daftarNilai");
    var namaSiswa = frm.nama.value;
    var mapel = frm.materi.value;
    var nilaiSiswa = parseFloat(frm.nilai.value);

    if(nilaiSiswa >= 60 && nilaiSiswa <=100) var category = "Lulus";
    else if(nilaiSiswa < 60) var category = "Gagal";
    else var category = "";

    if(nilaiSiswa >= 85 && nilaiSiswa <= 100) var grade = "A";
    else if(nilaiSiswa >= 75 && nilaiSiswa < 85) var grade = "B";
    else if(nilaiSiswa >= 60 && nilaiSiswa < 75) var grade = "C";
    else if(nilaiSiswa >= 30 && nilaiSiswa < 60) var grade = "D";
    else if(nilaiSiswa < 30) var grade = "E";

    var predikat = grade

    switch(predikat){
        case "A" : var predict = "Istimewa"; break;
        case "B" : var predict = "Baik" ; break;
        case "C" : var predict = "Cukup" ; break;
        case "D" : var predict = "Kurang"; break;
        case "E" : var predict = "Buruk";break;
        default: break;
    }

    document.write(
        "Nama Siswa : " +namaSiswa +
        "<br/>Mata Pelajaran : "+mapel +
        "<br/>Nilai : "+nilaiSiswa +
        "<br/>Dinyatakan : "+category + 
        "<br/>Grade : "+grade +
        "<br/>Predikat : "+predict
    )
}
function hapus(){
    window.document.getElementById("daftarNilai").reset();
}