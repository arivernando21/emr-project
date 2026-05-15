<?php

session_start();

include '../config/database.php';

$email = $_POST['email'];
$password = $_POST['password'];

$stmt = mysqli_prepare(
    $conn,
    "SELECT * FROM users WHERE email = ?"
);

mysqli_stmt_bind_param(
    $stmt,
    "s",
    $email
);

mysqli_stmt_execute($stmt);

$query = mysqli_stmt_get_result($stmt);

$user = mysqli_fetch_assoc($query);

if ($user) {

    if (password_verify($password, $user['password'])) {

        $_SESSION['user_id'] = $user['id'];
        $_SESSION['name'] = $user['name'];
        $_SESSION['role'] = $user['role'];

        if ($user['role'] == 'admin') {
            header("Location: ../modules/admin/dashboard.php");
        } elseif ($user['role'] == 'doctor') {
            header("Location: ../modules/doctor/dashboard.php");
        } elseif ($user['role'] == 'nurse') {
            header("Location: ../modules/nurse/dashboard.php");
        } elseif ($user['role'] == 'lab') {
            header("Location: ../modules/lab/dashboard.php");
        } elseif ($user['role'] == 'pharmacy') {
            header("Location: ../modules/pharmacy/dashboard.php");
        }

    } else {
        echo "Password salah";
    }

} else {
    echo "User tidak ditemukan";
}
?>