<?php

include '../../config/database.php';

$patient_id = $_GET['id'];

$patient_query = mysqli_query(

    $conn,

    "SELECT * FROM patients
WHERE id = '$patient_id'"
);

$patient = mysqli_fetch_assoc($patient_query);

$visit_query = mysqli_query(

    $conn,

    "SELECT visits.*,
doctor_assessments.diagnosis,
icd_codes.icd_name

FROM visits

LEFT JOIN doctor_assessments
ON visits.id = doctor_assessments.visit_id

LEFT JOIN icd_codes
ON doctor_assessments.icd_id = icd_codes.id

WHERE visits.patient_id = '$patient_id'

ORDER BY visits.visit_date DESC"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Riwayat Rekam Medis</title>
</head>

<body>

    <h1>Riwayat Rekam Medis Pasien</h1>

    <h3><?= $patient['full_name']; ?></h3>

    <p>
        No RM:
        <?= $patient['medical_record_number']; ?>
    </p>

    <p>
        NIK:
        <?= $patient['nik']; ?>
    </p>

    <hr>

    <table border="1" cellpadding="10">

        <tr>

            <th>Tanggal Visit</th>
            <th>Status</th>
            <th>Diagnosis</th>
            <th>ICD-10</th>

        </tr>

        <?php while ($visit = mysqli_fetch_assoc($visit_query)) { ?>

            <tr>

                <td>
                    <?= $visit['visit_date']; ?>
                </td>

                <td>
                    <?= $visit['visit_status']; ?>
                </td>

                <td>
                    <?= $visit['diagnosis']; ?>
                </td>

                <td>
                    <?= $visit['icd_name']; ?>
                </td>

            </tr>

        <?php } ?>

    </table>

</body>

</html>