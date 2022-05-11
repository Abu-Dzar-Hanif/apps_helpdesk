<?php 
require('../config/koneksi.php');
$query = mysqli_query($koneksi,"SELECT * FROM tbl_admin");
$respons = [];
while($data = mysqli_fetch_array($query)){
    $a = [
        'id_admin' => $data['id_admin'],
        'nama' => $data['nama'],
        'username' => $data['username'],
        'password' => $data['password'],
        'level' => $data['level'],
    ];
    array_push($respons, $a);
}
echo json_encode($respons);