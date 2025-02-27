<?php
header("Access-Control-Allow-Origin: *");
header("Content-Type: application/json");

// Koneksi ke database
$host = "localhost";
$user = "root";
$pass = "";
$dbname = "dblokal";

$conn = new mysqli($host, $user, $pass, $dbname);

// Periksa koneksi
if ($conn->connect_error) {
    die(json_encode(["error" => "Koneksi database gagal: " . $conn->connect_error]));
}

// Ambil ID dari parameter URL
$id = isset($_GET['id']) ? $conn->real_escape_string($_GET['id']) : null;

if (!$id) {
    echo json_encode(["error" => "ID tidak ditemukan"]);
    exit;
}

// Ambil data berdasarkan ID
$sql = "SELECT * FROM t_persons WHERE id = '$id'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo json_encode($result->fetch_assoc());
} else {
    echo json_encode(["error" => "Data tidak ditemukan"]);
}

// Tutup koneksi database
$conn->close();
?>
