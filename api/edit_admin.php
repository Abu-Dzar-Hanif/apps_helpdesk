<?php
require('../config/koneksi.php');
$id = $_POST['id_admin'];
$nama = $_POST['nama'];
$username = $_POST['username'];
header('Content-Type: text/xml');
$query = mysqli_query($koneksi, "UPDATE tbl_admin SET nama = '$nama',  username = '$username' WHERE id_admin = '$id'");
if ($query) {
    $respons = [
        'success' => 1,
        'message' => "berhasil update"
    ];
    echo json_encode($respons);
} else {
    $respons = [
        'success' => 0,
        'message' => "gagal update"
    ];
    echo json_encode($respons);
}