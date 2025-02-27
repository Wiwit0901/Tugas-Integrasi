<?php
header("Access-Control-Allow-Origin: *");
header("Access-Control-Allow-Methods: DELETE, OPTIONS");
header("Access-Control-Allow-Headers: Content-Type");

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

// Pastikan request adalah DELETE
if ($_SERVER["REQUEST_METHOD"] === "DELETE") {
    // Ambil ID dari body request
    $data = json_decode(file_get_contents("php://input"), true);

    if (!isset($data['id'])) {
        echo json_encode(["error" => "ID tidak ditemukan"]);
        exit;
    }

    $id = $conn->real_escape_string($data['id']);

    // Query untuk menghapus data
    $sql = "DELETE FROM t_persons WHERE id = '$id'";

    if ($conn->query($sql) === TRUE) {
        echo json_encode(["message" => "Data berhasil dihapus"]);
    } else {
        echo json_encode(["error" => "Gagal menghapus data: " . $conn->error]);
    }
} else {
    echo json_encode(["error" => "Metode request tidak valid"]);
}

// Tutup koneksi database
$conn->close();
?>
