<?php

include '../../middleware/auth.php';
include '../../config/database.php';

$visit_id = $_GET['id'];

$visit_query = mysqli_query(

    $conn,

    "SELECT
    visits.*,
    patients.full_name,
    users.name AS doctor_name

    FROM visits

    JOIN patients
    ON visits.patient_id = patients.id

    LEFT JOIN doctor_assessments
    ON visits.id = doctor_assessments.visit_id

    LEFT JOIN users
    ON doctor_assessments.doctor_id = users.id

    WHERE visits.id = '$visit_id'"
);

$visit = mysqli_fetch_assoc($visit_query);

$prescription_query = mysqli_query(

    $conn,

    "SELECT
    prescriptions.*,
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

        h1,
        h2,
        h3 {

            text-align: center;
        }

        .section {

            margin-top: 30px;
        }

        hr {

            margin: 25px 0;
        }
    </style>

</head>

<body onload="window.print()">

    <h1>RUMAH SAKIT EMR</h1>

    <h3>Resep Obat Pasien</h3>

    <div class="section">

        <p>
            <strong>Nama Pasien:</strong>
            <?= $visit['full_name']; ?>
        </p>

        <p>
            <strong>Dokter:</strong>
            <?= $visit['doctor_name']; ?>
        </p>

        <p>
            <strong>Tanggal:</strong>
            <?= $visit['visit_date']; ?>
        </p>

    </div>

    <hr>

    <h2>Resep Obat</h2>

    <?php

    $no = 1;

    while ($prescription = mysqli_fetch_assoc($prescription_query)) {

        ?>

        <div class="section">

            <h3>

                <?= $no++; ?>.
                <?= $prescription['medicine_name']; ?>

            </h3>

            <p>
                Dosis:
                <?= $prescription['dosage']; ?>
            </p>

            <p>
                Frekuensi:
                <?= $prescription['frequency']; ?>
            </p>

            <p>
                Durasi:
                <?= $prescription['duration']; ?>
            </p>

            <p>
                Catatan:
                <?= $prescription['notes']; ?>
            </p>

        </div>

        <hr>

    <?php } ?>

</body>

</html>