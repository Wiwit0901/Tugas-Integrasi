<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: POST, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

// Handle preflight CORS request
if ($_SERVER["REQUEST_METHOD"] === "OPTIONS") {
    http_response_code(200);
    exit();
}

// Konfigurasi database
$host = "localhost";  // Server database
$user = "root";       // Username MySQL (default XAMPP: root)
$pass = "";           // Password MySQL (default XAMPP: kosong)
$dbname = "dblokal";  // Ganti dengan nama database

// Koneksi ke database
$conn = new mysqli($host, $user, $pass, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die(json_encode(["error" => "Koneksi database gagal: " . $conn->connect_error]));
}

// Pastikan request adalah POST
if ($_SERVER["REQUEST_METHOD"] === "POST") {
    // Ambil data dari body request
    $data = json_decode(file_get_contents("php://input"), true);

    // Debugging: Simpan data yang diterima ke file
    file_put_contents("debug_log.txt", "Data Diterima:\n" . print_r($data, true));

    // Periksa apakah data tersedia
    if (!isset($data['nama'], $data['id'], $data['tempat_lahir'], $data['tanggal_lahir'], $data['jenis_kelamin'], $data['masuk'], $data['keluar'])) {
        echo json_encode(["error" => "Data tidak lengkap"]);
        exit;
    }

    // Escape data untuk keamanan
    $nama = $conn->real_escape_string($data['nama']);
    $id = $conn->real_escape_string($data['id']);
    $tempat_lahir = $conn->real_escape_string($data['tempat_lahir']);
    $tanggal_lahir = $conn->real_escape_string($data['tanggal_lahir']);
    $jenis_kelamin = $conn->real_escape_string($data['jenis_kelamin']);
    $masuk = $conn->real_escape_string($data['masuk']);
    $keluar = $conn->real_escape_string($data['keluar']);

    // Query SQL untuk menyimpan data
    $sql = "INSERT INTO t_persons (nama, id, tempat_lahir, tanggal_lahir, jenis_kelamin, masuk, keluar)
            VALUES ('$nama', '$id', '$tempat_lahir', '$tanggal_lahir', '$jenis_kelamin', '$masuk', '$keluar')";

    // Debugging: Simpan SQL ke file
    file_put_contents("debug_log.txt", "\nSQL Query:\n" . $sql, FILE_APPEND);

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Data berhasil ditambahkan"]);
    } else {
        echo json_encode(["error" => "Gagal menambahkan data: " . $conn->error]);
    }
} else {
    echo json_encode(["error" => "Metode request tidak valid"]);
}

// Tutup koneksi database
$conn->close();
?>
