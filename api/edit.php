<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: PUT, POST, GET, DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type, Authorization");
header("Access-Control-Allow-Credentials: true");

if ($_SERVER['REQUEST_METHOD'] === 'OPTIONS') {
    http_response_code(200);
    exit;
}

require 'config.php';

// Ambil input JSON
$data = json_decode(file_get_contents("php://input"), true);
error_log(print_r($data, true));

if (!isset($data['id'], $data['nama'], $data['tempat_lahir'], $data['tanggal_lahir'], $data['jenis_kelamin'], $data['masuk'], $data['keluar'])) {
    echo json_encode(["error" => "Data tidak lengkap"]);
    http_response_code(400);
    exit;
}

$id = $conn->real_escape_string($data['id']);
$nama = $conn->real_escape_string($data['nama']); // Ubah name menjadi nama
$tempat_lahir = $conn->real_escape_string($data['tempat_lahir']);
$tanggal_lahir = $conn->real_escape_string($data['tanggal_lahir']);
$jenis_kelamin = $conn->real_escape_string($data['jenis_kelamin']);
$masuk = $conn->real_escape_string($data['masuk']);
$keluar = $conn->real_escape_string($data['keluar']);


// Query Update
$sql = "UPDATE t_persons SET 
            nama = '$nama',
            tempat_lahir = '$tempat_lahir',
            tanggal_lahir = '$tanggal_lahir',
            jenis_kelamin = '$jenis_kelamin',
            masuk = '$masuk',
            keluar = '$keluar'
        WHERE id = '$id'";

if ($conn->query($sql) === TRUE) {
    echo json_encode(["message" => "Data berhasil diperbarui"]);
} else {
    echo json_encode(["error" => "Gagal memperbarui data: " . $conn->error]);
}
?>
