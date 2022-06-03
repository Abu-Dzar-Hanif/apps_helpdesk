<?php 
require('../config/koneksi.php');
$query = mysqli_query($koneksi,"SELECT * FROM tbl_tiket");
$respons = [];
while($data = mysqli_fetch_array($query)){
    $a = [
        'id_tiket' => $data['id_tiket'],
        'id_karyawan' => $data['id_karyawan'],
        'nama_karyawan' => $data['nama_karyawan'],
        'tgl_buat' => $data['tgl_buat'],
        'teknisi' => $data['teknisi'],
        'status' => $data['status']
    ];
    array_push($respons, $a);
}
echo json_encode($respons);