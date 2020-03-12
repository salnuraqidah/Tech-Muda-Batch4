<?php
function login($uname,$pass){
    if($uname == 'admin' || $uname == 'Admin' && $pass == 'mimin'){
        echo 'Hello '.ucwords($uname).' anda Administrator';
    }
    else if($uname == 'bedu' || $uname == 'Bedu' && $pass == 'okedeh'){
        echo 'Hello '.ucwords($uname).' anda Operator';
    } 
    else{
        echo 'Maaf '.ucwords($uname). ' anda gagal login'; 
    }
}
//tangkap request dari elemen form_login.php
$username = $_POST['uname'];
$password = $_POST['pass'];
//panggil fungsi
login($username,$password);
?>