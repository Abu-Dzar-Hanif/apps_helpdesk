<?php 
require('../config/koneksi.php');
$query = mysqli_query($koneksi,"SELECT * FROM tbl_pc");
$respons = [];
while($data = mysqli_fetch_array($query)){
    $a = [
        'id_pc' => $data['id_pc'],
        'nama_pc' => $data['nama_pc'],
        'tipe_pc' => $data['tipe_pc'],
    ];
    array_push($respons, $a);
}
echo json_encode($respons);