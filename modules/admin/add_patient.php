<?php

include '../../config/database.php';

if (isset($_POST['submit'])) {

    $nik = $_POST['nik'];

    $full_name = $_POST['full_name'];

    $gender = $_POST['gender'];

    $birth_date = $_POST['birth_date'];

    $phone = $_POST['phone'];

    $address = $_POST['address'];

    $count_query = mysqli_query(

        $conn,

        "SELECT COUNT(*) as total

FROM patients"
    );

    $count = mysqli_fetch_assoc($count_query);

    $medical_record_number =
        'RM' . str_pad(
            $count['total'] + 1,
            4,
            '0',
            STR_PAD_LEFT
        );

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

        header("Location: patients.php?success=1");
        exit;

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

        <br><br>

        <label>NIK</label><br>

        <input type="text" name="nik" required>

        <br><br>

        <label>Nama Lengkap</label><br>

        <input type="text" name="full_name" required>

        <br><br>

        <label>Jenis Kelamin</label><br>

        <select name="gender" required>

            <option value="male">
                Laki-laki
            </option>

            <option value="female">
                Perempuan
            </option>

        </select>

        <br><br>

        <label>Tanggal Lahir</label><br>

        <input type="date" name="birth_date" required>

        <br><br>

        <label>No HP</label><br>

        <input type="text" name="phone" required>

        <br><br>

        <label>Alamat</label><br>

        <textarea name="address" required></textarea>

        <br><br>

        <button type="submit" name="submit">

            Tambah Pasien

        </button>

    </form>

</body>

</html>