<?php

session_start();

include '../config/database.php';

if (isset($_POST['login'])) {

    $email = $_POST['email'];

    $password = $_POST['password'];

    $query = mysqli_query(

        $conn,

        "SELECT * FROM users
    WHERE email = '$email'"
    );

    $user = mysqli_fetch_assoc($query);

    if ($user) {

        if (password_verify($password, $user['password'])) {

            $_SESSION['user_id'] = $user['id'];

            $_SESSION['name'] = $user['name'];

            $_SESSION['role'] = $user['role'];

            if ($user['role'] == 'admin') {

                header("Location: ../modules/admin/dashboard.php");

            } elseif ($user['role'] == 'nurse') {

                header("Location: ../modules/nurse/dashboard.php");

            } elseif ($user['role'] == 'doctor') {

                header("Location: ../modules/doctor/dashboard.php");

            } else {

                echo "Role tidak dikenali";
            }

        } else {

            echo "Password salah";
        }

    } else {

        echo "User tidak ditemukan";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Login EMR</title>
</head>

<body>

    <h1>Login EMR</h1>

    <form method="POST">

        <label>Email</label><br>

        <input type="email" name="email" required>

        <br><br>

        <label>Password</label><br>

        <input type="password" name="password" required>

        <br><br>

        <button type="submit" name="login">

            Login

        </button>

    </form>

</body>

</html>