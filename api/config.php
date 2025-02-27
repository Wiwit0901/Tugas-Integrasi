<?php
$host = "localhost"; // Sesuaikan dengan host database (default: localhost)
$user = "root"; // Username database (default: root untuk XAMPP)
$password = ""; // Password database (kosong di XAMPP)
$database = "dblokal"; // Ganti dengan nama database yang digunakan

$conn = new mysqli($host, $user, $password, $database);

// Cek koneksi
if ($conn->connect_error) {
    die("Koneksi gagal: " . $conn->connect_error);
}
?>
