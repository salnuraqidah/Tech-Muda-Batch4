function pembelian(){
    //1. tangkap id form
    var frm = window.document.getElementById("produk");
    //2. tangkap elemen2 form
    var namaProduk = frm.nama.value;
    var jenisProduk = frm.jenis.value;
    //casting/konversi tipe data
    var hargaProduk = parseInt(frm.harga.value);
    var jumlahProduk = parseInt(frm.jumlah.value);
    var totalProduk = hargaProduk * jumlahProduk;
    //penempatan hasil
    frm.tohar.value = totalProduk;
    /*alert(
        "Nama Produk : " +namaProduk +
        "<br/>Jenis Produk : "+jenisProduk +
        "<br/>Harga Produk : " +hargaProduk +
        "<br/>Jumlah Produk : " +jumlahProduk +
        "<br/>Total Produk : Rp. " +totalProduk  
    )*/
    //cetak populasi data
  /* document.write(
        "Nama Produk : " +namaProduk +
        "<br/>Jenis Produk : "+jenisProduk +
        "<br/>Harga Produk : " +hargaProduk +
        "<br/>Jumlah Produk : " +jumlahProduk +
        "<br/>Total Produk : Rp. " +totalProduk  
    )
  */
 
   
}