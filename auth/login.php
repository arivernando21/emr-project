<?php

session_start();

include '../config/database.php';

$error = '';
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

                $error = "Role tidak dikenali";
            }

        } else {

            $error = "Password salah";
        }

    } else {

        $error = "User tidak ditemukan";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <link rel="stylesheet" href="../assets/css/style.css">
    <title>Login EMR</title>
</head>

<body>
    <div class="login-wrapper">

        <div class="login-card">

            <h1>

                🏥 SIRS / EMR

            </h1>

            <p>

                Sistem Informasi Rekam Medis

            </p>

            <hr>

            <?php if ($error != '') { ?>

                <p class="alert-error">

                    <?= $error; ?>

                </p>

            <?php } ?>

            <h2 style="text-align:center;">

                Login

            </h2>

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
        </div>

    </div>

</body>

</html>