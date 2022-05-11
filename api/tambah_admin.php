<?php
require('../config/koneksi.php');
$nama = $_POST['nama'];
$username = $_POST['username'];
$password = md5($_POST['password']);
$lvl = 1;
header('Content-Type: text/xml');
$qcode = mysqli_query($koneksi, "SELECT MAX(id_admin) AS max_code FROM tbl_admin");
$d = mysqli_fetch_array($qcode);
$a = $d['max_code'];
$urut = (int)substr($a, 3, 3);
$urut++;
$id = "ADM" . sprintf("%03s", $urut);
if($qcode){
    $query = mysqli_query($koneksi, "INSERT INTO tbl_admin(id_admin,nama,username,password,level) VALUES('$id','$nama','$username','$password','$lvl')");
    if ($query) {
        $respons = [
            'success' => 1,
            'message' => "berhasil simpan"
        ];
        echo json_encode($respons);
    } else {
        $respons = [
            'success' => 0,
            'message' => "gagal simpan"
        ];
        echo json_encode($respons);
    }
}