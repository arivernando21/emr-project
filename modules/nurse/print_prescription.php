<?php

include '../../config/database.php';

$visit_id = $_GET['id'];

$visit_query = mysqli_query(

    $conn,

    "SELECT visits.*,
    patients.full_name

    FROM visits

    JOIN patients
    ON visits.patient_id = patients.id

    WHERE visits.id = '$visit_id'"
);

$visit = mysqli_fetch_assoc($visit_query);

$doctor_query = mysqli_query(

    $conn,

    "SELECT users.name as doctor_name

    FROM doctor_assessments

    LEFT JOIN doctors
    ON doctor_assessments.doctor_id = doctors.id

    LEFT JOIN users
    ON doctors.user_id = users.id

    WHERE visit_id = '$visit_id'

    LIMIT 1"
);

$doctor = mysqli_fetch_assoc($doctor_query);

$prescription_query = mysqli_query(

    $conn,

    "SELECT prescriptions.*,
    medicines.medicine_name

    FROM prescriptions

    JOIN medicines
    ON prescriptions.medicine_id = medicines.id

    WHERE prescriptions.visit_id = '$visit_id'"
);

?>

<!DOCTYPE html>
<html>

<head>

    <title>Cetak Resep</title>

    <style>
        body {

            font-family: Arial;
            padding: 40px;
        }

        .header {

            text-align: center;
            margin-bottom: 30px;
        }

        .header h1 {

            margin: 0;
        }

        table {

            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th,
        td {

            border: 1px solid black;
            padding: 10px;
            text-align: left;
        }

        .signature {

            margin-top: 80px;
            width: 300px;
            float: right;
            text-align: center;
        }
    </style>

</head>

<body>

    <div class="header">

        <h1>RESEP OBAT</h1>

        <h2>RUMAH SAKIT EMR</h2>

        <p>Jl. Rumah Sakit No. 123</p>

    </div>

    <p>

        <b>Nama Pasien:</b>
        <?= $visit['full_name']; ?>

    </p>

    <p>

        <b>Tanggal:</b>
        <?= date('d-m-Y'); ?>

    </p>

    <p>

        <b>Dokter:</b>
        <?= $doctor['doctor_name']; ?>

    </p>

    <table>

        <tr>

            <th>Obat</th>
            <th>Dosis</th>
            <th>Frekuensi</th>
            <th>Durasi</th>

        </tr>

        <?php while ($prescription = mysqli_fetch_assoc($prescription_query)) { ?>

            <tr>

                <td>

                    <?= $prescription['medicine_name']; ?>

                </td>

                <td>

                    <?= $prescription['dosage']; ?>

                </td>

                <td>

                    <?= $prescription['frequency']; ?>

                </td>

                <td>

                    <?= $prescription['duration']; ?>

                </td>

            </tr>

        <?php } ?>

    </table>

    <div class="signature">

        <p>

            Bandung,
            <?= date('d-m-Y'); ?>

        </p>

        <br><br><br>

        <p>

            <?= $doctor['doctor_name']; ?>

        </p>

    </div>

    <script>

        window.onload = function () {

            window.print();
        }

    </script>

</body>

</html>