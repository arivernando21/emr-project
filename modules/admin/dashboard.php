<?php
session_start();

if ($_SESSION['role'] != 'admin') {
    die("Akses ditolak");
}
?>

<h1>Dashboard Admin</h1>

<p>Selamat datang, <?php echo $_SESSION['name']; ?></p>