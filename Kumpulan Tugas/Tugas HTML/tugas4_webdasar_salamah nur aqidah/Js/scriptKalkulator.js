function pertambahan(){
    var frm = window.document.getElementById("calculator");
    var bil1 = parseFloat(frm.bilangan1.value);
    var bil2 = parseFloat(frm.bilangan2.value);
    var result = bil1 + bil2
    frm.hasil.value = result
}
function perkurangan(){
    var frm = window.document.getElementById("calculator");
    var bil1 = parseFloat(frm.bilangan1.value);
    var bil2 = parseFloat(frm.bilangan2.value);
    var result = bil1 - bil2
    frm.hasil.value = result
}
function perkalian(){
    var frm = window.document.getElementById("calculator");
    var bil1 = parseFloat(frm.bilangan1.value);
    var bil2 = parseFloat(frm.bilangan2.value);
    var result = bil1 * bil2
    frm.hasil.value = result
}
function pembagian(){
    var frm = window.document.getElementById("calculator");
    var bil1 = parseFloat(frm.bilangan1.value);
    var bil2 = parseFloat(frm.bilangan2.value);
    var result = bil1 / bil2
    frm.hasil.value = result
}
function hapus(){
    window.document.getElementById("calculator").reset();
}