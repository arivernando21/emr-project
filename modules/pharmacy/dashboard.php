<?php

include '../../config/database.php';

$query = mysqli_query(

    $conn,

    "SELECT prescriptions.*,
patients.full_name,
medicines.medicine_name

FROM prescriptions

JOIN visits
ON prescriptions.visit_id = visits.id

JOIN patients
ON visits.patient_id = patients.id

JOIN medicines
ON prescriptions.medicine_id = medicines.id"
);

?>

<!DOCTYPE html>
<html>

<head>
    <title>Dashboard Farmasi</title>
</head>

<body>

    <h1>Dashboard Farmasi</h1>

    <table border="1" cellpadding="10">

        <tr>

            <th>Pasien</th>
            <th>Obat</th>
            <th>Dosis</th>
            <th>Frekuensi</th>
            <th>Durasi</th>

        </tr>

        <?php while ($pharmacy = mysqli_fetch_assoc($query)) { ?>

            <tr>

                <td><?= $pharmacy['full_name']; ?></td>

                <td><?= $pharmacy['medicine_name']; ?></td>

                <td><?= $pharmacy['dosage']; ?></td>

                <td><?= $pharmacy['frequency']; ?></td>

                <td><?= $pharmacy['duration']; ?></td>

            </tr>

        <?php } ?>

    </table>

</body>

</html>