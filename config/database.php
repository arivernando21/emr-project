<?php

$conn = mysqli_connect(
    "localhost",
    "root",
    "123",
    "emr_db",
    3307
);

if (!$conn) {
    die("Koneksi database gagal: " . mysqli_connect_error());
}
?>