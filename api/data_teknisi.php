<?php 
require('../config/koneksi.php');
$query = mysqli_query($koneksi,"SELECT * FROM tbl_teknisi");
$respons = [];
while($data = mysqli_fetch_array($query)){
    $a = [
        'id_teknisi' => $data['id_teknisi'],
        'nama_teknisi' => $data['nama_teknisi'],
        'gender_teknisi' => $data['gender_teknisi'],
    ];
    array_push($respons, $a);
}
echo json_encode($respons);