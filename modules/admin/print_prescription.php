<?php

include '../../middleware/admin_only.php';

include '../../config/database.php';

$visit_id = $_GET['id'];

$query = mysqli_query(

    $conn,

    "SELECT visits.*,

patients.full_name,

users.name as doctor_name

FROM visits

JOIN patients
ON visits.patient_id = patients.id

LEFT JOIN doctor_assessments
ON visits.id = doctor_assessments.visit_id

LEFT JOIN users
ON doctor_assessments.doctor_id = users.id

WHERE visits.id = '$visit_id'"
);

$data = mysqli_fetch_assoc($query);

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

            padding: 30px;
        }

        .header {

            text-align: center;

            margin-bottom: 40px;
        }

        .prescription-box {

            margin-top: 30px;
        }

        .medicine {

            margin-bottom: 20px;
        }

        @media print {

            button {

                display: none;
            }
        }
    </style>

</head>

<body>

    <button onclick="window.print()">

        Cetak Resep

    </button>

    <div class="header">

        <h1>RUMAH SAKIT EMR</h1>

        <p>Resep Obat Pasien</p>

    </div>

    <p>

        <b>Nama Pasien:</b>
        <?= $data['full_name']; ?>

    </p>

    <p>

        <b>Dokter:</b>
        <?= $data['doctor_name']; ?>

    </p>

    <p>

        <b>Tanggal:</b>
        <?= $data['visit_date']; ?>

    </p>

    <hr>

    <div class="prescription-box">

        <h2>Resep Obat</h2>

        <?php

        $no = 1;

        while ($medicine = mysqli_fetch_assoc($prescription_query)) {

            ?>

            <div class="medicine">

                <p>

                    <b><?= $no++; ?>.
                        <?= $medicine['medicine_name']; ?></b>

                </p>

                <p>

                    Dosis:
                    <?= $medicine['dosage']; ?>

                </p>

                <p>

                    Frekuensi:
                    <?= $medicine['frequency']; ?>

                </p>

                <p>

                    Durasi:
                    <?= $medicine['duration']; ?>

                </p>

                <p>

                    Catatan:
                    <?= $medicine['notes']; ?>

                </p>

            </div>

            <hr>

        <?php } ?>

    </div>

    <br><br>

    <p>

        Tanda Tangan Dokter

    </p>

    <br><br><br>

    <p>

        <?= $data['doctor_name']; ?>

    </p>

</body>

</html>