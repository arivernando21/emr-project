<?php

include '../../config/database.php';

if (isset($_POST['submit'])) {

    $medical_record_number =
        $_POST['medical_record_number'];

    $nik = $_POST['nik'];

    $full_name = $_POST['full_name'];

    $gender = $_POST['gender'];

    $birth_date = $_POST['birth_date'];

    $phone = $_POST['phone'];

    $address = $_POST['address'];

    $query = mysqli_query(

        $conn,

        "INSERT INTO patients (

    medical_record_number,
    nik,
    full_name,
    gender,
    birth_date,
    phone,
    address

    )

    VALUES (

    '$medical_record_number',
    '$nik',
    '$full_name',
    '$gender',
    '$birth_date',
    '$phone',
    '$address'

    )"
    );

    if ($query) {

        echo "Pasien berhasil ditambahkan";

    } else {

        echo "Gagal menambahkan pasien";
    }
}
?>

<!DOCTYPE html>
<html>

<head>
    <title>Tambah Pasien</title>
</head>

<body>

    <h1>Tambah Pasien</h1>

    <form method="POST">

        <label>No Rekam Medis</label><br>

        <input type="text" name="medical_record_number">

        <br><br>

        <label>NIK</label><br>

        <input type="text" name="nik">

        <br><br>

        <label>Nama Lengkap</label><br>

        <input type="text" name="full_name">

        <br><br>

        <label>Jenis Kelamin</label><br>

        <select name="gender">

            <option value="male">
                Laki-laki
            </option>

            <option value="female">
                Perempuan
            </option>

        </select>

        <br><br>

        <label>Tanggal Lahir</label><br>

        <input type="date" name="birth_date">

        <br><br>

        <label>No HP</label><br>

        <input type="text" name="phone">

        <br><br>

        <label>Alamat</label><br>

        <textarea name="address"></textarea>

        <br><br>

        <button type="submit" name="submit">

            Tambah Pasien

        </button>

    </form>

</body>

</html>