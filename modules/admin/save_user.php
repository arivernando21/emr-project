<?php

include '../../config/database.php';

$name = $_POST['name'];

$email = $_POST['email'];

$password =
    password_hash(
        $_POST['password'],
        PASSWORD_DEFAULT
    );

$role = $_POST['role'];

$specialization_id =
    $_POST['specialization_id']
    ?? null;

$query = mysqli_query(

    $conn,

    "INSERT INTO users (

    name,
    email,
    password,
    role

    )

    VALUES (

    '$name',
    '$email',
    '$password',
    '$role'

    )"
);

if ($query) {

    $user_id =
        mysqli_insert_id($conn);

    if ($role == 'doctor') {

        mysqli_query(

            $conn,

            "INSERT INTO doctors (

            user_id,
            specialization_id

            )

            VALUES (

            '$user_id',
            '$specialization_id'

            )"
        );

    } elseif ($role == 'nurse') {

        mysqli_query(

            $conn,

            "INSERT INTO nurses (

            user_id

            )

            VALUES (

            '$user_id'

            )"
        );
    }

    header("Location: users.php?success=1");

    exit;

} else {

    echo "Gagal menambahkan user";
}
?>