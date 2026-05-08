<?php

include '../../middleware/auth.php';
include '../../config/database.php';

$query = mysqli_query(

    $conn,

    "SELECT inpatients.*,
patients.full_name

FROM inpatients

JOIN visits
ON inpatients.visit_id = visits.id

JOIN patients
ON visits.patient_id = patients.id

WHERE inpatient_status = 'active'"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard Rawat Inap</title>
</head>

<body>

    <h1>Dashboard Rawat Inap</h1>

    <table border="1" cellpadding="10">

        <tr>

            <th>Pasien</th>
            <th>Kamar</th>
            <th>Tanggal Masuk</th>
            <th>Status</th>
            <th>Aksi</th>

        </tr>

        <?php while ($inpatient = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td><?= $inpatient['full_name']; ?></td>

                <td><?= $inpatient['room_number']; ?></td>

                <td><?= $inpatient['admission_date']; ?></td>

                <td><?= $inpatient['inpatient_status']; ?></td>

                <td>

                    <a href="discharge.php?id=<?= $inpatient['id']; ?>">

                        Pulangkan

                    </a>

                </td>

            </tr>

        <?php } ?>

    </table>

</body>

</html>